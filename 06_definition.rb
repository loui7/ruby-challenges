# Definition
#
# Extend the definition class to have three different methods:
# 1. add_word(word, definition), should store a word and definition
# 2. lookup(word), should return a definition
# 3. total_words, should return the total number of words
#
# Example:
# definition = Definition.new
# definition.add_word('ruby', 'A red, precious stone')
# definition.total_words -> should return 1
# definition.lookup('ruby') -> should return 'A red, precious stone'
#
# Check your solution by running the tests:
# ruby tests/06_definition_test.rb

class Definition
  def initialize
    @dictionary = []
  end

  def add_word(word, definition)
    @dictionary.push({
                       :word => word,
                       :definition => definition,
                     })
  end

  def lookup(query)
    return @dictionary.select { |word| word[:word] == query }[0][:definition]
  end

  def total_words
    return @dictionary.length
  end
end

definition = Definition.new
definition.add_word("ruby", "A red, precious stone")
p definition.lookup("ruby")
