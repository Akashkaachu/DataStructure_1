// void main() {
//   //======================================BinarySearch--Using--Recurtion===============================================//

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
//   //=====================================================Array-to--Single linked list======================================//
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
//===============================================recursion-(without recursion)==========================================///
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

//==================================================fabonacci--(without recursion)==========================================//
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
//=================================================fabonacci--(with recursion)=========================================//
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

//============================================Recursion Largest Number============================================//
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

//==============================Recursion 2nd Largest Number=========================================================//
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

//=======================================BinarySearch============================================================//
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

//==============================================================LinearSearch=================================================================//
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

//==================================================================Doubly--Linked--List=============================//
// import 'dart:io';

// void main() {
//   DlinkedList Dlink = DlinkedList();

//   Dlink.addEnd(10);
//   Dlink.addEnd(1);
//   Dlink.addEnd(1420);
//   Dlink.addEnd(100);
//   Dlink.addBegging(1000);
//   Dlink.display();
//   Dlink.delete(1);
//   Dlink.searchLinked(178970);
//   Dlink.deleteAtposition(3);
//   Dlink.display();
//   Dlink.displayreverse();
// }

// class Node {
//   late int data;
//   Node? prev;
//   Node? next;
//   Node(int data) {
//     this.data = data;
//     this.next = null;
//   }
// }

// class DlinkedList {
//   Node? head;
//   Node? tail;
//   void addEnd(int data) {
//     Node? newNode = Node(data);
//     if (head == null) {
//       head = newNode;
//       tail = newNode;
//     } else {
//       tail!.next = newNode;
//       newNode.prev = tail;
//       tail = newNode;
//     }
//   }

//   void addBegging(int data) {
//     Node? newNode = Node(data);
//     if (head == null) {
//       head = newNode;
//       tail = newNode;
//     } else {
//       newNode.next = head;
//       head!.prev = newNode;
//       head = newNode;
//     }
//   }

//   void delete(int value) {
//     if (head == null) {
//       print("The is not present");
//       return;
//     }
//     Node? temp = head;
//     while (temp != null && temp.data != value) {
//       temp = temp.next;
//     }
//     if (temp != null) {
//       if (temp.prev != null) {
//         temp.prev!.next = temp.next;
//       } else {
//         head = temp.next;
//       }
//       if (temp.next != null) {
//         temp.next!.prev = temp.prev;
//       } else {
//         tail = temp.prev;
//       }
//     } else {
//       print("Node with value is not present");
//     }
//   }

//   void searchLinked(int value) {
//     if (head == null) {
//       print("The list is empty");
//       return;
//     } else {
//       Node? temp = head;
//       while (temp != null) {
//         if (temp.data == value) {
//           print(temp.data);
//         }
//         temp = temp.next;
//       }
//     }
//   }

//   void deleteAtposition(int position) {
//     if (head == null) {
//       print("The list is empty");
//     }
//     Node? temp = head;
//     int index = 0;
//     while (temp != null && index < position) {
//       temp = temp.next;
//       index++;
//     }
//     if (temp == null) {
//       print("Invalid Number");
//     }
//     if (temp!.prev != null) {
//       temp.prev!.next = temp.next;
//     } else {
//       head = temp.next;
//     }
//     if (temp.next != null) {
//       temp.next!.prev = temp.prev;
//     } else {
//       tail = temp.prev;
//     }
//   }

//   void display() {
//     if (head == null) {
//       print("The list is empty");
//     }
//     Node? temp = head;
//     while (temp != null) {
//       stdout.write("${temp.data},");
//       temp = temp.next;
//     }
//     print('');
//   }

//   void displayreverse() {
//     if (head == null) {
//       print("The list is empty");
//     }
//     Node? temp = tail;
//     while (temp != null) {
//       stdout.write("${temp.data},");
//       temp = temp.prev;
//     }
//   }
// }

//=====================================================================================================================//
//               !!!!!!!!!!!!!!!!!!!!!--------DATA STRUCTURE__WEEK_2-----------!!!!!!!!!!!!!!!!
//============================================================================================================================//

//===============================================bobblesort==============================================================//
// void main() {
//   List<int> arr = [1, 44, 3, 66, 5, 88, 7, 6];
//   bobbleSort(arr);
//   print(arr);
// }

// void bobbleSort(List<int> arr) {
//   int n = arr.length - 1;
//   bool swapped;
//   do {
//     swapped = false;
//     for (int i = 0; i < n; i++) {
//       if (arr[i] > arr[i + 1]) {
//         int temp = arr[i];
//         arr[i] = arr[i + 1];
//         arr[i + 1] = temp;
//         swapped = true;
//       }
//     }
//   } while (swapped);
// }

//==============================================selection sort================================================================//

// void main() {
//   List<int> arr = [4, 33, 5, 22, 15];
//   selectionSort(arr);
//   print(arr);
// }

// void selectionSort(List<int> arr) {
//   int n = arr.length;
//   for (int i = 0; i < n - 1; i++) {
//          int minIndex = i;
//     for (int j = i + 1; j < n; j++) {
//       if (arr[j] < arr[minIndex]) {
//         minIndex = j;
//       }
//     }
//     int temp = arr[minIndex];
//     arr[minIndex] = arr[i];
//     arr[i] = temp;
//   }
// }
//==============================InsertionSort==============================================================================//
// void main() {
//   List<int> arr = [-1, 7, 1, 44, 23, 13, 33, 244, 3, 55, 4, 2];
//   insertionSort(arr);
//   print(arr);
// }

// void insertionSort(List<int> arr) {
//   int n = arr.length;
//   for (int i = 1; i < n; i++) {
//     int key = arr[i];
//     int j = i - 1;
//     while (j >= 0 && arr[j] > key) {
//       arr[j + 1] = arr[j];
//       j = j - 1;
//     }
//     arr[j + 1] = key;
//   }
// }
//=========================================================MergeSort=====================================================================================//
// void main() {
//   List<int> arr = [1, 33, 244, 3, 55, 4, 2];
//   mergeSort(arr);
//   print(arr);
// }

// void mergeSort(List<int> arr) {
//   if (arr.length > 1) {
//     int middle = arr.length ~/ 2;
//     List<int> left = arr.sublist(0, middle);
//     List<int> right = arr.sublist(middle);
//     mergeSort(left);
//     mergeSort(right);
//     merge(arr, left, right);
//   }
// }

// void merge(List<int> arr, List<int> left, List<int> right) {
//   int i = 0, j = 0, k = 0;
//   while (i < left.length && j < right.length) {
//     if (left[i] < right[j]) {
//       arr[k] = left[i];
//       i++;
//     } else {
//       arr[k] = right[j];
//       j++;
//     }
//     k++;
//   }
//   while (i < left.length) {
//     arr[k] = left[i];
//     i++;
//     k++;
//   }
//   while (j < right.length) {
//     arr[k] = right[j];
//     j++;
//     k++;
//   }
// }

//===================================================================QuickSort=================================================//

// void main() {
//   List<int> quickList = [33, 2, 55, 46, 22, 77];
//   quickSort(quickList, 0, quickList.length - 1);
//   print(quickList);
// }

// void quickSort(List<int> arr, int low, int high) {
//   if (low < high) {
//     int partitionIndex = partition(arr, low, high);
//     quickSort(arr, low, partitionIndex - 1);
//     quickSort(arr, partitionIndex + 1, high);
//   }
// }

// int partition(List<int> arr, int low, int high) {
//   int pivot = arr[high];
//   int i = low - 1;
//   for (int j = low; j < high; j++) {
//     if (arr[j] <= pivot) {
//       i++;
//       int temp = arr[i];
//       arr[i] = arr[j];
//       arr[j] = temp;
//     }
//   }
//   int temp = arr[i + 1];
//   arr[i + 1] = arr[high];
//   arr[high] = temp;
//   return i + 1;
// }

//===============================================================HashTable=================================================//
// void main() {
//   HashTable hashT = HashTable(30);
//   hashT.insert('jen', 10980);
//   hashT.insert('aka', 10);
//   hashT.insert('adi', 30);
//   print(hashT.search('jen'));
//   print(hashT.search('adi'));
//   print(hashT.delete('adi'));
// }

// class Node {
//   dynamic key;
//   dynamic value;
//   Node? next;
//   Node(this.key, this.value);
// }

// class HashTable {
//   int capacity;
//   late List<Node?> table;
//   HashTable(this.capacity) {
//     table = List<Node?>.filled(capacity, null);
//   }
//   int hash(dynamic key) {
//     return key.hashCode % capacity;
//   }

//   void insert(dynamic key, dynamic value) {
//     int index = hash(key);
//     if (table[index] == null) {
//       table[index] = Node(key, value);
//     } else {
//       Node? newNode = Node(key, value);
//       newNode = table[index];
//       table[index] = newNode;
//     }
//   }

//   dynamic search(dynamic key) {
//     int index = hash(key);
//     Node? current = table[index];
//     while (current != null) {
//       if (current.key == key) {
//         return current.value;
//       }
//       current = current.next;
//     }
//     return null;
//   }

//   dynamic delete(dynamic key) {
//     int index = hash(key);
//     Node? current = table[index];
//     Node? prev;
//     while (current != null) {
//       if (current.key == key) {
//         if (prev == null) {
//           table[index] = current.next;
//         } else {
//           prev.next = current.next;
//         }
//         prev = current;
//         current = current.next;
//       }
//     }
//     return;
//   }
// }

//=============================================================Stack Using LinkedList================================//
// void main() {
//   Stack<int> stack = Stack<int>();
//   stack.push(10);
//   stack.push(33);
//   stack.push(33);
//   stack.push(335);
//   stack.display();
// }

// class Node<T> {
//   T? data;
//   Node<T>? next;
//   Node(this.data);
// }

// class Stack<T> {
//   Node<T>? top;
//   void push(T data) {
//     Node<T> newNode = Node(data);
//     newNode.next = top;
//     top = newNode;
//   }

//   T? pop() {
//     if (top == null) {
//       return null;
//     } else {
//       T? data = top!.data;
//       top = top!.next;
//       return data;
//     }
//   }

//   void display() {
//     if (top == null) {
//       print("Stack is empty");
//       return;
//     }
//     Node<T>? current = top;
//     while (current != null) {
//       print(current.data);
//       current = current.next;
//     }
//   }
// }

//===========================================================Queue======================================================//

void main() {
  Queue<int> que = Queue<int>();
  que.enqueue(10);
  que.enqueue(200);
  que.display();
}

class Node<T> {
  T data;
  late Node<T> next;
  Node(this.data);
}

class Queue<T> {
  Node<T>? front;
  Node<T>? rear;
  void enqueue(T data) {
    Node<T> newNode = Node(data);
    if (rear == null) {
      front = rear = newNode;
    } else {
      rear!.next = newNode;
      rear = newNode;
    }
  }

  T? dequeue() {
    if (front == null) {
      print("It is empty");
      return null;
    } else {
      T dlt = front!.data;
      if (front == rear) {
        front = rear = null;
      } else {
        front = front!.next;
      }
      return dlt;
    }
  }

  display() {
    Node<T>? current = front;

    while (current != null) {
      print(current.data);
      current = current.next;
    }
  }
}
