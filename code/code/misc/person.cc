#include "person.h"
#include "database.h"
#include "account.h"
#include "pathfinder.h"

#include <unordered_map>
#include <queue>
#include <set>
#include <string>

class TPersonPimpl
{
  public:
    std::unordered_map<std::string, int> favoriteRooms;
};

TPerson::TPerson(Descriptor *thedesc) :
  TBeing(),
  base_age(0),
  tLogFile(NULL),
  title(NULL),
  timer(0)
{
  d = new TPersonPimpl();
  *lastHost = '\0';
  memset(toggles, 0, sizeof(toggles));
  memset(wizPowers, 0, sizeof(wizPowers));
  memset(wizPowersOriginal, 0, sizeof(wizPowersOriginal));

  desc = thedesc;

  // default case for TBeing is to add to mobCount, don't count pc's as mobs
  mobCount--;

  // this resets some values
  // rememebr that it could init some desc stuff, then have new char
  // come in causing bad settings.
  desc->session.setToZero();
  desc->prompt_d.xptnl = 0;

  AccountStats::player_num++;
  AccountStats::max_player_since_reboot = max(AccountStats::max_player_since_reboot, AccountStats::player_num);
}

TPerson::TPerson(const TPerson &a) :
  TBeing(a),
  base_age(a.base_age),
  tLogFile(a.tLogFile),
  timer(a.timer)
{
  d = new TPersonPimpl(*a.d);
  title = mud_str_dup(a.title);
  strcpy(lastHost, a.lastHost);
  memcpy(toggles, a.toggles, sizeof(toggles));
  memcpy(wizPowers, a.wizPowers, sizeof(wizPowers));
  memcpy(wizPowersOriginal, a.wizPowers, sizeof(wizPowersOriginal));

  AccountStats::player_num++;
  AccountStats::max_player_since_reboot = max(AccountStats::max_player_since_reboot, AccountStats::player_num);
}

TPerson & TPerson::operator=(const TPerson &a)
{
  if (this == &a) return *this;
  TBeing::operator=(a);
  d = new TPersonPimpl(*a.d);
  base_age = a.base_age;
  timer = a.timer;

  delete [] title;
  title = mud_str_dup(a.title);

  strcpy(lastHost, a.lastHost);
  memcpy(toggles, a.toggles, sizeof(toggles));
  memcpy(wizPowers, a.wizPowers, sizeof(wizPowers));
  memcpy(wizPowersOriginal, a.wizPowers, sizeof(wizPowersOriginal));
  return *this;
}

TPerson::~TPerson()
{
  Descriptor *t_desc;

  if (!desc) {
    for (t_desc = descriptor_list; t_desc; t_desc = t_desc->next) {
      if (t_desc->original && t_desc->original == this) {
        t_desc->character->remQuestBit(TOG_TRANSFORMED_LYCANTHROPE);
        t_desc->character->doReturn("", WEAR_NOWHERE, true);
      }
    }
  }

  setInvisLevel(MAX_IMMORT+1);
  fixClientPlayerLists(TRUE);

  // We use to let this be a handler for quit
  // however, if we accidentally delete a player (bad return code?)
  // this gets called and duplicates items
  // quit should now have similar code to what was here, so regard 
  // getting here as an error.
  dropItemsToRoom(SAFE_NO, DROP_IN_ROOM);

  AccountStats::player_num--;

  delete [] title;
  title = NULL;

  if (tLogFile) {
    logf("Logging out...");
    fclose(tLogFile);
    tLogFile = NULL;
  }
  delete d;
  d = nullptr;
}

std::pair<bool, int> TPerson::doPersonCommand(cmdTypeT cmd, const sstring & argument, TThing *, bool)
{
  switch (cmd) {
    case CMD_MAP:
      doMap(argument);
      break;
    case CMD_REMEMBER:
      doRemember(true, argument);
      break;
    case CMD_REMEMBERPLAYER:
      doRememberPlayer(true, argument);
      break;
    case CMD_RETRIEVE:
      doRetrieve(true, argument);
      break;
    case CMD_DISTRIBUTE:
      doDistribute(argument);
      break;
    default:
      return std::make_pair(false, 0);
  }
  return std::make_pair(true, 0);
}

namespace {
  void doRememberCommon(TPerson& me, bool shouldPrint, sstring const& arg, sstring const& cmd, sstring const& table, sstring const& foreignKey, int foreignValue)
  {
    auto sendTo = [&me, shouldPrint](const sstring& s) {
      if (shouldPrint)
        me.sendTo(s);
    };

    sstring key = arg.word(0);
    sstring value = arg.dropWord();

    if (key.empty()) {
      sendTo(format("Usage: %s key value\n") % cmd);
      sendTo(format("Example: %s tanelorn from spruce e se d 2w sw sw\n") % cmd);
      sendTo("Also check help remember\n");
      return;
    }

    TDatabase db(DB_SNEEZY);
    bool success = false;
    success = db.query(("delete from " + table + " where " + foreignKey + " = %i and name = '%s'").c_str(),
        foreignValue, key.c_str());

    if (success && !value.empty()) {
      success = db.query(("insert into " + table + " (" + foreignKey + ", name, value) values (%i, '%s', '%s')").c_str(),
          foreignValue, key.c_str(), value.c_str());
    }

    if (success)
      sendTo("Saved!\n");
    else
      sendTo("DB error, report a bug :(\n");
  }
}

void TPerson::doRemember(bool print, sstring const& arg)
{
  doRememberCommon(*this, print, arg, "remember", "accountnotes", "account_id", getAccountID());
}

void TPerson::doRememberPlayer(bool print, sstring const& arg)
{
  doRememberCommon(*this, print, arg, "rememberplayer", "playernotes", "player_id", getPlayerID());
}

void TPerson::doRetrieve(bool shouldPrint, sstring const& arg)
{
  auto sendTo = [this, shouldPrint](const sstring& s) {
    if (shouldPrint)
      this->sendTo(s);
  };

  sstring key = arg.word(0);

  TDatabase db(DB_SNEEZY);
  bool success = db.query("select name, value from playernotes where player_id = %i and ('%s' = '' or name = '%s') "
      "union "
      "select name, value from accountnotes where account_id = %i and ('%s' = '' or name = '%s')",
      getPlayerID(), key.c_str(), key.c_str(), getAccountID(), key.c_str(), key.c_str());

  if (!success) {
    sendTo("DB error, report a bug :(\n");
    return;
  }

  if (!db.fetchRow()) {
    sendTo(format("%s: not found") % arg);
    return;
  }

  assert(desc);
  do {
    auto str = sstring("retrieve." + key + " " + db["value"]);
    desc->sendGmcp(str, false);

    sendTo(format("%s: %s\n") % db["name"] % db["value"]);
  } while (arg.empty() && db.fetchRow()); // only print other matches if listing everything
}

void TPerson::loadMapData()
{
  TDatabase db(DB_SNEEZY);
  db.query("select name, room from savedroomsacct where account_id = %i", getAccountID());
  while (db.fetchRow())
    d->favoriteRooms[db["name"]] = convertTo<int>(db["room"]);
}

void TPerson::doMapList(sstring const& arg) const
{
  sstring filter = arg.lower();

  bool found = false;
  for (const auto& pair : d->favoriteRooms) {
    if (filter.empty() || sstring(pair.first).lower().find(filter) != sstring::npos) {
      sendTo(format("%s -> %i\n") % pair.first % pair.second);
      found = true;
    }
  }

  if (!found) {
    sendTo(sstring("No rooms in list")
        + (filter.empty() ? "" : " match the filter")
        + ". Add some with `map add myCoolRoom`\n");
  }
}

void TPerson::doMapAdd(sstring const& arg)
{
  if (arg.empty()) {
    sendTo("Usage: map add myCoolRoom\n");
    return;
  }

  d->favoriteRooms[arg] = this->inRoom();
  TTransaction db(DB_SNEEZY);
  db.query("delete from savedroomsacct where account_id = %i and name = '%s'",
      getAccountID(), arg.c_str());
  db.query("insert into savedroomsacct (account_id, name, room) values (%i, '%s', %i)",
      getAccountID(), arg.c_str(), this->inRoom());
  sendTo(format("Saved %s -> %i") % arg % this->inRoom());
}

void TPerson::doMapRm(sstring const& arg)
{
  if (arg.empty()) {
    sendTo("Usage: map rm myCoolRoom");
    return;
  }

  if (d->favoriteRooms.erase(arg) == 0)
    sendTo("No such room in map.\n");
  else
    sendTo("Found and removed.\n");

  TDatabase db(DB_SNEEZY);
  db.query("delete from savedroomsacct where account_id = %i and name = '%s'",
      getAccountID(), arg.c_str());
}

void TPerson::doMapGo(sstring const& arg)
{
  auto it = d->favoriteRooms.find(arg);
  if (it == d->favoriteRooms.end()) {
    sendTo(format("You can't seem to locate '%s'.\n\r") % arg);
    return;
  }
  auto dst = it->second;

  auto path = pathfind(*this, findRoom(dst), "Uhm, not for nothing, but I think you are already there...\n\r");
  if (!path)
    return;

  d->favoriteRooms["back"] = this->inRoom();

  auto run = runify(*path);
  addCommandToQue(run);
}

void TPerson::doMap(sstring const& arg)
{
  sstring cmd = arg.word(0);
  sstring rest = arg.dropWord();

  if (is_abbrev(cmd, "list") || cmd == "ls")
    doMapList(rest);
  else if (is_abbrev(cmd, "add") || is_abbrev(cmd, "new"))
    doMapAdd(rest);
  else if (is_abbrev(cmd, "remove") || cmd == "rm")
    doMapRm(rest);
  else if (is_abbrev(cmd, "go"))
    doMapGo(rest);
  else
    drawMap(cmd.empty() ? 2 : convertTo<int>(cmd)); // TODO: read preferred map size from account prefs
}

namespace {
  bool canPathThroughDoor(roomDirData* ex)
  {
    if (!ex)
      return false;

    if (IS_SET(ex->condition, EXIT_CAVED_IN))
      return false;

    if (IS_SET(ex->condition, EXIT_CLOSED) && (
          IS_SET(ex->condition, EXIT_SECRET) || IS_SET(ex->condition, EXIT_LOCKED)))
      return false;

    return true;
  }

  // colors in TTerrainInfo
  // TODO: bolds
  const char* terrainToColor[16] = {
    "<K>", // black 0
    "<r>", // maroon 1
    "<G>", // green 2
    "<d><g>", // olive 3
    "<B>", // navy 4
    "<P>", // purple 5
    "<c>", // teal 6
    "<d><k>", // silver 7
    "<k>", // gray 8
    "<R>", // red 9
    "<G>", // lime 10
    "<y>", // yellow 11
    "<b>", // blue 12
    "<p>", // magenta 13
    "<C>", // cyan 14
    "<w>", // white 15
  };

  std::vector<std::string> colorize(std::vector<std::string> const& in)
  {
    std::vector<std::string> out;
    out.reserve(in.size());

    for (const auto& row : in) {
      std::string outRow;
      outRow.reserve(in.size() * 3);
      for (char cell : row) {
        if (cell < 0) {
          // cf. TRoom::colorRoom, TerrainInfo
          outRow.append(terrainToColor[TerrainInfo[-cell]->color]);
          outRow.push_back('#');
          outRow.append("<z>");
        } else {
          outRow.push_back(' ');
        }
      }
      out.push_back(outRow);
    }

    return out;
  }
}

// TODO: replace queue and set with fixed size array with advancing pointer
// (fixed because the size of map is known in advance)
void TPerson::drawMap(const int radius) const
{
  // 2n+1 rows/columns to accommodate radius of n
  // *2 to fit doors, +2 because we also want doors leading out
  size_t edgeLen = (radius * 2 + 1) * 2 + 2;
  size_t halfEdge = edgeLen / 2;

  std::vector<std::string> grid; // There's probably a clever way to initialize it in one line, maybe
  for (int i = edgeLen; i --> 0;)
    grid.emplace_back(edgeLen, ' ');

  auto visit = [this, halfEdge, radius, &grid](TRoom const& r)
  {
    if (real_roomp(this->in_room)->getZCoord() != r.getZCoord())
      return;

    int myX = real_roomp(this->in_room)->getXCoord();
    int myY = real_roomp(this->in_room)->getYCoord();
    // coords are now relative to the map's center point (ie. player's location)
    int dx = r.getXCoord() - myX;
    int dy = r.getYCoord() - myY;

    if (max(abs(dx), abs(dy)) > radius)
      return;

    sendTo(boost::format("Visiting %d %s @ (%d,%d) rel (%d,%d)\n\r")
        % r.number % r.name % r.getXCoord() % r.getYCoord() % dx % dy);

    // Let's agree that negative values are sector types, positive values are exits.
    char symbol = -r.getSectorType();

    if (dx == 0 && dy == 0)
      symbol = '@';

    // 2 for the doors
    grid.at(-(2 * dy) + halfEdge).at(2 * dx + halfEdge) = symbol;
  };

  struct Candidate
  {
    int vnum;
    int distance;
  };

  std::queue<Candidate> candidates;
  candidates.push({in_room, 0});

  std::set<int> visited;

  while (!candidates.empty()) {
    Candidate c = candidates.front();
    candidates.pop();

    if (c.distance > 5 * radius)
      continue;

    if (visited.count(c.vnum) == 1)
      continue;
    visited.insert(c.vnum);

    TRoom* r = real_roomp(c.vnum);
    if (!r)
    {
      sendTo("Error: null roomp\n\r");
      continue;
    }

    visit(*r);

    for (auto exitDir = MIN_DIR; exitDir < MAX_DIR; exitDir++) {
      roomDirData* ex = r->exitDir(exitDir);
      if (canPathThroughDoor(ex)) {
        // hm, doesn't happen anymore
        if (!real_roomp(ex->to_room))
          sendTo(boost::format("Error: room %d has weird exit towards %d\n\r") % c.vnum % exitDir);
        candidates.push({ex->to_room, c.distance + 1});
      }
    }
  }

  for (const auto& row : colorize(grid))
    sendTo(row + "\n\r");
}
