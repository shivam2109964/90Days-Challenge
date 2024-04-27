int oddCount(n) {
  if (n == 0) {
    return 0;
  }
  List<int> valueStore = [];

  for (int i = 1; i <= n; i++) {
    if (i % 2 != 0) {
      valueStore.add(i);
    }
  }
  
  return valueStore.length;
}

void main() {
  var result = oddCount(802098);
  print("The result is");
  print(result);
}
