String longest(String a, String b) {
  List<String> totalList = [];
  List<String> forA = a.split("");
  List<String> forB = b.split("");

  totalList.addAll(forA);
  totalList.addAll(forB);

  totalList.sort();

  return totalList.toSet().join();
}

void main() {
  var result = longest("kshenvidfffchgiab", "sgiihjjhhkkg");
  print(result);
}




























// String longest(String a, String b) {
//   List<String> totalList = [];
//   List<String> addA = a.split("");
//   List<String> addB = b.split("");

//   totalList.addAll(addA);
//   totalList.addAll(addB);

//   totalList.sort();
 

//   return totalList.toSet().join();
// }

// void main() {
  
//   var resultCheck = longest("Hellooo", "Shivamooo");
//   print(resultCheck);
// }
