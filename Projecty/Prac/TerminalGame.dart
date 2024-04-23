int move(int pos, int roll) {
  int newPos = pos + (roll * 2);
  return newPos;
}

void main() {
  var result = move(3, 6);
  print(result);
}
