class Point {
  double x = 0;
  double y = 0;

  // Generative constructor with initializing formal parameters
  Point(this.x, this.y);

  // Named constructor: Point.origin()
  Point.origin()
      : x = 0, // Initialize x
        y = 0; // Initialize y
}

void main() {
  // Using the generative constructor
  final pointA = Point(3, 5);
  print('Point A: x=${pointA.x}, y=${pointA.y}');

  // Using the named constructor
  final originPoint = Point.origin();
  print('Origin Point: x=${originPoint.x}, y=${originPoint.y}');
}
