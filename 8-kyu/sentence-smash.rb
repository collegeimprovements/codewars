
# Sentence Smash

# Write a method smash that takes an array of words and smashes them together into a sentence and returns the sentence. You can ignore any need to sanitize words or add punctuation, but you should add spaces between each word. Be careful, there shouldn't be a space at the beginning or the end of the sentence!

# Example

# words = ['hello', 'world', 'this', 'is', 'great']
# smash(words) # returns "hello world this is great"
# Assumptions

# You can assume that you are only given words.
# You cannot assume the size of the array.
# You can assume that you do get an array.
# What We're Testing

# We're testing basic loops and string manipulation. This is for beginners who are just learning loops and string manipulation.

# Disclaimer

# This is for beginners so we want to test basic loops and string manipulation. Advanced users should easily be able to do this in one line.

#mine
# Smash Words
def smash(words)
  words.join(" ")
end

#1
def smash(words)
  return "" if words.empty?
  words.join(" ")
end

#2 : Excellent
def smash(words)
  sentence = ""
  words.each {|x| sentence += x + " " }
  sentence.chop
end

#3 same as above
def smash(words)
  sentence = ""
  words.each do |w|
  sentence = sentence + "#{w} "
  end
  sentence[0..-2]
end

#Can't beat this one 
def smash(words)
    return words * " "
end