int past(int h, int m, int s) {
  int hourTOsec = h * 60 * 60;
  int minTOsec = m * 60;
  int totalSec = hourTOsec + minTOsec + s;
  int totalMilli = totalSec * 1000;
  return totalMilli;
}

//One more approach to find this solution
int past1(int h, int m, int s) {
  return new Duration(hours: h, minutes: m, seconds: s).inMilliseconds;
}

//One more approach to find this solution
int past2(int h, int m, int s) {
  return (h * 3600 + m * 60 + s) * 1000;
}

//One more approach to find this solution
int past3(int h, int m, int s) => (h * 3600 + m * 60 + s) * 1000;

void main() {
  var result = past(0, 1, 1);
  print(result);
}
