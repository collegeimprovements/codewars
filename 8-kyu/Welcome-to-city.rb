
# Create a method say_hello that takes as input a name, city, and state to welcome a person. Note that name will be an array consisting of one or more values that should be joined together with one space betweeen each, and the length of the name array in test cases will vary.

# Example

# say_hello(['John', 'Smith'], 'Phoenix', 'Arizona')
# This example will return the string Hello, John Smith! Welcome to Phoenix, Arizona!
#my solution
def say_hello(name, city, state)
 "Hello, #{name.join(" ")}! Welcome to #{city}, #{state}!"
end

#other solutions
def say_hello(name, city, state)
  "Hello, %s! Welcome to %s, %s!" % [name.join(" "), city, state]
end

#another one
def say_hello(name, city, state)
  separator = " "
  "Hello, #{name.join(separator)}! Welcome to #{city}, #{state}!"
end

#another one
def say_hello(name, city, state)
  new_name = name.join(' ')
  "Hello, #{new_name}! Welcome to #{city}, #{state}!"
end