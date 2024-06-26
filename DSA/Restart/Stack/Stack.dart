class Stack<E> {
  Stack() : _storage = <E>[];
  final List<E> _storage;

  void push(E element) => _storage.add(element);
  E pop() => _storage.removeLast();

  //Non-Essential Opertaions
  E get peek => _storage.last;

  bool get isEmpty => _storage.isEmpty;
  bool get isNotEmpty => _storage.isNotEmpty;

  //Creating a stack from an Iterable
  Stack.of(Iterable<E> element) : _storage = List<E>.of(element);

  //Apply reverse Stack
  void printInReverse<E>(List<E> list) {
    var stack = Stack<E>();

    for (E value in list) {
      stack.push(value);
    }
    while (stack.isNotEmpty) {
      print(stack.pop());
    }
  }

  //Check Parentheses
  bool checkParentheses(String text) {
    var stack = Stack<int>();

    final open = '('.codeUnitAt(0);
    final close = ')'.codeUnitAt(0);

    for (int codeUnit in text.codeUnits) {
      if (codeUnit == open) {
        stack.push(codeUnit);
      } else if (codeUnit == close) {
        if (stack.isEmpty) {
          return false;
        } else {
          stack.pop();
        }
      }
    }
    return stack.isEmpty;
  }

  @override
  String toString() {
    return '---TOP---\n'
        '${_storage.reversed.join()}'
        '\n------';
  }
}

void main() {
  Stack stack = Stack();
  stack.push(1);
  stack.push(2);
  stack.push(3);
  stack.push(4);
  stack.push(5);
  print(stack);

  var pop1 = stack.pop();
  print("Popped Element ---- $pop1");
  print(stack);

  stack.push(6);
  stack.push(7);

  print(stack);

  var pop2 = stack.pop();
  print("Popped Element ---- $pop2");
  print(stack);

  //Non-Essential Operations testing
  var test1 = stack.peek;
  print("--- $test1");

  var test2 = stack.isEmpty;
  print(test2);

  var test3 = stack.isNotEmpty;
  print(test3);

  //Testing Iterable Stack
  const list = ['S', 'M', 'O', 'K', 'E'];
  final smokeStack = Stack.of(list);
  print(smokeStack);
  smokeStack.pop();
  print(smokeStack);
  smokeStack.push("x");
  print(smokeStack);

  stack.printInReverse(list);

  var paren = stack.checkParentheses("(hello world");
  print(paren);
}
