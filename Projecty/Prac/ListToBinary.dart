int ListToBinary(List<int> arr){
  String binaryString = arr.join();
  int decimalNo = int.parse(binaryString, radix: 2);
  return decimalNo;
}

void main(){
  var result = ListToBinary([1,1,1,1]);
  print(result);
}