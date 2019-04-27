# Vowels

# Write a method that will take a string and
# return an array of vowels used in that string.

# Example:
# count_vowels("The quick brown fox") should return ["e","u","i","o","o"]
# count_vowels("Hello World") should return ["e","o","o"]

# Check your solution by running the tests:
# ruby tests/09_vowels_test.rb

def vowels(string)
  vowels = []
  string.split("").each do |letter|
    vowels.push(letter) if letter.downcase.match?(/^(a|e|i|o|u)$/)
  end
  return vowels
end
