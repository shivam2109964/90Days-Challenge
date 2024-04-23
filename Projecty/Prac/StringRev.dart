import 'dart:io';

String reverseString(String str) {
  List<String> splitt = str.split("");
  List<String> reversed = splitt.reversed.toList();
  String reversedList = reversed.join();
  return reversedList;
}

void main() {
  print("Enter the char you want to reverse");
  String str = stdin.readLineSync()!;

  var result = reverseString(str);
  print(result);
}
