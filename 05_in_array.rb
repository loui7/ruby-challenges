# Methods

# Write a method called 'in_array' which will take
# two parameteres:
# One as a string and one as an array of strings

# Return a boolean indicationg whether or not the
# string is found in the array.

# Test your solution with:
# ruby tests/05_in_array_test.rb

# Example:
# "hello", ["hi","howdy","hello"] should return true.

def in_array(needle, haystack)
  haystack.each { |hay| return true if hay == needle }
  return false
end

def in_array_alt(needle, haystack)
  for hay in haystack
    return true if needle == hay
  end
  return false
end

def in_array_other_alt(needle, haystack)
  haystack.include?(needle)
end

puts in_array_alt("hello", ["hi", "howdy", "hello"])

# Beast Mode:

# Redo the challenge but try solving it again in a different way.
