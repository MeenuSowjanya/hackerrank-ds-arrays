#A left rotation operation on an array of size n shifts each of the array's elements 1 unit to the left. Given an integer, d , rotate the array that many steps left and return the result.
def rotateLeft(d, arr)
    # Write your code here 
    # arr.rotate(d)
    for i in 0...d
        shift = arr.shift
        arr << shift
    end
    arr


end

puts rotateLeft(1, [1,2,3,4,5])