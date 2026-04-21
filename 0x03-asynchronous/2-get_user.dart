import '2-util.dart';

Future<void> getUser() async {
  try {
    var result = await fetchUser();
    print(result);
  } catch (err) {
    print("error caught: $err");
  }
}
