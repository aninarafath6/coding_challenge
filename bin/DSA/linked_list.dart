class LinkedList {
  // head and tail initially null
  Node? _head;
  Node? _tail;

  // add value into linked list
  void add(int data) {
    // create a new node with given data
    Node newNode = Node(data);

    // checking linked list is already exist
    if (_head == null) {
      // if lined list don't exist set node as head and tail
      _head = newNode;
    } else {
      // if linked list is already exist set node as tail.next
      _tail!.next = newNode;
    }
    // set new node as tail even linked list is don't exist
    _tail = newNode;
  }

  // add value at next of that element
  void addAt(int where, int data) {
    // create a newNode with given data
    Node newNode = Node(data);
    // create temporary node for go through all elements (for checking where data is contains this list)
    // temp node is default its value is head
    Node? temp = _head;

    // loop will work when temp not null and temp.data equals where it means
    //(loop will stop when temp equals null (means when temp on tail) or temp.data and where will same it means we found  the where value in this list)
    while (temp != null && temp.data != where) {
      // setting temp to temp.next its means temp will go through all values when loop will call it will brake when we found where value in this linked list or
      // temp will tail means temp will be null
      temp = temp.next;
    }
    // checking temp == null it means temp on tail and we not found the where value in this linked list it means the where value not found in this list
    // so we can stop this function
    if (temp == null) {
      // handling situation
      print('$where is not contains this list');
    } else {
      // here we have where value contains in list
      // we are setting newNode' next = temp node's next
      newNode.next = temp.next;
      // temp nod's next = newNode
      temp.next = newNode;
    }
  }

  // add value on last element of this linked list
  void addLast(int data) {
    // create a node with given data
    Node newNode = Node(data);
    // checking if head  equals null its means linked list is not created so we can create a liked list
    // so linked list's first node is head
    if (_head == null) {
      // we assigned newNode to head when  linked list is not created
      _head = newNode;
    } else {
      // when linked list is already exist so we are assigning the new node to tail.next
      _tail!.next = newNode;
    }
    // and we are changing tail to new node
    // even the linked list is not cerated so this case tail and head is same
    _tail = newNode;
  }

  // add value on first element of the LinkedList
  void addFirst(int data) {
    // crate  a new node
    Node _newNode = Node(data);
    // checking the head is null then create assign the new nod as head and tail
    if (_head == null) {
      _head = _newNode;
      _tail = _newNode;
    } else {
      // inserting value as a first element in this list
      _newNode.next = _head;
      _head = _newNode;
    }
  }

  // display all values
  void display() {
    // made a new temporary node for go through all values
    Node? temp = _head;
    // check if temp null then print empty
    if (temp == null) {
      print('Empty');
    } else {
      //else temp not null then go through all values in this linked list
      // temp not null then loop will continue other wise when temp == null
      //(means temp in last element means temp now in tail ) then loop will brake
      while (temp != null) {
        // display current val temp node value
        print(temp.data);
        // then changing temp to temp.next (mans next node)
        temp = temp.next;
      }
    }
  }

// get next element of given value
  int? getNext(int where) {
    // making a temporary node for go through list its value initially head
    Node? temp = _head;
    // looping the temp , it will be stop when we  found the value or temp will be tail ;
    while (temp != null && temp.data != where) {
      // we are assigning temp.next to temp (it will act like loop)
      temp = temp.next;
    }
    // when loop stop we are checking the temp is now null
    if (temp == null) {
      // it means when temp null that case we cant find the where value in this list
      print('$where is not contains this list');
      // so we are return null
      return null;
    } else {
      // is temp.next == null it means the given value is tail so we can now just return null
      if (temp.next == null) {
        // we are handling this situation
        print('$where is the last element of this linked list');
        // just return the null
        return null;
      } else {
        // this case we find the given value and the they have the next value .
        // the find value stored in temp node.
        // so we can just return the next temp.next value.
        return temp.next!.data;
      }
    }
  }

// find given element is contains this list
  bool find(int value) {
// temporary node for go through the list
    Node? temp = _head;

// loop will stop when temp == null or temp.data == value
    while (temp != null && temp.data != value) {
      temp = temp.next;
    }
    // check temp == null its means this list is not contains the given value
    if (temp == null) {
      // so wer return false
      return false;
    } else {
      // other wise list contains  the value 
      // so we return the true
      return true;
    }
  }

  // get first element
  int? get first => _head?.data;
  // get last element in the linked List
  int? get last => _tail?.data;
}

// node class
class Node {
  final int data;
  Node? next;

  Node(this.data);
}
