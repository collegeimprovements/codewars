# You are trying to put a hash in ruby or an object in javascript into an array, but it always returns error, solve it and keep it as simple as possible!
#My Solution
items = Array.new
items.push ({:a => "b", :c => "d"}) #needs bracket since push is a method

#another solution
items = Array.new
items << {:a => "b", :c => "d"}

#other solu
items = []
hash = Hash.new
hash[:a] = "b"
hash[:c] = "d"
items.push hash

