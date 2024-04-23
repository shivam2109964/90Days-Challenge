int simpleMultiplication(int n) {
  if (n.isEven) {
    return n * 8;
  } else {
    return n * 9;
  }
}

void main() {
  var value = simpleMultiplication(2);
  print(value);
}
