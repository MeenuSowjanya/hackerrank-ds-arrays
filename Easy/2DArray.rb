#There are 16  hourglasses in arr . An hourglass sum is the sum of an hourglass' values. Calculate the hourglass sum for every hourglass in , then print the maximum hourglass sum. The array will always be6 X 6.
def hourglassSum(hourglass_array)
    # Write your code here
    temporary_array = []
    # Row Loop
    4.times do |row|
        # Column Loop
        4.times do |column|
             temporary_array << calculate_sum_of_hourglassSet(hourglass_array,row,column)
        end
    end
    # Returns Maximum Hourglass Sum
    temporary_array.max
end

def calculate_sum_of_hourglassSet(hourglass_array,row,column)
    sum = hourglass_array[row][column] + hourglass_array[row][column+1] + hourglass_array[row][column+2] + hourglass_array[row+1][column+1] + hourglass_array[row+2][column] + hourglass_array[row+2][column+1] + hourglass_array[row+2][column+2]
end

hourglass_input_array_set = [1,2,3,4,5,6]
puts hourglassSum([hourglass_input_array_set, hourglass_input_array_set, hourglass_input_array_set, hourglass_input_array_set, hourglass_input_array_set,hourglass_input_array_set])


