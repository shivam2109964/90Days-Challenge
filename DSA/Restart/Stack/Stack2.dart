class Stack<E> {
  Stack() : _storage = <E>[];
  final List<E> _storage;

  void push(E element) {
    return _storage.add(element);
  }

  E pop() => _storage.removeLast();

  bool get isEmpty => _storage.isEmpty;
  bool get isNotEmpty => _storage.isNotEmpty;

  //Non-Essential Operations
  bool checkParenthises(String text) {
    var stack = Stack<int>();

    final open = '('.codeUnitAt(0);
    final close = ')'.codeUnitAt(0);

    for (int codeunite in text.codeUnits) {
      if (codeunite == open) {
        stack.push(codeunite);
      } else if (codeunite == close) {
        if (stack.isEmpty) {
          return false;
        } else {
          stack.pop();
        }
      }
    }
    return stack.isEmpty;
  }

  //Reverse the stack
  void reverseTheStack(List<E> element) {
    var stack = Stack();

    for (E value in element) {
      stack.push(value);
    }
    while (stack.isNotEmpty) {
      print(stack.pop());
    }
  }

  @override
  String toString() {
    return '''\n---Top---\n
${_storage.reversed.join()}
\n---------''';
  }
}

void main() {
  var stack = Stack();

  stack.push(1);
  stack.push(2);
  stack.push(3);
  stack.push(4);
  stack.push(5);

  print(stack);
  print("");
  var popping = stack.pop();
  print("After popping the stack $stack - the popping value is $popping");

  print("");
  List<String> element = ['S', 'M', 'O', 'K', 'E'];
  stack.reverseTheStack(element);
  print("");
  var result = stack.checkParenthises("h((e))llo(world)()");
  print(result);
  print("");
  var result1 = stack.checkParenthises("(hello world");
  print(result1);
  
}
