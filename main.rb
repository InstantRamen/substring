my_dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit", "hell", "hello"]
string_to_use = "Hello, from below low, lowsy help hellp how do you do howdy"
 
def substring(dictionary, string)
  string_array = string.split(" ")
  substrings = { }
  puts string_array.to_s
  dictionary.each do |word_in_dictionary|
    string_array.each do |word_in_string|
      word_in_string = word_in_string.downcase.gsub(/[^a-z0-9\s]/i, '')
      sub = word_in_dictionary if word_in_string.match(/#{word_in_dictionary}/)
      if sub != nil
        if substrings[sub] == nil
          substrings[sub] = 1
        else
          substrings[sub] += 1
        end
      end
    end
  end
  return substrings
end

puts substring(my_dictionary, string_to_use)
