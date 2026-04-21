String longestUniqueSubstring(String str) {
  if (str.isEmpty) return "";

  Map<String, int> seen = {};
  int left = 0;
  int maxStart = 0;
  int maxLen = 0;

  for (int right = 0; right < str.length; right++) {
    var ch = str[right];

    if (seen.containsKey(ch) && seen[ch]! >= left) {
      left = seen[ch]! + 1;
    }

    seen[ch] = right;
    var currentLen = right - left + 1;

    if (currentLen > maxLen) {
      maxLen = currentLen;
      maxStart = left;
    }
  }

  return str.substring(maxStart, maxStart + maxLen);
}
