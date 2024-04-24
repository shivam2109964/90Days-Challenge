List<int> maps(List<int> arr) {
  List<int> double = [];

  for (int i = 0; i < arr.length; i++) {
    double.add(arr[i] * 2);
  }
  return double;
}

//One more approach
List<int> maps1(List<int> arr) => arr.map((e) => e * 2).toList();

//One mroe approach
List<int> maps2(List<int> arr) {
  List<int> s = [];
  arr.forEach((element) {
    s.add(element * 2);
  });
  return s;
}

void main() {
  var result = maps([1, 2, 3]);
  print(result);
  var result1 = maps([1, 2, 3]);
  print(result1);
  var result2 = maps2([1,2,3]);
  print(result2);
}
