#A left rotation operation on an array of size n shifts each of the array's elements 1 unit to the left. Given an integer, d , rotate the array that many steps left and return the result.
def rotateLeftGivenNumberOfTimes(number_of_left_rotations, input_array)
    # Write your code here 
    # input_array.rotate(number_of_left_rotations)
    (number_of_left_rotations).times do |each_rotation|
        leftRotation(input_array)
    end
    input_array
end
def leftRotation(input_array)
    first_element = input_array.reverse.pop
    input_array << first_element
end
puts rotateLeftGivenNumberOfTimes(1, [1,2,3,4,5])