betterThanAverage(List<int> classPoints, int yourPoints) {
  int avg = classPoints.reduce((value, element) => (value + element));
  int avgTOPer = avg ~/ classPoints.length;

  if (avgTOPer > yourPoints) {
    return false;
  } else {
    return true;
  }
}

//One more approach
bool betterThenAvg(List<int> classPoints, int yourPoints) {
  double avg = classPoints.fold(0, (previousValue, element) => element + previousValue) / classPoints.length;
  return yourPoints > avg;
}
//One more apporach
bool betterThanAverage1(List<int> classPoints, int yourPoints) => (classPoints.reduce((a, b) => a + b) / classPoints.length) < yourPoints;
void main() {
  var result = betterThenAvg([41, 75, 72, 56, 80, 82, 81, 33], 50);
  print(result);
}
