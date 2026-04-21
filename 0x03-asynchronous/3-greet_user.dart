import 'dart:convert';
import '3-util.dart';

Future<String> greetUser() async {
  try {
    var raw = await fetchUserData();
    var parsed = jsonDecode(raw);
    return "Hello ${parsed["username"]}";
  } catch (err) {
    return "error caught: $err";
  }
}

Future<String> loginUser() async {
  try {
    var exists = await checkCredentials();
    print("There is a user: $exists");

    if (exists) {
      return await greetUser();
    } else {
      return "Wrong credentials";
    }
  } catch (err) {
    return "error caught: $err";
  }
}
