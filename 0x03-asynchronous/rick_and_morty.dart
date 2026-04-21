import 'dart:convert';
import 'package:http/http.dart' as http;

Future<void> printRmCharacters() async {
  try {
    var uri = Uri.parse("https://rickandmortyapi.com/api/character");
    var response = await http.get(uri);

    if (response.statusCode != 200) {
      throw "Request failed with status: ${response.statusCode}";
    }

    var body = json.decode(response.body);
    var chars = body["results"] as List;

    for (var c in chars) {
      print(c["name"]);
    }
  } catch (err) {
    print("error caught: $err");
  }
}
