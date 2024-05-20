class Stack<E> {
  Stack() : _storage = <E>[];
  List<E> _storage = [];

  @override
  String toString() {
    return '''---Top---
    ${_storage.reversed.join('\n')}
    \n-----------
    ''';
  }
}



