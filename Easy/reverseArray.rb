#Reverse an array of integers.
def reverseArray(array_to_reverse)
    # Write your code here
    # a.reverse()
    temporary_array = array_to_reverse
    reversed_array = []
    for i in 0..(temporary_array.length)
        popped_element = array_to_reverse.pop
        reversed_array << popped_element
    end
    array_to_reverse = reversed_array
    return array_to_reverse
end

puts reverseArray([1,3,6,9])