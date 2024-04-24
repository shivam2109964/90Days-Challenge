String oddOrEven(List<int> array) {
  int value = array.reduce((value, element) => value + element);
  if (value.isEven) {
    return "even";
  } else {
    return "odd";
  }
}

void main() {
  var result = oddOrEven([0,-1,-5]);
  print(result);
}
