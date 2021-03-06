# You have to stop the infamous hackerman by writing a basic security program.

# Your task is to write a program which will ask the user for input twice.
# Both times should ask the user to type words and will display the FIRST input.

# However if any of the words in the second input match with a word from the
# first input it should say "HIDDEN" instead of the matched word.

# Example:
# first_input = bob rob dob mob dob dob
# second_input = kob fob dob

# output = bob rob HIDDEN mob

# Check your solution by running:
# ruby 14_hackerman.rb

# Your code here

def secure_mainframe
  print "Enter first input: "; first_input = gets.chomp.downcase
  print "Enter second input: "; second_input_arr = gets.chomp.downcase.split(' ')
  second_input_arr.each do |word|
    first_input.gsub!(/#{word}/, "HIDDEN")
  end
  return first_input
end

puts secure_mainframe

# Beast mode:
# Does your code deal with capital letters? Update your solution so that
# they will be downsized if they are input but HIDDEN remains capitalised.
