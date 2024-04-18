class Node<T> {
  T value;
  Node<T>? next;

  Node({required this.value, this.next});

  @override
  String toString() {
    if (next == null) return '$value';
    return '$value -> ${next.toString()}';
  }
}

class Linklist<E> {
  Node<E>? head;
  Node<E>? tail;

  bool get isEmpty => head == null;

  void push(E value) {
    head = Node(value: value, next: head);
    tail ??= head;
  }

  void append(E value) {
    //1
    if (isEmpty) {
      push(value);
      return;
    }
    //2
    tail!.next = Node(value: value);

    //3
    tail = tail!.next;
  }

  Node<E>? nodeAt(int index) {
    //1
    var currentNode = head;
    var currentIndex = 0;

    //2
    while (currentNode != null && currentIndex < index) {
      currentNode = currentNode.next;
      currentIndex += 1;
    }
    return currentNode;
  }

  Node<E> insertAfter(Node<E> node, E value) {
    //1
    if (tail == node) {
      append(value);
      return tail!;
    }
    //2
    node.next = Node(value: value, next: node.next);
    return node.next!;

  }

  @override
  String toString() {
    if (isEmpty) return 'Empty List';
    return '${head.toString()}';
  }
}

void main() {
  var linklist = Linklist();
  linklist.push(1);
  linklist.push(2);
  linklist.push(3);

  print(linklist.head);
  print("");

  final node1 = Node(value: 11);
  final node2 = Node(value: 12);
  final node3 = Node(value: 13);
  final node4 = Node(value: 14);

  node1.next = node2;
  node2.next = node3;
  node3.next = node4;

  print(node1.toString());
  print("");

  linklist.append(299);

  print(linklist.head);
  print("");

  linklist.insertAfter(linklist.nodeAt(2)!, 22);
  print(linklist.head);
}
