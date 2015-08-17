# Complete the bool_to_word (Javascript: boolToWord ) method.

# Given: a boolean value

# Return: a 'Yes' string for true and a 'No' string for false

#my solution
def bool_to_word bool
  bool ? "Yes" : "No"
end

#another solutions
def bool_to_word bool
  bool ? 'Yes' : 'No'
end

#other solutions

def bool_to_word bool
  return 'Yes' if bool else 'No'
end


#this is the most interesting one
class TrueClass
  def to_word
    'Yes'
  end
end

class FalseClass
  def to_word
    'No'
  end
end
  
def bool_to_word bool
  bool.to_word
end

#and this is interesting too
def bool_to_word bool
  {true => 'Yes', false => 'No'}[bool]
end

#as simple as it can get
def bool_to_word bool
  if (bool == true) 
    return 'Yes' 
  else (bool == false) 
    return 'No' 
  end
end