class Vector {
  final int x, y;

  Vector(this.x, this.y);

  Vector operator +(Vector v) => Vector(x + v.x, y + v.y);
}

void main() {
  final v1 = Vector(2, 3);
  final v2 = Vector(4, 5);
  final result = v1 + v2;
  print("The result is ${result.x} and ${result.y}");
}
