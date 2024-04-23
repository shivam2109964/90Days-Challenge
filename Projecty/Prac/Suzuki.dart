int stairsIn20(List<List<int>> arr) {
  List<int> result = [];
  arr.forEach((element) {
    result.addAll(element);
  });
  var sumResult = sumOfAll(result);
  return sumResult;
}

int sumOfAll(List<int> element) {
  int sum = 0;
  element.forEach((element) {
    sum += element;
  });

  return sum * 20;
}

//Using some simple value
int sumOfll(List<List<int>> arr) =>
    arr.expand((element) => element).reduce((v, e) => v + e) * 20;

void main() {
  List<int> arr = [2, 1, 4], arr1 = [5, 6, 7], arr2 = [8, 12, 13];

  var resultCheck = stairsIn20([arr, arr1, arr2]);
  print(resultCheck);

  List<List<int>> dataOfList = [
    [1, 2, 3],
    [4, 5, 6],
    [7, 8, 9]
  ];
  print("---> Before Expand $dataOfList");
  var finalSee =  dataOfList.expand((element) => element);
  print("---> After Expand $finalSee");
}
