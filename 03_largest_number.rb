# Write a method that will take two numbers,
# and return whichever is the largest.
#
# Example:
# largest_number(100,50) should return 100
# largest_number(10,20) should return 20
#
# Check your solution by filling in the folowing table:
# number_1 || number_2 || expected || actual
#
# If your stuck try working togeather
#
# Beast Mode:
# If you complete the challenge, feel free to come up
# with your own examples and test corner cases.
#
# Examples - what if both numbers are equal or are strings?

def largest_number(number_1, number_2)
  if (number_1.is_a? Numeric) && (number_2.is_a? Numeric)
    return number_1 >= number_2 ? number_1 : number_2
  else
    return "One or both supplied values is not a numeric value, and is therefore unsuitable for comparison."
  end
end

#   number_1  || number_2 || expected  || actual
#     100     ||   50     ||    100    ||  100
#     10      ||   20     ||    20     ||  20
#     30      ||   30     ||    30     ||  30
#     "ok"    ||  "cool"  ||    error  || "ok"  ## Occurred because at this point the function only contained 'return number_1 >= number_2 ? number_1 : number_2'. Both values got coerced to 0 for the comparison so whichever value was supplied first is returned.

puts largest_number("ok", "cool")
