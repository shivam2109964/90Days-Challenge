int positiveSum(List<int> arr) {
  int sum = 0;
  arr.forEach((element) {
    if (element > 0) {
      sum += element;
    }
  });
  return sum;
}

void main() {
  var result = positiveSum([1, -2, 4]);
  print(result);
}
