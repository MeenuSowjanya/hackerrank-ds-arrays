
def hourglassSum(arr)
    # Write your code here
    temp = []
    4.times do |i|
        4.times do |j|
             temp << arr[i][j] + arr[i][j+1] + arr[i][j+2] + arr[i+1][j+1] + arr[i+2][j] + arr[i+2][j+1] + arr[i+2][j+2]
        end
    end
    temp.max
end

params_array = [1,2,3,4,5,6]
puts hourglassSum([params_array, params_array, params_array, params_array, params_array,params_array])


