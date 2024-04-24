int binaryArrayToNumber(List<int> arr) {
  String binaryString = arr.join();
  int decimalValue = int.parse(binaryString, radix: 2);
  return decimalValue;
}

//One more approach
int binaryArrayToNumber1 (List<int> arr) => int.parse(arr.join(), radix: 2);

void main() {
  var result = binaryArrayToNumber([1, 1, 1, 1]);
  print(result);

  var result1 = binaryArrayToNumber1([1,1,1,1]);
  print(result1);

}
