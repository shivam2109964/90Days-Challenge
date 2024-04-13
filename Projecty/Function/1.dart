import 'dart:io';

void main() {
  print("Enter the n number: ");
  int n = int.parse(stdin.readLineSync()!);
  List<int> primeNo = [];
  primeNo.add(1);
  for (int i = 2; i <= n; i++) {
    if (isPrime(i)) {
      primeNo.add(i);
    }
  }
  print(primeNo);
}

bool isPrime(int n) {
  if (n <= 1) {
    return false;
  }
  for (int i = 2; i <= n / 2; i++) {
    if (i % 2 == 0) {
      return false;
    }
  }
  return true;
}
