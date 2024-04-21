Function makeAdder(int addBy) {
  return (int value) => value + addBy;
}

void main() {
  var add2 = makeAdder(2);
  print(add2(5));
}
