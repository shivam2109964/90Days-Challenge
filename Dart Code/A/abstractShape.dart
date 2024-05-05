import 'dart:math';

abstract class Shape {
  void calculateAreaOfCricle(double radius) {
    double areaOfCir = pi * radius * radius;
    print("The area of Cricle is ${areaOfCir.toStringAsFixed(2)}");
  }

  void calculateAreaOfRect(double length, double width) {
    double areaOfRec = length * width;
    print("The area of Rectangle is ${areaOfRec.toStringAsFixed(2)}");
  }
}

class Circle extends Shape {
  double radius;
  Circle(this.radius);

  void printAreaofCircle() {
    print("Here Circle Area Calculation");
    super.calculateAreaOfCricle(radius);
  }
}

class Rectangle extends Shape {
  double length;
  double width;

  Rectangle(this.length, this.width);

  void printAreaOfRect() {
    print("Here Rectangular Area Calculation");
    super.calculateAreaOfRect(length, width);
  }
}

void main() {
  double radius = 9.1;
  double length = 21;
  double width = 21;

  Circle circle = Circle(radius);
  Rectangle rectangle = Rectangle(length, width);

  circle.printAreaofCircle();
  print("");
  rectangle.printAreaOfRect();
}
