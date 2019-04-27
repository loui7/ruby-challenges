# Included Once
#
# Write a method that takes an array and a string. Return
# true if the string is found in the array only once.
# Otherwise return false.
#
# What's the time complexity of your solution? Can it be improved?
#
# *** Whiteboard this first ***
#
# Difficulty: 4/10
#
# Example:
# includedOnce(['hello','hi','hi'], 'hi') -> false
# includedOnce(['hello','hi','hey'], 'hi') -> true
#
# Check your solution by running the tests:
# ruby tests/14_included_once_test.rb
#

# rubocop:disable all


def included_once (haystack, needle)
  haystack.count {|hay| hay == needle} == 1
end

def included_once_2 (haystack, needle)
  puts "Needle: #{needle}"
  haystack.reduce(false) {|memo, hay|
    if hay == needle && memo == false
      true
    elsif hay != needle && memo == true
      true
    else
      false
    end
  }
end

# puts included_once(['hello','hi','hi'], 'hi')
# puts included_once(['hello','hi','hey'], 'hi')

# puts included_once_2(['hello','hi','hi'], 'hi')
# puts included_once_2(['hello','hi','hey'], 'hi')