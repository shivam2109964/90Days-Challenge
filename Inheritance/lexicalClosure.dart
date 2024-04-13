void main() {
  String message = "Dart";

  Function myFun = () {
    message = "Dart is Awesome";
    print(message);
  };

  myFun();

  Function talk = () {
    String msg = "Hi";
    Function say = () {
      msg = "Hello World";
      print(msg);
    };
    return say;
  };

  var sow = talk();
  sow();
}
