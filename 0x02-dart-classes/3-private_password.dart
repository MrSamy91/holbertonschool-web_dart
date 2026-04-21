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
    var upper = _password.contains(RegExp(r'[A-Z]'));
    var lower = _password.contains(RegExp(r'[a-z]'));
    var digit = _password.contains(RegExp(r'[0-9]'));
    var validLen = _password.length >= 8 && _password.length <= 16;

    return upper && lower && digit && validLen;
  }

  @override
  String toString() {
    return "Your Password is: $_password";
  }
}
