# Create a function that takes an integer as an argument and returns "Even" or "Odd".

#mine
def even_or_odd(number)
	number.even? ? "Even" : "Odd"
end

#other solutions
def even_or_odd(number)
  (number % 2 == 0) ? "Even" : "Odd"
end

#another one
def even_or_odd(number)
  return "Even" if number % 2 == 0
  return "Odd"  if number % 2 != 0
end

#yet another one
def even_or_odd(number)
  raise ArgumentError, "Argument must be type Integer" if ! number.is_a?(Integer) 
  number % 2 == 0 ? "Even" : "Odd"
end