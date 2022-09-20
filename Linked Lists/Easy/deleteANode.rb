# Delete the node at a given position in a linked list and return a reference to the head node. The head is at position 0. The list may be empty after you delete the node. In that case, return a null value.

def deleteNode(linkedlist, position)
    # Write your code here
    return linkedlist.next if position == 0
    
    head = linkedlist
    (position-1).times {
        linkedlist = llist.next
    }

    linkedlist.next = linkedlist.next.next
    head
end