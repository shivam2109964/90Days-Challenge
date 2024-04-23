String getGrade(int a, int b, int c) {
  int sum = a + b + c;
  double avag = sum / 300 * 100;

  if (avag >= 90 && avag <= 100) {
    return 'A';
  } else if (avag >= 80 && avag < 90) {
    return 'B';
  } else if (avag >= 70 && avag < 80) {
    return 'C';
  } else if (avag >= 60 && avag < 70) {
    return 'D';
  } else {
    return 'F';
  }
}

void main() {
  // var result = getGrade(95, 90, 93);
  // print(result);

   int sum = 95 + 90 + 93;
   print(sum);
   double avag = (sum / 300) * 100;
   print(avag);
}
