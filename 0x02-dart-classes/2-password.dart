class Password {
  String password = "";

  Password();

  bool isValid() {
    var upper = password.contains(RegExp(r'[A-Z]'));
    var lower = password.contains(RegExp(r'[a-z]'));
    var digit = password.contains(RegExp(r'[0-9]'));
    var validLen = password.length >= 8 && password.length <= 16;

    return upper && lower && digit && validLen;
  }

  @override
  String toString() {
    return "Your Password is: $password";
  }
}
