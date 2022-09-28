#There are 16  hourglasses in arr . An hourglass sum is the sum of an hourglass' values. Calculate the hourglass sum for every hourglass in , then print the maximum hourglass sum. The array will always be6 X 6.
def hourglassSum(hourglass_array)
    result_array = []
    return traversing_through_the_input_array(hourglass_array, result_array).max
end

def traversing_through_the_input_array(hourglass_array, result_array)
    4.times do |count_of_each_row_of_a_hourglass_array|
        traversing_through_each_hourglass(count_of_each_row_of_a_hourglass_array, result_array)
    end
    result_array
end

def traversing_through_each_hourglass(count_of_each_row_of_a_hourglass_array, result_array)
    4.times do |count_of_each_column_of_a_hourglass_set|
        result_array << calculate_sum_of_hourglassSet(hourglass_array,count_of_each_row_of_a_hourglass_array,count_of_each_column_of_a_hourglass_set)
   end
end

def calculate_sum_of_hourglassSet(hourglass_array,row_count,column_count)
    sum = hourglass_array[row_count][column_count] + hourglass_array[row_count][column_count+1] + hourglass_array[row_count][column_count+2] + hourglass_array[row_count+1][column_count+1] + hourglass_array[row_count+2][column_count] + hourglass_array[row_count+2][column_count+1] + hourglass_array[row_count+2][column_count+2]
end

hourglass_input_array_set = [1,2,3,4,5,6]
puts hourglassSum([hourglass_input_array_set, hourglass_input_array_set, hourglass_input_array_set, hourglass_input_array_set, hourglass_input_array_set,hourglass_input_array_set])


