String countSheep(int numb) {
  if(numb == 0){
    return "";
  }
  String sheepCount = "";
  for (int i = 1; i <= numb; i++) {
    sheepCount += "$i sheep...";
  }
  return sheepCount;
}

void main() {
  var resutlCheck = countSheep(0);
  print(resutlCheck);
}
