# This function has to be called multiply and needs to take two numbers as arguments, and has to return the multiplication of the two arguments.

#my solution
def multiply a,b
	a * b
end

#other solutions
def multiply(a,b)
  raise ArgumentError, 'arguments must be a numbers' unless a.is_a?(Integer) and b.is_a?(Integer)
  a*b
end

# a simple versio of above code
def multiply(x, y)
  return x * y if x.is_a?(Numeric) && y.is_a?(Numeric)
  fail ArgumentError, 'Arguments must be a number'
end

#saw something like this first time
self.class.send(:define_method, :multiply) { |a,b| a*b }

