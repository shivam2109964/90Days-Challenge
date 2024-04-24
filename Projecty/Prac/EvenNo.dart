List<int> evenNumbers(List<int> arr, int n) {
  List<int> evenSpotted = [];
  for (int i = arr.length - 1; i >= 0 && evenSpotted.length < n; i--) {
    if (arr[i].isEven) {
      evenSpotted.add(arr[i]);
    }
  }
  return evenSpotted.reversed.toList();
}

//One more approach to solve it
List<int> evenNumber1(List<int> arr, int n) {
  var evenNumberList = arr.where((element) => element.isEven).toList();
  return evenNumberList.sublist(evenNumberList.length - n);
}

void main() {
  var result = evenNumbers([1, 2, 3, 4, 5, 6, 7, 8, 9], 3);
  print(result);

  var result1 = evenNumber1([1, 2, 3, 4, 5, 6, 7, 8, 9], 3);
  print(result1);
}
