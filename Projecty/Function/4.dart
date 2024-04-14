import 'dart:io';

void main() {
  print("Enter the range: ");
  int range = int.parse(stdin.readLineSync()!);
  int sum = 0;

  List<int> fibonacciSeries = generateFibo(range);

  for (int i = 0; i < fibonacciSeries.length; i++) {
    sum += calculateEvenFibo(fibonacciSeries[i]);
  }

  print("The list of fibonacci series is $fibonacciSeries");
  print("The sum of all even number is $sum");
}

List<int> generateFibo(int range) {
  List<int> fibonacciSeries = [0, 1];
  int i = 2;
  int nextFibonacci = 0;
  while (nextFibonacci <= range) {
    nextFibonacci = fibonacciSeries[i - 2] + fibonacciSeries[i - 1];
    if (nextFibonacci <= range) {
      fibonacciSeries.add(nextFibonacci);
    }
    i++;
  }
  return fibonacciSeries;
}

int calculateEvenFibo(int number) {
  int sum = 0;
  if (number % 2 == 0) {
    sum += number;
  }
  return sum;
}
