class ImmutablePoint {
  final int x; // Declaring 'x' as final makes it immutable
  final int y; // Declaring 'y' as final makes it immutable

  // Constructor for ImmutablePoint
  ImmutablePoint(this.x, this.y);
}

void main() {
  // Creating an immutable point
  final point = ImmutablePoint(3, 4);

  // Attempting to change the values of 'x' and 'y'
  // This will result in a compilation error because 'x' and 'y' are immutable
  // point.x = 5;
  // point.y = 6;

  // Accessing the values of 'x' and 'y'
  print('Point: (${point.x}, ${point.y})');
}
