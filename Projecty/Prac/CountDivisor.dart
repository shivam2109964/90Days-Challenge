divisors(n) {
  List<int> divi = [];
  for (int i = 1; i <= n ~/ 2; i++) {
    if (n % i == 0) {
      divi.add(i);
    }
  }
  divi.add(n);
  print(divi);
  return divi.length;
}

void main() {
  var result = divisors(12);
  print(result);
}
