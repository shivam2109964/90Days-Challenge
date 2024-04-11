void main() {
  var Dog1 = Dog("Labrado", "Red");
  print("");
  var Dog2 = Dog("Pug", "Black");
  print("___$Dog1");
  print("___$Dog2");
}

class Animal {
  String? color;
  //Default Constructor
  Animal(String color) {
    print("Animal Default Constructor!");
    print("The color of Animal is $color");
  }
}

class Dog extends Animal {
  String? breed;
  //Default Constructor
  Dog(String breed, String color) : super(color) {
    print("Dog Default Constructor!");
    print("The breed of Dog is $breed");
    print("The color of dog is $color");
  }
}
