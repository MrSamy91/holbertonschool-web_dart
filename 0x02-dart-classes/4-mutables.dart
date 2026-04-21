class Password {
  String _password = "";

  Password({required String password}) {
    _password = password;
  }

  String get password => _password;

  set password(String val) {
    _password = val;
  }

  bool isValid() {
    var hasUpper = _password.contains(RegExp(r'[A-Z]'));
    var hasLower = _password.contains(RegExp(r'[a-z]'));
    var hasDigit = _password.contains(RegExp(r'[0-9]'));
    var goodLen = _password.length >= 8 && _password.length <= 16;

    return hasUpper && hasLower && hasDigit && goodLen;
  }

  @override
  String toString() {
    return "Your Password is: $_password";
  }
}
