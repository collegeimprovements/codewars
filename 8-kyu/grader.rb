# Create a function that takes a number as an argument and returns a grade based on that number.

# Score	Grade
# Anything greater than 1 or less than 0.6	'F'
# 0.9 or greater	"A"
# 0.8 or greater	"B"
# 0.7 or greater	"C"
# 0.6 or greater	"D"


#my solution
# tried with when and then but couldn't find a way so solved it with if-else 
def grader(score)
  if score > 1 || score < 0.6 
    "F"
  elsif score >= 0.9
    "A"
    
  elsif score >= 0.8
    "B"
  elsif score >= 0.7
    "C"
  else
    "D"
  end
end


#the one I want
def grader(score)
  case score
    when 0.6...0.7 then "D"
    when 0.7...0.8 then "C"
    when 0.8...0.9 then "B"
    when 0.9..1 then "A"
    else "F"
  end
end

##the one i could have thought of
def grader(score)
  return 'F' if score > 1 || score < 0.6
  return 'A' if score >= 0.9
  return 'B' if score >= 0.8
  return 'C' if score >= 0.7
  return 'D' if score >= 0.6
end

#mind-blown --> ternary is not just for single if-else
def grader(score)
  score > 1.0 ? 'F' : score >= 0.9 ? 'A' : score >= 0.8 ? 'B' : score >= 0.7 ? 'C' : score >= 0.6 ? 'D' : 'F'
end

#ranges... we have a nice helper method
def grader(score)
  return 'A' if score.between?(0.9, 1)
  return 'B' if score.between?(0.8, 0.9)
  return 'C' if score.between?(0.7, 0.8)
  return 'D' if score.between?(0.6, 0.7)
  return 'F'
end