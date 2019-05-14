# Background
# Using array and string methods
# Passing in one argument

## Specs

# Your task is to make a function that can take any
# non-negative integer as a argument and return it
# with its digits in descending order.
# Essentially, rearrange the digits to create
# the highest possible number.

# Examples:
# Input: 21445 Output: 54421
# Input: 145263 Output: 654321
# Input: 1254859723 Output: 9875543221

def descending_order(n)
  n.to_s.split("").sort do |a, b|
    if n.positive?
      b <=> a
    else
      # Sorts for the negative number closest to 0.
      a <=> b
    end
  end.join("").to_i
end

# Test your code here
p descending_order(21_445)
p descending_order(1_254_859_723)

# Add some interesting test cases that test edge cases
p descending_order(-32_104)
