class Rectangle {
  int width;
  int height;

  Rectangle(this.width, this.height);

  void setWidth(int width) {
    this.width = width;
  }

  void setHeight(int height) {
    this.height = height;
  }

  int calculateArea() => width * height;
}

class Square extends Rectangle {
  Square(int side) : super(side, side);

  @override
  void setWidth(int width) {
    super.setWidth(width);
    super.setHeight(width);
  }

  @override
  void setHeight(int height) {
    super.setWidth(height);
    super.setHeight(height);
  }
}

void main() {
  final rectangle = Rectangle(4, 6);
  final square = Square(5);

  print('Rectangle area: ${rectangle.calculateArea()}'); // 24
  print('Square area: ${square.calculateArea()}'); // 25

  // Uh-oh! This violates the LSP:
  rectangle.setWidth(8);
  print('Updated rectangle area: ${rectangle.calculateArea()}'); // 48
  print('Updated square area: ${square.calculateArea()}'); // 64
}
