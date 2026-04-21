import 'dart:convert';
import '1-util.dart';

Future<String> getUserId() async {
  var raw = await fetchUserData();
  var parsed = jsonDecode(raw);
  return parsed["id"];
}
