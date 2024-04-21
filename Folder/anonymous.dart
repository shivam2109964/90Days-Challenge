void main() {
  //Anonymous function as a parameter
  var result = operation(5, (int x) { return x * 2;});

  print(result);

  //Anonymouns function assigned to a variable
  var square = (int x) => x * x;
  print(square(4));
}

int operation(int num, Function(int) fun) {
  return fun(num);
}
