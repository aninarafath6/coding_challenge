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

// display all values
  void display() {
    // made a new temporary node for go through all values
    Node? temp = head;
    // check if temp null then print empty
    if (temp == null) {
      print('Empty');
    } else {
      //else temp not null then go through all values in this linked list
      // temp not null then loop will continue other wise when temp == null (means temp in last element means temp now in tail ) then loop will brake 
      while (temp != null) {
        // display current val temp node value
        print(temp.data);
        // then changing temp to temp.next (mans next node)
        temp = temp.next;
      }
    }
  }


  
}



// node class 
class Node {
  final int data;
  Node? next;

  Node(this.data);
}
