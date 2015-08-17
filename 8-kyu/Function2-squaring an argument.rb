# Now you have to write a function called square that takes an argument and returns the square of it.
#my solution
def square n
  n**2
end

#other solution	
def square a
  raise ArgumentError 'argument is not numeric' unless a.is_a? Numeric
  a*a
end