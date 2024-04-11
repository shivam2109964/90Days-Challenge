void main() {
  var Dog1 = Dog("Labrado");
  print("");
  var Dog2 = Dog("Pug");
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
  Dog(String breed) : super() {
    print("Dog Default Constructor!");
    print("The breed of Dog is $breed");  
  }
}
