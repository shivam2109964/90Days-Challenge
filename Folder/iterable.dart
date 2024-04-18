void main() {
  Iterable<int> numbers = [1, 3, 4, 6, 5];
  print("Iterable List: ${numbers}");
  for (var number in numbers) {
    print(number);
  }

  var firstElement = numbers.first;
  var lastElement = numbers.last;
  print("");
  print("First Element ${firstElement} and Last Element ${lastElement}");

  List<int> listValue = [2, 3, 4, 5];
  var firstValue = listValue.first;
  var secondList = listValue.last;
  print("");
  print("List : ${listValue}");
  print("From the list First Value: ${firstValue} Second Value: ${secondList}");

  //Checking condition using any() and every()
  bool hasEvenNumber = numbers.any((number) => number % 2 == 0);
  bool allPositive = numbers.every((number) => number > 0);
  print("");
  print("has Even number: ${hasEvenNumber}");
  print("all Postivie: ${allPositive}");

  //Let's check it for List
  bool hasEvenValue = listValue.any((number) => number % 2 == 0);
  bool allpos = listValue.every((number) => number > 0);
  bool isEveryNoIsEven = listValue.every((number) => number % 2 == 0);
  print("");
  print("is any Value is even: ${hasEvenValue}");
  print("is all number is positive: ${allpos}");
  print("is Every No is Even: ${isEveryNoIsEven}");

  print("");
  print("Using where() methods");

  var whereMethodIterb = numbers.where((element) => element % 2 == 0);
  var whereMethodList = listValue.where((element) => element % 2 == 0);

  print(whereMethodIterb);
  print(whereMethodList);

  var takewhileCheck = listValue.takeWhile((value) => value > 2);
  print("");
  print(takewhileCheck);

  var multipywithTwo = listValue.map((e) => e * e);
  print("\nMap");
  print(multipywithTwo);
}
