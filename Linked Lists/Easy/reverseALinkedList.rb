# Given the pointer to the head node of a linked list, change the next pointers of the nodes so that their order is reversed. The head pointer given may be null meaning that the initial list is empty.

def reverse(head)
    return head unless head.next

    new_head = reverse(head.next)
    head.next.next = head
    head.next = nil  
    
    new_head
end