List<int> invert(List<int> arr) {
  List<int> finalList = [];

  arr.forEach((element) {
    if (element.isNegative) {
      finalList.add(element * -1);
    } else {
      finalList.add(element * -1);
    }
  });
  return finalList;
}

void main() {
  var result = invert([2,5,-4,33,-3,-1]);
  print(result);
}
