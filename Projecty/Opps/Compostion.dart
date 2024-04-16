// Dog class representing a dog
class Dog {
  void bark() {
    print('Dog is barking');
  }
}

// Bird class representing a bird
class Bird {
  void fly() {
    print('Bird is flying');
  }
}

// FlyingCreature class representing a creature that can fly
class FlyingCreature {
  Dog dog;
  Bird bird;

  FlyingCreature(this.dog, this.bird);

  void bark() {
    dog.bark();
  }

  void fly() {
    bird.fly();
  }
}

void main() {
  Dog dog = Dog();
  Bird bird = Bird();

  FlyingCreature flyingDog = FlyingCreature(dog, bird);

  flyingDog.bark(); // Dog is barking
  flyingDog.fly(); // Bird is flying
}
