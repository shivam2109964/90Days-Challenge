void factorial(int n) {
  int sum = 1;
  for (int i = 1; i <= n; i++) {
    sum *= i;
  }
  print(sum);
}

int factorialRec(int n) {
  if (n < 1) {
    return 1;
  } else {
    return n * factorialRec(n - 1);
  }
}

void main() {
  factorial(5);
  int value = factorialRec(5);
  print(value);
}
