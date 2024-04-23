String countSheep(int numb) {
  
  String sheepCount = "";
  for (int i = 1; i <= numb; i++) {
    sheepCount += "$i sheep...";
  }
  return sheepCount;
}

//One more approach like 
String countSheep1(numb) => List.generate(numb, (int i) => "${i + 1} sheep...").join();

//

void main() {
  var resutlCheck = countSheep(0);
  print(resutlCheck);

  var resultCheck1 = countSheep1(4);
  print("---> $resultCheck1");
}
