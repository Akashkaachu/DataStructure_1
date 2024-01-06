// void main() {
//   //--------------------BinarySearch--Using--Recurtion------//

//   List<int> listBinary = [1, 2, 3, 4, 56, 7];
//   int target = 56;
//   int result = binarySearch(listBinary, target, 0, listBinary.length - 1);
//   if (result != -1) {
//     print("$target is found in the list $result");
//   } else {
//     print("$target is not found in the list");
//   }
// }

// int binarySearch(List<int> list, tar, low, high) {
//   while (low <= high) {
//     int mid = (low + high) ~/ 2;
//     int midValue = list[mid];
//     if (midValue == tar) {
//       return mid;
//     } else if (midValue < tar) {
//       return binarySearch(list, tar, mid + 1, high);
//     } else if (midValue > tar) {
//       return binarySearch(list, tar, low, mid - 1);
//     }
//   }
//   return -1;
// }

// void main() {
//   //----Array-to--Single linked list---//
//   List<int> arr = [1, 2, 3, 4, 5, 6, 7];
//   LlinkedList addList = LlinkedList();

//   for (int i = 0; i < arr.length; i++) {
//     addList.addEnd(arr[i]);
//   }
//   addList.display();
// }

// class Node {
//   int? data;
//   Node? next;
//   Node(int data) {
//     this.data = data;
//     this.next = null;
//   }
// }

// class LlinkedList {
//   Node? head;
//   Node? tail;
//   void addEnd(int data) {
//     Node newNode = Node(data);
//     if (head == null) {
//       head = newNode;
//     } else {
//       tail!.next = newNode;
//     }
//     tail = newNode;
//   }

//   void display() {
//     if (head == null) {
//       print("The list is Empty");
//       return;
//     } else {
//       Node? temp = head;
//       while (temp != null) {
//         print("The list is found:${temp.data}");
//         temp = temp.next;
//       }
//     }
//   }
// }

//
//
//
//

// import 'dart:io';

// void main() {
//   SlinkedList senior = SlinkedList();
//   senior.addEnd(10);
//   senior.addEnd(12);
//   senior.addEnd(3);
//   senior.addEnd(60);
//   senior.addEnd(90);
//   senior.addBegging(1);
//   senior.deleteValue(1);
//   senior.searchList(100);
//   senior.display();
//   senior.reverseList();
//   senior.display();
// }

// class Node {
//   late int data;
//   Node? next;
//   Node(int data) {
//     this.data = data;
//     this.next = null;
//   }
// }

// class SlinkedList {
//   Node? head;
//   Node? tail;
//   void addEnd(int data) {
//     Node newNode = Node(data);
//     if (head == null) {
//       head = newNode;
//     } else {
//       tail!.next = newNode;
//     }
//     tail = newNode;
//   }

//   void addBegging(int data) {
//     Node newNode = Node(data);
//     if (head == null) {
//       head = newNode;
//       tail = newNode;
//     } else {
//       newNode.next = head;
//       head = newNode;
//     }
//   }

//   void deleteValue(int value) {
//     if (head == null) {
//       print("The value is not found");
//     } else {
//       Node? temp = head;
//       Node? prev;
//       if (temp != null) {
//         if (temp.data == value) {
//           head = temp.next;
//         }
//         while (temp != null && temp.data != value) {
//           prev = temp;
//           temp = temp.next;
//         }
//         if (temp == null) {
//           return;
//         }
//         prev?.next = temp.next;
//         if (temp == tail) {
//           temp = prev;
//         }
//       }
//     }
//   }

//   void searchList(int value) {
//     if (head == null) {
//       print("The List is Empty");
//     } else {
//       Node? temp = head;
//       while (temp != null) {
//         if (temp.data == value) {
//           print(temp.data);
//           return;
//         }
//         temp = temp.next;
//       }
//       if (temp == null) {
//         print("The value is not present");
//       }
//     }
//   }

//   void reverseList() {
//     Node? prev;
//     Node? nextNode;
//     Node? currentNode = nextNode = head;
//     while (nextNode != null) {
//       nextNode = nextNode.next;
//       currentNode!.next = prev;
//       prev = currentNode;
//       currentNode = nextNode;
//     }
//     head = prev;
//   }

//   void display() {
//     if (head == null) {
//       print("The list not found");
//     } else {
//       Node? temp = head;
//       while (temp != null) {
//         stdout.write(" ${temp.data}");
//         temp = temp.next;
//       }
//       print('');
//     }
//   }
// }
//---------------------------recursion-(without recursion)---------------///
// void main() {
//   int k = 1;
//   for (int i = 1; i <= 6; i++) {
//     k = k * i;
//   }
//   print(k);
// }
//--------------with recursion---------------//
// void main() {
//   int result = fact(1);
//   print(result);
// }

// int fact(int n) {
//   if (n == 1) {
//     return 1;
//   } else {
//     return n * fact(n - 1);
//   }
// }

//---------------fabonacci--(without recursion)-----//
// import 'dart:io';

// void main() {
//   int n1 = 0, n2 = 1, n3 = 0;
//   int alpha = 6;
//   stdout.write("$n1,$n2,");
//   for (int i = 0; i < alpha; i++) {
//     n3 = n1 + n2;
//     stdout.write('$n3,');
//     n1 = n2;
//     n2 = n3;
//   }
// }
//---------------fabonacci--(with recursion)-----//
// import 'dart:io';

// void main() {
//   int n = 6;
//   for (int i = 0; i < n; i++) {
//     stdout.write('${fibonacci(i)},');
//   }
// }

// int fibonacci(int value) {
//   if (value == 0) {
//     return 0;
//   } else if (value == 1) {
//     return 1;
//   } else {
//     return fibonacci(value - 1) + fibonacci(value - 2);
//   }
// }

//--------------Recursion Largest Number------//
// void main() {
//   List<int> l1 = [1, 2, 3, 4, 44, 3, 6];
//   int result = largest(l1, 0, l1[0]);
//   print(result);
// }

// int largest(List<int> list, index, int max) {
//   if (index == list.length) {
//     return max;
//   } else if (list[index] > max) {
//     max = list[index];
//   }
//   return largest(list, index + 1, max);
// }

//--------------Recursion 2nd Largest Number------//
// void main() {
//   List<int> list = [1, 2, 44, 55, 66, 77, 2324, 10000];
//   int result = secondLarget(list, 0, list[0], list[0]);
//   print(result);
// }

// int secondLarget(List<int> list, index, l1, l2) {
//   if (index == list.length) {
//     return l2;
//   } else if (list[index] > l1) {
//     l2 = l1;
//     l1 = list[index];
//   } else if (list[index] < l1 && list[index] > l2) {
//     l2 = list[index];
//   }
//   return secondLarget(list, index + 1, l1, l2);
// }

//-------------BinarySearch--------//
// void main() {
//   List<int> binary = [1, 2, 10, 4, 5, 6, 7, 44];
//   int target = 7;
//   int result = binarySearch(binary, target);
//   if (result != -1) {
//     print(result);
//   } else {
//     print("Not found");
//   }
// }

// int binarySearch(List<int> binary, int tar) {
//   int low = 0;
//   int high = binary.length - 1;
//   while (low < high) {
//     int mid = (low + high) ~/ 2;
//     int midValue = binary[mid];
//     if (midValue == tar) {
//       return mid;
//     } else if (midValue < tar) {
//       low = mid + 1;
//     } else if (midValue > tar) {
//       high = mid - 1;
//     }
//   }
//   return -1;
// }

//----------------LinearSearch-------------//
// void main() {
//   List<int> list = [1, 2, 3, 4, 5, 6, 8];
//   int target = 4;
//   int result = linearSearch(list, target);
//   if (result != -1) {
//     print("$target is found in the list[$result]");
//   } else {
//     print("$target is not found in the list");
//   }
// }

// int linearSearch(List<int> list, int tar) {
//   for (int i = 0; i < list.length; i++) {
//     if (list[i] == tar) {
//       return i;
//     }
//   }
//   return -1;
// }
// void main() {
//   List<int> list = [1, 2, 3, 4, 5, 6, 7, 8];
//   int target = 8;
//   int result = recursionBinarySearch(list, target, 0, list.length);
//   print("$target is found in the list[$result]");
// }

// int recursionBinarySearch(List<int> list, int tar, int low, int high) {
//   while (low < high) {
//     int mid = (low + high) ~/ 2;
//     int midValue = list[mid];
//     if (midValue == tar) {
//       return mid;
//     } else if (midValue < tar) {
//       return recursionBinarySearch(list, tar, mid + 1, high);
//     } else if (midValue > tar) {
//       return recursionBinarySearch(list, tar, low, mid - 1);
//     }
//   }
//   return -1;
// }

//----------Doubly--Linked--List-------------------//
import 'dart:io';

void main() {
  DlinkedList Dlink = DlinkedList();

  Dlink.addEnd(10);
  Dlink.addEnd(1);
  Dlink.addEnd(1420);
  Dlink.addEnd(100);
  Dlink.addBegging(1000);
  Dlink.display();
  Dlink.delete(1);
  Dlink.searchLinked(178970);
  Dlink.deleteAtposition(3);
  Dlink.display();
  Dlink.displayreverse();
}

class Node {
  late int data;
  Node? prev;
  Node? next;
  Node(int data) {
    this.data = data;
    this.next = null;
  }
}

class DlinkedList {
  Node? head;
  Node? tail;
  void addEnd(int data) {
    Node? newNode = Node(data);
    if (head == null) {
      head = newNode;
      tail = newNode;
    } else {
      tail!.next = newNode;
      newNode.prev = tail;
      tail = newNode;
    }
  }

  void addBegging(int data) {
    Node? newNode = Node(data);
    if (head == null) {
      head = newNode;
      tail = newNode;
    } else {
      newNode.next = head;
      head!.prev = newNode;
      head = newNode;
    }
  }

  void delete(int value) {
    if (head == null) {
      print("The is not present");
      return;
    }
    Node? temp = head;
    while (temp != null && temp.data != value) {
      temp = temp.next;
    }
    if (temp != null) {
      if (temp.prev != null) {
        temp.prev!.next = temp.next;
      } else {
        head = temp.next;
      }
      if (temp.next != null) {
        temp.next!.prev = temp.prev;
      } else {
        tail = temp.prev;
      }
    } else {
      print("Node with value is not present");
    }
  }

  void searchLinked(int value) {
    if (head == null) {
      print("The list is empty");
      return;
    } else {
      Node? temp = head;
      while (temp != null) {
        if (temp.data == value) {
          print(temp.data);
        }
        temp = temp.next;
      }
    }
  }

  void deleteAtposition(int position) {
    if (head == null) {
      print("The list is empty");
    }
    Node? temp = head;
    int index = 0;
    while (temp != null && index < position) {
      temp = temp.next;
      index++;
    }
    if (temp == null) {
      print("Invalid Number");
    }
    if (temp!.prev != null) {
      temp.prev!.next = temp.next;
    } else {
      head = temp.next;
    }
    if (temp.next != null) {
      temp.next!.prev = temp.prev;
    } else {
      tail = temp.prev;
    }
  }

  void display() {
    if (head == null) {
      print("The list is empty");
    }
    Node? temp = head;
    while (temp != null) {
      stdout.write("${temp.data},");
      temp = temp.next;
    }
    print('');
  }

  void displayreverse() {
    if (head == null) {
      print("The list is empty");
    }
    Node? temp = tail;
    while (temp != null) {
      stdout.write("${temp.data},");
      temp = temp.prev;
    }
  }
}
