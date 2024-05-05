import 'dart:math';

abstract class Shape {
  double calculationArea();
}

class Circle extends Shape {
  final double radius;

  Circle(this.radius);

  @override
  double calculationArea() {
    return pi * radius * radius;
  }
}

class Rectangle extends Shape {
  final double length;
  final double width;

  Rectangle(this.length, this.width);

  @override
  double calculationArea() {
    return length * width;
  }
}

void main() {
  final circle = Circle(9.1);

  final rectangle = Rectangle( 21, 21);

  print("Area of Cricle: ${circle.calculationArea().toStringAsFixed(2)}");
  print("Area of Rectangle: ${rectangle.calculationArea().toStringAsFixed(2)}");
}
