#Reverse an array of integers.
def reverseArray(a)
    # Write your code here
    # a.reverse()
    temp = a
    tmp = []
    for i in 0..(temp.length)
        pop = a.pop
        tmp << pop
    end
    a = tmp
    return a
end

puts reverseArray([1,3,6,9])