void outer(String name, String id) {
  String inner() {
    var words = name.split(' ');
    var first = words[0];
    var initial = words[1][0];
    return "Hello Agent $initial.$first your id is $id";
  }

  print(inner());
}
