void stairsIn20(List<List<int>> arr) {
  List<List<int>> result = [];
  result.addAll(arr);
  print(arr);
}

void main() {
  List<int> day1 = [2, 4, 3], day2 = [3, 5, 8], day3 = [2, 2, 2];

  stairsIn20([day1, day2, day3]); 
}
