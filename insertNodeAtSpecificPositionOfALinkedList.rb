def insertNodeAtPosition(givenlinkedlist, data, position)
    head = llist

    (position-1).times {
        givenlinkedlist = llist.next
    }

    new_node = SinglyLinkedListNode.new(data)

    next_node = givenlinkedlist.next
    givenlinkedlist.next = new_node
    new_node.next = next_node

    head
end