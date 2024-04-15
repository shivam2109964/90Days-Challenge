import 'dart:io';

void main() {
  print("Enter the number ");
  int number = int.parse(stdin.readLineSync()!);
  List<int> storeData = [];
  for (int i = 2; i <= number; i++) {
    while (number % i == 0) {
      storeData.add(i);
    number ~/= i;
    }
  }
  for(int i = 0; i <= storeData.length; i++){
    if(storeData[i] > storeData[i + 1]){
      print("The largest value is ${storeData[i]}");
    }
  }
  print(storeData);
}
