int summation(int n) {
  int sum = 0;
  for (int i = 0; i <= n; i++) {
    sum += i;
  }
  return sum;
}

//by recursion
int summation1(int n) {
  if (n == 0) {
    return 0;
  } else {
    return n + summation(n - 1);
  }
}

void main() {
  var result = summation(2);
  print(result);
  
  var resultRec = summation1(2);
  print(resultRec);
}
