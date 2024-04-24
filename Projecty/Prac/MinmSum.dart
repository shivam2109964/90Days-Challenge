int minSum(arr) {
  List<int> dynamicToList = List.from(arr);
  List<int> evenList = [];
  List<int> oddList = [];
  List<int> combineList = [];
  try {
    for (int i = 0; i < dynamicToList.length; i++) {
      if (dynamicToList[i].isEven) {
        evenList.add(dynamicToList[i]);
      } else {
        oddList.add(dynamicToList[i]);
      }
    }
  } catch (e) {
    print("Try 1 ---> $e");
  }

  try {
    for (int i = 0; i < evenList.length && i < oddList.length; i++) {
      combineList.add(evenList[i] * oddList[i]);
    }
  } catch (e) {
    print("Try 2 ---> $e");
  }

  return combineList.reduce((value, element) => value + element);
}

void main() {
  var result = minSum([6, 8, 4, 5, 2, 3]);
  print(result);
}
