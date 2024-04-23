String dnaToRna(String str){
  List<String> splitt = str.split("");
  splitt.where((element) => element == 'T').forEach((element) { 
    int index = splitt.indexOf(element);
    splitt[index] = "U";
  });
  String result = splitt.join();
  return result;
}

void main() {
  var checkResult = dnaToRna("GCAT");
  print(checkResult);
}
