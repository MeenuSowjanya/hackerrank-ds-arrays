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