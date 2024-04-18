class Stack<E> {
  Stack() : _storage = <E>[];
  List<E> _storage;

  void push(E element) {
    _storage.add(element);
  }

  void remove(E element) {
    _storage.remove(element);
  }

  @override
  String toString() {
    return '----Top----\n'
        '${_storage}'
        '\n_________';
  }
}

void main() {
  var stack = Stack<int>();

  stack.push(3);
  stack.push(3);
  stack.push(4);
  stack.push(5);
  stack.push(6);

  print(stack);
}
