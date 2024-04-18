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

class LinkedList<E> {
  Node<E>? head;
  Node<E>? tail;

  bool get isEmpty => head == null;

  void push(E value) {
    head = Node(value: value, next: head);
    tail ?? head;
  }

  @override
  String toString() {
    if (isEmpty) return 'Empty List';
    return head.toString();
  }
}

void main() {
  final node1 = Node(value: 1);
  final node2 = Node(value: 2);
  final node3 = Node(value: 3);
  final node4 = Node(value: 4);

  node1.next = node2;
  node2.next = node3;
  node3.next = node4;

  print(node1);
  print("");
  final linkelist = LinkedList<int>();
  linkelist.head = node1;
  linkelist.tail = node4;

  if (linkelist.head != null) {
    print("Try to print entire linklist ${linkelist.head.toString()}");
    print("Head of the linked list: ${linkelist.head!.value}");
    print("The tail of the linked list: ${linkelist.tail!.value}");
  } else {
    print("Linked list is empty");
  }

  print("");
  print("Adding value though push (head-first insertion)");
  linkelist.push(22);
  print("${linkelist.head.toString()}");
}
