import 'dart:io';

void main() {
  print("Enter the number ");
  int number = int.parse(stdin.readLineSync()!);
  
  List<int> primeFactors = findPrimeFactors(number);
  print('The prime factors of $number are: $primeFactors');
}

List<int> findPrimeFactors(int number) {
  List<int> factors = [];

  // Divide by 2 until it's not even
  while (number % 2 == 0) {
    factors.add(2);
    number ~/= 2;
  }

  // Try dividing by odd numbers starting from 3
  for (int i = 3; i <= number / i; i += 2) {
    while (number % i == 0) {
      factors.add(i);
      number ~/= i;
    }
  }

  // If the remaining number is greater than 2, it's a prime factor
  if (number > 2) {
    factors.add(number);
  }

  return factors;
}
