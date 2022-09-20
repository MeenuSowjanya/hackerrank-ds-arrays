#Dynamic Array : In this problem, we have to work on two types of query. The solution of Dynamic Array lies in understanding the Queries.

# Query: 1 x y
# Find the sequence, seq, at index  ( ( x  ⊕  lastAns )  %  N )  in seqList.
# Append integer y to sequence seq.
# Query: 2 x y
# Find the sequence, seq, at index ( ( x  ⊕  lastAns )  %  N )  in seqList.
# Find the value of the element  ( y % size ) in seq (where size is the size of seq) and assign it to lastAns.
# Print the new value of lastAns on a new line
# Note: ⊕ is the bitwise XOR operation, which corresponds to the ^ operator in most languages.

def dynamicArray(n, queries_array)
    # Write your code here
    array_of_arrays = Array.new(n.to_i){[]}

# assign lastAns
lastAns = 0

# for each query...
queries_array.length.times do
    

    # get the index value of the subarray per the described formula
    array_index = (x.to_i ^ lastAns) % n.to_i
    
    # get that arr
    array = array_of_arrays[array_index]
    
    # add the y value to arr, if the q_type is 1
    array.push(y.to_i) if query_type == "1"
    
    # if q_type is 2...
    if query_type == "2"
        # assign index value per described forumula
        idx = y.to_i % arr.length
        # reassign lastAns
        lastAns = arr[idx]
        #puts lastAns
        puts lastAns
    end
end
end
