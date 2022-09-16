#A left rotation operation on an array of size n shifts each of the array's elements 1 unit to the left. Given an integer, d , rotate the array that many steps left and return the result.
def rotateLeft(number_of_left_rotations, input_array)
    # Write your code here 
    # arr.rotate(d)
    for i in 0...number_of_left_rotations
        shifting_element = input_array.shift
        input_array << shifting_element
    end
    input_array
end

puts rotateLeft(1, [1,2,3,4,5])