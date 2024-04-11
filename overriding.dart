void main() {
  Dog obj = Dog();
  obj.eat();

}

class Animal {
  void eat() {
    print("Animal is eating");
  }
}

class Dog extends Animal {
  void eat() {
    super.eat();
    print("Dog is eating");
  }
}
