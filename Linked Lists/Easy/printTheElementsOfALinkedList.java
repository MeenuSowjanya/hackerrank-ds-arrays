//  This is an to practice traversing a linked list. Given a pointer to the head node of a linked list, print each node's data element, one per line. If the head pointer is null (indicating the list is empty), there is nothing to print.

// The Ruby language option was disavled. So solved this in JAVA.

static void printLinkedList(SinglyLinkedListNode head) {
    while(head!=null){
          System.out.println(head.data);
          head=head.next;
      }
  }