class LinkedList {
  Node? head;
  Node? tail;


  // add value into linked list
  void add(int data) {
    // create a new node with given data
    Node newNode = Node(data);

    // checking linked list is already exist 
    if (head == null) {
      // if lined list don't exist set node as head and tail
      head = newNode;
    } else {
      // if linked list is already exist set node as tail.next
      tail!.next = newNode;
    }
    // set new node as tail even linked list is don't exist
    tail = newNode;
  }
}

class Node {
  final int data;
  Node? next;

  Node(this.data);
}
