import 'dart:io';

String readLineSync() {
  String? s = stdin.readLineSync();
  return s == null ? '' : s;
}

/**
 * Auto-generated code below aims at helping you parse
 * the standard input according to the problem statement.
 **/
void main() {
  List inputs;
  int N = int.parse(readLineSync());
  inputs = readLineSync().split(' ');
 

  // Write an answer using print()
  // To debug: stderr.writeln('Debug messages...');
  for (int i = 0; i < N; i++) {
    int sum = inputs.reduce((value, element) => value + element);
    double avg = sum / inputs.length;

    inputs.removeWhere((element) => element < avg);
  }

  print(inputs.join(' '));
}
