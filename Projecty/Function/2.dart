import 'dart:io';

void main() {
  print("Enter the value want to check: ");
  int n1 = int.parse(stdin.readLineSync()!);

  print("Enter the second value: ");
  int n2 = int.parse(stdin.readLineSync()!);

  print("Enter the range: ");
  int range = int.parse(stdin.readLineSync()!);

  List<int> store = [];
  int sum = 0;

  for (int i = 1; i < range; i++) {
    if (i % n1 == 0 || i % n2 == 0) {
      store.add(i);
      sum += i;
    }
  }
  print("$store");
  print("$sum");
}
