import 'dart:io';

void main() {
  print("Enter the range ");
  int range = int.parse(stdin.readLineSync()!);
  int sum = 0;

  List<int> fibonacciSeries = generateFibonacci(range);

  for (int i = 0; i < fibonacciSeries.length; i++) {
    sum += calcualteAlltheSum(fibonacciSeries[i]);
  }
  print(fibonacciSeries);
  print(sum);
}

List<int> generateFibonacci(int range) {
  List<int> fibonacciSeries = [0, 1];

  for (int i = 2; i < range; i++) {
    fibonacciSeries.add(fibonacciSeries[i - 2] + fibonacciSeries[i - 1]);
  }
  return fibonacciSeries;
}

int calcualteAlltheSum(int number) {
  int sum = 0;
  if (number % 2 == 0) {
    sum += number;
  }
  return sum;
}
