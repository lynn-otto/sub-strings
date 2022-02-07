def check_number_of_occurences(string, substring)
  regex_substring = /(?=(#{Regexp.quote(substring)}))/
  number_of_occurences = string.scan(regex_substring).length
  return number_of_occurences
end

def check_number_of_occurences_case_insensitive(string,substring)
  string_downcase = string.downcase
  substring_downcase = substring.downcase
  return check_number_of_occurences(string_downcase, substring_downcase)
end

def substrings(string, substring_array)
  counting_table = substring_array.reduce(Hash.new(0)) do |counting, substring|
    occurences = check_number_of_occurences_case_insensitive(string,substring)
    if occurences > 0
      counting[substring] = occurences
    end
    counting
  end
  return counting_table
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
p substrings("Howdy partner, sit down! How's it going?", dictionary)