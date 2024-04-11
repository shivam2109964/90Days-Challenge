void main() {
  var myFunction = (a, b) => print(a + b);
  someOtherFunction("Hello World", myFunction);
  var myFun = taskToPerform();
  print(myFun(10));
}

void someOtherFunction(String message, Function myFunction) {
  print(message);
  myFunction(2, 4);
}

Function taskToPerform() {
  Function multiplyByFour = (int number) => number * 4;
  return multiplyByFour;
}
