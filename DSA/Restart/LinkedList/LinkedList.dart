class Node<T> {
  T? value;
  Node<T>? next;

  Node({required this.value, this.next});

  @override
  String toString() {
    if (next == null) return '$value';
    return '$value ---> ${next.toString()}';
  }
}

void main() {
  final node = Node(value: 1);
  final node1 = Node(value: 2);
  final node2 = Node(value: 3);
  final node3 = Node(value: 4);
  final node4 = Node(value: 5);

  node.next = node1;
  node1.next = node2;
  node2.next = node3;
  node3.next = node4;
  
  print(node.toString());
}
