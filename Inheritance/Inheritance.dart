void main() {
  var Dog1 = Dog();
  print("");
  var Dog2 = Dog();
}

class Animal {
  String? color;
  //Default Constructor
  Animal() {
    print("Animal Default Constructor!");
  }
}

class Dog extends Animal {
  String? breed;
  //Default Constructor
  Dog() : super() {
    print("Dog Default Constructor!");
  }
}
