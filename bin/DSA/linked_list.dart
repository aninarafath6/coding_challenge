class LinkedList {
  // head and tail initially null
  Node? _head;
  Node? _tail;
  // add value into linked list
  void add(int data) {
    // create a new node with given data
    Node _newNode = Node(data);

    // checking linked list is already exist
    if (_head == null) {
      // if lined list don't exist set node as head and tail
      _head = _newNode;
    } else {
      // if linked list is already exist set node as tail._next
      _tail!._next = _newNode;
    }
    // set new node as tail even linked list is don't exist
    _tail = _newNode;
  }

  // add value at _next of that element
  void addAt(int where, int data) {
    // create a _newNode with given data
    Node _newNode = Node(data);
    // create _temporary node for go through all elements (for checking where data is contains this list)
    // _temp node is default its value is head
    Node? _temp = _head;

    // loop will work when _temp not null and _temp.data equals where it means
    //(loop will stop when _temp equals null (means when _temp on tail) or _temp.data and where will same it means we found  the where value in this list)
    while (_temp != null && _temp.data != where) {
      // setting _temp to _temp._next its means _temp will go through all values when loop will call it will brake when we found where value in this linked list or
      // _temp will tail means _temp will be null
      _temp = _temp._next;
    }
    // checking _temp == null it means _temp on tail and we not found the where value in this linked list it means the where value not found in this list
    // so we can stop this function
    if (_temp == null) {
      // handling situation
      print('$where is not contains this list');
    } else {
      // here we have where value contains in list
      // we are setting _newNode' _next = _temp node's _next
      _newNode._next = _temp._next;
      // _temp nod's _next = _newNode
      _temp._next = _newNode;
    }
  }

  // add value on last element of this linked list
  void addLast(int data) {
    // create a node with given data
    Node _newNode = Node(data);
    // checking if head  equals null its means linked list is not created so we can create a liked list
    // so linked list's first node is head
    if (_head == null) {
      // we assigned _newNode to head when  linked list is not created
      _head = _newNode;
    } else {
      // when linked list is already exist so we are assigning the new node to tail._next
      _tail!._next = _newNode;
    }
    // and we are changing tail to new node
    // even the linked list is not cerated so this case tail and head is same
    _tail = _newNode;
  }

  // add value on first element of the LinkedList
  void addFirst(int data) {
    // crate  a new node
    Node __newNode = Node(data);
    // checking the head is null then create assign the new nod as head and tail
    if (_head == null) {
      _head = __newNode;
      _tail = __newNode;
    } else {
      // inserting value as a first element in this list
      __newNode._next = _head;
      _head = __newNode;
    }
  }

  // display all values
  void display() {
    // made a new _temporary node for go through all values
    Node? _temp = _head;
    // check if _temp null then print empty
    if (_temp == null) {
      print('Empty');
    } else {
      //else _temp not null then go through all values in this linked list
      // _temp not null then loop will continue other wise when _temp == null
      //(means _temp in last element means _temp now in tail ) then loop will brake
      while (_temp != null) {
        // display _currentent val _temp node value
        print(_temp.data);
        // then changing _temp to _temp._next (mans _next node)
        _temp = _temp._next;
      }
    }
  }

// get _next element of given value
  int? getNext(int where) {
    // making a _temporary node for go through list its value initially head
    Node? _temp = _head;
    // looping the _temp , it will be stop when we  found the value or _temp will be tail ;
    while (_temp != null && _temp.data != where) {
      // we are assigning _temp._next to _temp (it will act like loop)
      _temp = _temp._next;
    }
    // when loop stop we are checking the _temp is now null
    if (_temp == null) {
      // it means when _temp null that case we cant find the where value in this list
      print('$where is not contains this list');
      // so we are return null
      return null;
    } else {
      // is _temp._next == null it means the given value is tail so we can now just return null
      if (_temp._next == null) {
        // we are handling this situation
        print('$where is the last element of this linked list');
        // just return the null
        return null;
      } else {
        // this case we find the given value and the they have the _next value .
        // the find value stored in _temp node.
        // so we can just return the _next _temp._next value.
        return _temp._next!.data;
      }
    }
  }

// find given element is contains this list
  bool find(int value) {
// _temporary node for go through the list
    Node? _temp = _head;

// loop will stop when _temp == null or _temp.data == value
    while (_temp != null && _temp.data != value) {
      _temp = _temp._next;
    }
    // check _temp == null its means this list is not contains the given value
    if (_temp == null) {
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

  // delete Operator
  void get deleteFirst {
    // if head contains any value ?
    // then set head to head's _next
    if (_head != null) {
      _head = _head!._next;
    } else {
      // other wise we wil handling error situation
      print('linkedList is empty');
    }
  }

// delete element from tail means from last
  void get deleteLast {
    // _temp element for take the deleting element from the
    Node? __temp = _head;
    // _previous node for take _previousious node of _temp
    Node? __previous;

    //  loop will stop when reach tail (means when reach _temp on the last element of this linkedList)
    while (__temp?._next != null) {
      // setting the _previousious node to _temp
      __previous = __temp;
      // and setting the __temp to _temp's _next node
      __temp = __temp?._next;
    }
    // when loop will complete we got the last element and last element's _previsions node
    // then we are cutting the connection of last element
    // and we give the connection to the pervious element
    _tail = __previous;
    // and we are removing the _next of tail(it means we are cutting the _previsions node s connection to the last element)
    _tail!._next = null;
  }

  void delete(int value) {
    // _temporary node for go through this list
    // its value initially head
    Node? __temp = _head;
    Node? __previous;

// check value is head if head then we are setting head to head._next node
    if (value == _head?.data) {
      _head = _head?._next;
      return;
    }

    // loop will stop when we find the value or we are reach tail (means when reach _temp on the last element of this linkedList)
    while (__temp != null && __temp.data != value) {
      __previous = __temp;
      __temp = __temp._next;
    }

    // we will get here [__previous,__temp]

    if (__temp == null) {
      // here we did't found any thing
      print('$value is not exist in ths list');
      // so we just return.
      return;
    }
    // check _temp.data == tail.data
    if (__temp.data == _tail?.data) {
      // this case is the given value is tail
      // so we can sett the _previous as a tail
      _tail = __previous;
      // and sett the tail._next to null
      _tail?._next = null;
    } else {
      // here we found the value in middle nodes
      // so we just interChanging   the connection (we just setting the _previous's _next as _temp's _next)
      __previous?._next = __temp._next;
    }
  }

// revered version of linkedList
  void reverse() {
    // to store _previousious node
    Node? _previous;
    // to store _current node
    Node? _current = _head;
    // to store _next node
    Node? _next;

    // loop will stop when _current nod is null
    while (_current != null) {
      // sett the next node the next node is _current nod's next
      _next = _current._next;
      // wer change the point of node that we pointing the _current node to pervious node
      _current._next = _previous;
      // then we are changing the node _previous node to current node
      _previous = _current;
      // and current node to next node
      _current = _next;
    }
    // finally we set the head as _previous because the last current node will be null so the first value now available on the
    // previous node
    _head = _previous;
  }

// taking count of elements contains in this linkedList
  int get length {
    // temporary node for go through list
    Node? _temp = _head;
    // count of elements initially it's 0
    int _count = 0;
// wer are checking head equals null
    if (_head == null) {
      // if head equals null its return default counts (count default 0 so wer are return 0)
      return _count;
    } else {
      // other wise linkedList has values
      // then we are looping inside List
      // loop will stop when reach last element of the list
      while (_temp != null) {
        _temp = _temp._next;
        // we are incrementing count
        _count++;
      }
    }
    // finally we return the count
    return _count;
  }

 // we are simply checking the head is null its means the linked list is empty so we return true
 // other wise we return false
 // we are use here tourney operator for checking
  bool get isEmpty => _head == null ? true : false;

  // we are simply checking the head is not null its means the linked list is not empty so we return true
  // other wise we return false
 // we are use here tourney operator for checking
  bool get isNotEmpty => _head != null ? true : false;
}

// node class
class Node {
  final int data;
  Node? _next;

  Node(this.data);
}
