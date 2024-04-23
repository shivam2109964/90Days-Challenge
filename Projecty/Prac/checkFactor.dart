bool checkForFactor(int base, int factor) {
  if (base % factor == 0) {
    return true;
  } else
    return false;
}

void main() {
  var result = checkForFactor(10, 2);
  print(result);
}

