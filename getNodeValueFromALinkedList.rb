def getNode(head, positionFromTail)
    list_of_nodes = [] 
    while(head.next)
        list_of_nodes << head.data
        head = head.next
    end
    (list_of_nodes.size < 1 or positionFromTail == 0) ? head.data : list_of_nodes[-positionFromTail]
    
end