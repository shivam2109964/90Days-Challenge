abstract class Animal {
  void makeSound();
}

class Cat extends Animal {
  @override
  void makeSound() {
    print("Meoww");
  }
}

class Dog extends Animal {
  @override
  void makeSound() {
    print("Woof");
  }
}

void main() {
  List bag = [Cat(), Dog()];
  for (Animal a in bag) {
    a.makeSound();
  }
}
