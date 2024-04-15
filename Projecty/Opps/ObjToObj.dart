import 'dart:io';

class Car {
  String brand;
  String model;

  Car(this.brand, this.model);

  void drive() {
    print("Driving $brand $model");
  }
}

class Person {
  String name;

  Person(this.name);

  void driveCar(Car car) {
    print("$name is driving the car");
    car.drive();
  }
}

void main() {
  print("Enter your name");
  String name = stdin.readLineSync()!;
  print("Enter the brand name of your car");
  String brand = stdin.readLineSync()!;
  print("Enter the model of your car");
  String model = stdin.readLineSync()!;

  Car carObj = Car(brand, model);
  Person perObj = Person(name);

  perObj.driveCar(carObj);
}
