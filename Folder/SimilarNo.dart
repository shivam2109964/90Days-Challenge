void main() {
  // Generate a list of prime numbers up to 100
  List<int> primes = [];
  for (int i = 2; i <= 100; i++) {
    if (isPrime(i)) {
      primes.add(i);
    }
  }

  // Find pairs of prime numbers with the same digits
  List<List<int>> pairs = [];
  for (int i = 0; i < primes.length; i++) {
    for (int j = i + 1; j < primes.length; j++) {
      if (hasSameDigits(primes[i], primes[j])) {
        pairs.add([primes[i], primes[j]]);
      }
    }
  }

  // Print out the pairs
  print("Pairs of prime numbers with the same digits:");
  for (int i = 0; i < pairs.length; i++) {
    print("${pairs[i][0]}, ${pairs[i][1]}");
  }
}

bool isPrime(int num) {
  if (num < 2) return false;
  for (int i = 2; i * i <= num; i++) {
    if (num % i == 0) return false;
  }
  return true;
}

bool hasSameDigits(int a, int b) {
  List<int> digitsA = digits(a);
  List<int> digitsB = digits(b);
  if (digitsA.length != digitsB.length) return false;
  digitsA.sort();
  digitsB.sort();
  for (int i = 0; i < digitsA.length; i++) {
    if (digitsA[i] != digitsB[i]) return false;
  }
  return true;
}

List<int> digits(int num) {
  List<int> digits = [];
  while (num > 0) {
    digits.add(num % 10);
    num ~/= 10;
  }
  return digits;
}