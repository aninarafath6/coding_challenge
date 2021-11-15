class DoublyLinkedList {
  Node? tail;
  Node? head;

  void add(dynamic data) {
    Node newNode = Node(data);

    if (head == null) {
      head = newNode;
    } else {
      tail!.next = newNode;
      newNode.prev = tail;
    }
    tail = newNode;
  }

  void display() {
    Node? temp = head;
    while (temp != null) {
      print(temp.data);
      temp = temp.next;
    }
  }

  void reversed() {
    Node? temp = tail;
    while (temp != null) {
      print(temp.data);
      temp = temp.prev;
    }
  }
}

class Node {
  final dynamic data;
  Node? next;
  Node? prev;
  Node(this.data);
}
