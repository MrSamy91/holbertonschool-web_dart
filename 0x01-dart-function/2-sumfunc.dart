int add(int a, int b) {
  return a + b;
}

int sub(int a, int b) {
  return a - b;
}

String showFunc(int a, int b) {
  var total = add(a, b);
  var difference = sub(a, b);
  return "Add $a + $b = $total\nSub $a - $b = $difference";
}
