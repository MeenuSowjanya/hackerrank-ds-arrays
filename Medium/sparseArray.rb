def matchingStrings(stringList, queries)
    # Write your code here
    strings_hash = {}

  stringList.each do |str|
    if strings_hash.key? str
      strings_hash[str] += 1
    else
      strings_hash[str] = 1
    end
  end

  queries_array = []

  queries.each do |query|
     queries_array << ((strings_hash.key? query) ? strings_hash[query] : 0) 
  end
  queries_array
end