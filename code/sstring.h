#ifndef __SSTRING_H
#define __SSTRING_H

class fmt;


class sstring : public string {
public:
  // constructors
  sstring() : string(){}
  sstring(const char *str) : string(str?str:"") {}
  sstring(const string &str) : string(str) {}

  const sstring & operator=(fmt &a);

  // these functions return modified copies of the string
  const sstring toCRLF() const;
  const sstring lower() const;
  const sstring upper() const;
  const sstring cap() const;
  const sstring uncap() const;
  const sstring word(int) const;
  const sstring comify() const;
  const sstring replaceString(sstring, sstring) const;
  const sstring trim() const;
  const sstring capitalizeSentences() const;
  const sstring matchCase(const sstring match) const;

  // call this function with NULL data to get alloc size, then agian with alloc'd array
  int split(const char delimit, sstring *data) const;
  size_t findBetween(const sstring start, const sstring toFind, const sstring end) const;
  int countSubstr(const sstring sub) const;

  // other functions
  const bool hasDigit() const;
  const bool isNumber() const;
  const bool isWord() const;
  const bool startsVowel() const;

  // string mungers
  void ascify();

  // inlines
  void inlineReplaceString(const string f, const string r) {
    string::size_type start = 0;
    while(string::npos != (start = find(f, start)))
    {
      replace(start, f.length(), r.c_str(), r.length());
      start += r.length();
    }
  }

  // inline: trims to crlf those lines which consist only of whitespace 
  void inlineTrimWhiteLines()
  {
    size_t len = length();
    size_t start = 0;

    while(1)
    {
      size_t spaces = 0;
      start = find("\n\r", start);
      if (start == sstring::npos)
        return;
      start += 2;

      while(start+spaces < len && (*this)[start+spaces] == ' ')
        spaces++;
      if (start >= len)
        return;

      if (spaces && start+spaces+1 < len && (*this)[start+spaces] == '\n' && (*this)[start+spaces+1] == '\r')
        erase(start, spaces);
      else
        start += spaces;
    }
  }

  // removes all text inbetween start and end (inclusive or exclusive)
  void inlineRemoveBetween(const sstring start, const sstring end, bool inclusive, bool stopNewline = false)
  {
    size_t iStart = 0;

    while(1)
    {
      iStart = find(start.c_str(), iStart);
      if (iStart == sstring::npos)
        return;
      if (!inclusive)
        iStart += start.length();
      size_t iEnd = find(end.c_str(), iStart);
      if (iEnd == sstring::npos)
        return;
      size_t newLine = stopNewline ? find("\n", iStart) : sstring::npos;
      if (newLine != sstring::npos && newLine < iEnd)
      {
        iStart = newLine;
        continue;
      }
      if (inclusive)
        iEnd += end.length();
      if (iEnd > iStart)
        replace(iStart, iEnd-iStart, "", 0);
    }
  }

  // takes one set of markup tags if they exist in order, and replaces then with new tags in the same order
  void inlineReplaceMarkup(const sstring markupStart, const sstring markupEnd, const sstring replaceStart, const sstring replaceEnd)
  {
    size_t startMarkup = find(markupStart.c_str());
    while(startMarkup != sstring::npos)
    {
      size_t startLen = markupStart.length();
      size_t endLen = markupEnd.length();
      size_t repSLen = replaceStart.length();
      size_t repELen = replaceEnd.length();
      size_t endMarkup = find(markupEnd.c_str(), startMarkup+startLen);

      if (sstring::npos == endMarkup)
        break;

      replace(startMarkup, startLen, replaceStart.c_str(), repSLen);
      endMarkup -= (startLen - repSLen);
      replace(endMarkup, endLen, replaceEnd.c_str(), repELen);
      startMarkup =  find(markupStart.c_str(), endMarkup + repELen);
    }
  }

  // simple function; probably should just macro but what the hell
  void inlinePad(const char pad, int num)
  {
    resize(length()+num, pad);
  }
};

extern bool isvowel(const char c);


// used for easily defining buffer sizes
#ifndef cElements
#define cElements(x) (sizeof(x)/sizeof(x[0]))
#endif


#endif
