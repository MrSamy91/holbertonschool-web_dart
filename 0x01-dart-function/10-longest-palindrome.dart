import '9-palindrome.dart';

String longestPalindrome(String s) {
  var result = "none";

  for (var i = 0; i < s.length; i++) {
    for (var j = i + 1; j <= s.length; j++) {
      var sub = s.substring(i, j);
      if (isPalindrome(sub) && (result == "none" || sub.length > result.length)) {
        result = sub;
      }
    }
  }

  return result;
}
