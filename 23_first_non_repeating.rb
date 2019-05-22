# Find the first non-repeated character
# Difficulty: medium

# String methods are an incredibly powerful way to 
# validate and control user input.

# Write a method that will find the first non-repeated 
# character in a String. 
# Return false if only repeats are found. 

# *Try writing this by hand first*. 
# Confusing methods like this can become a lot more simple after 
# they are written by hand. 


#*E.g.* first-non-repeat("aaaabbbcccdeeefgh") should return 'd'

#*E.g.* first-non-repeat("wwwhhhggge") should return 'e'

#*E.g.* first-non-repeat("wwwhhhggg") should return false


## Optional
# If given a long string, this would take a fair chunk of computing power, 
# as it would have to go over every character. Can you return on the first 
# non-repeat, without checking every other letter?

def first_non_repeating(input)
    non_repeating_char = input.split("").uniq.select{|char| input.count(char) == 1}[0]
    return non_repeating_char ? non_repeating_char : false
end

# Test your code here
p first_non_repeating("aaaabbbcccdeeefgh")
p first_non_repeating("wwwhhhggge")
p first_non_repeating("wwwhhhggg")