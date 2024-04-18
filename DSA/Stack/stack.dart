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
        '${_storage}\n'
        '___________\n';
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
}
