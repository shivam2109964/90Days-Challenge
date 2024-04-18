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

class ListNode<E> {
  Node<E>? head;
  Node<E>? tail;

  bool get isEmpty => head == null;
  void push(E value) {
    head = Node(value: value, next: head);
  }

  String toString() {
    if (isEmpty) return 'Empity List';
    return '${head.toString()}';
  }
}

class Solution {
  ListNode? addTwoNumbers(ListNode? l1, ListNode? l2) {}
}

void main() {
  //Row 1
  final row1Node1 = Node(value: 2);
  final row1Node2 = Node(value: 4);
  final row1Node3 = Node(value: 3);

  row1Node1.next = row1Node2;
  row1Node2.next = row1Node3;

  print(row1Node1.toString());
  print("");
  //Row 2

  final row2Node1 = Node(value: 5);
  final row2Node2 = Node(value: 6);
  final row2Node3 = Node(value: 4);

  row2Node1.next = row2Node2;
  row2Node2.next = row2Node3;

  print("${row2Node1.toString()}");
  print("");


}
