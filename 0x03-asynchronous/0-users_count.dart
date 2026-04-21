import '0-util.dart';

Future<void> usersCount() async {
  var total = await fetchUsersCount();
  print(total);
}
