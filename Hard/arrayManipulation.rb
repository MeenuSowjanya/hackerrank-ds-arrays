#Starting with a 1-indexed array of zeros and a list of operations, for each operation add a value to each the array element between two given indices, inclusive. Once all operations have been performed, return the maximum value in the array.
def arrayManipulation(size_of_queries_array, input_queries_array)
    # Write your code here
    array_hash = Hash.new(0)

input_queries_array.each do |query|
first_element_subtracted = query[0] - 1
second_element = query[1]
third_element = query[2]
array[first_element_subtracted] += third_element
array[second_element] -= third_element if array[second_element]
end

max_value = 0
array_hash.keys.sort.inject(0) do |i, j|
i += array_hash[j]
max_value = i if i > max_value
i
end
max_value
end