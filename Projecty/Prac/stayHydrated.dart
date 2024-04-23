int litres(num time) {
  num totalliter = time * 0.5;
  int reusltIs = totalliter.floor();
  return reusltIs;
}

void main() {
  var resultCheck = litres(11.8);
  print(resultCheck);
}
