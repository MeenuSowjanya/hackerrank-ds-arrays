def array_manipulation(number_of_elements_in_the_array, input_array_named_queries)
    relevant_indexes = [n]
    result_hash = Hash.new(0)
    input_array_named_queries.each do |query|
      relevant_indexes << query[0]
      relevant_indexes << (query[1] + 1)
      result_hash[query[0]] += query[2]
      result_hash[query[1] + 1] -= query[2]
    end
  
    maximum_value_in_result_hash_of_arrays = 0
    current_element_in_the_specific_index = 0

    # Method which gives a sorted array of unique elements
    relevant_indexes.sort.uniq.each do |index|
      current_element_in_the_specific_index += result_hash[index] if result_hash.key?(index)
      maximum_value_in_result_hash_of_arrays = [maximum_value_in_result_hash_of_arrays, current_element_in_the_specific_index].max
    end
  
    maximum_value_in_result_hash_of_arrays
  end