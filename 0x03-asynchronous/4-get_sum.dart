import 'dart:convert';
import '4-util.dart';

Future<num> calculateTotal() async {
  try {
    var user = jsonDecode(await fetchUserData());
    var id = user["id"].toString();
    var orders = jsonDecode(await fetchUserOrders(id)) as List;

    var sum = 0.0;
    for (var item in orders) {
      sum += double.parse(await fetchProductPrice(item));
    }

    return sum;
  } catch (err) {
    return -1;
  }
}
