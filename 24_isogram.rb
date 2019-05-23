# Isogram
# Difficulty: medium

# An isogram is a word that has no repeatting letters; 
# consecutive or non-consecutive.

# Implement a method that determines whether a string 
# that contains only letters is an isogram. 
# The function will take the string as input, and will 
# return either true or false.


# *E.g.* isogram?("hello") should return false

# *E.g.* isogram?("scary") should return true

def isogram?(input)
  input_arr = input.split("")
  input_arr.uniq.bsearch{|char| input_arr.count(char) > 1}.nil?
end

# Test your code here
puts isogram?("hello") #should return false
puts isogram?("scary") #should return true
