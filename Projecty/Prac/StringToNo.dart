int stringToNumber(String str) {
  int value = int.parse(str);
  return value;
}

void main() {
  var result = stringToNumber("123");
  print(result);
}
