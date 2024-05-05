abstract class Animal {
  void makeSound();
  void move();
}

class Dog extends Animal {
  String name;
  Dog(this.name);

  @override
  void makeSound() {
    print("$name Dog can bark");
  }

  @override
  void move() {
    print("$name Dog can run with 40km/h");
  }
}

class Bird extends Animal {
  String name;

  Bird(this.name);

  @override
  void makeSound() {
    print("$name Bird can make sound chi chi");
  }

  @override
  void move() {
    print("$name Bird can fly");
  }
}

void main() {
  final dog = Dog("Tony");
  dog.makeSound();
  dog.move();

  print("");
  
  final bird = Bird("Sona");
  bird.makeSound();
  bird.move();
}
