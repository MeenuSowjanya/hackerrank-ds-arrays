number_of_elements_in_the_linked_list = gets.chomp.to_i
given_linked_list_temporary = []
(number_of_elements_in_the_linked_list-1).times do
   given_linked_list_temporary << gets.chomp.to_i 
end
given_linked_list = given_linked_list_temporary
given_linked_list << gets.chomp.to_i
puts given_linked_list