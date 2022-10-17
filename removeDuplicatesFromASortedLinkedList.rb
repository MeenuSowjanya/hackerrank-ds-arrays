def removeDuplicates(head)
    # Write your code here
    return head if !head.next

    new_linked_list = SinglyLinkedListNode.new(head.data)
    new_head = new_linked_list
    while(not head.nil?)
        if new_linked_list.data != head.data
            new_linked_list.next = SinglyLinkedListNode.new(head.data)
            new_linked_list = new_linked_list.next
        end
        head = head.next
    end

    new_head
end