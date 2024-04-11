import 'dart:io';

void main() {
  print("Enter the value of x and y");
  int x = int.parse(stdin.readLineSync()!);
  int y = int.parse(stdin.readLineSync()!);

  Function value = (int x, int y) {
    print("The value of x is $x and y is $y");
    print("Their sum is ${x + y}");
  };

  value(x, y);
}
