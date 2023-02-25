typedef NumList = List<num>;
typedef IntList = List<int>;
typedef StringList = List<String>;
typedef StringIntMap = Map<String, int>;

NumList getNumbersFromString(String s) {
  NumList nlist = [];
  StringList sList = s.split(' ');
  for (String el in sList) {
    var n = num.tryParse(el);
    if (n != null) nlist.add(n);
  }
  return nlist;
}

StringIntMap getCountOfWords(StringList sList) {
  StringIntMap map = {};
  for (String el in sList) {
    if (map.containsKey(el))
      map[el] = map[el]! + 1;
    else
      map[el] = 1;
  }
  return map;
}

IntList getIntsInString(String s) {
  StringList numbers = [
    'zero',
    'one',
    'two',
    'three',
    'four',
    'five',
    'six',
    'seven',
    'eight',
    'nine'
  ];
  IntList intList = [];
  StringList sList = s.split(', ');
  for (String el in sList) {
    for (var i = 0; i < 10; i++) {
      if (numbers[i] == el && !intList.contains(i)) {
        intList.add(i);
      }
    }
  }
  return intList;
}
