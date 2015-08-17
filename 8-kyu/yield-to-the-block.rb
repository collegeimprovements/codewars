# Complete the Compute method/function so that if a block is given it will run else it returns "Do not compute".

#my solution
def compute
  if block_given?
    yield
  else
    "Do not compute"
  end
end

compute{"Block"}
compute

#Other solutions
def compute
  block_given? ? yield : "Do not compute" 
end

#A clever one
def compute
  yield rescue "Do not compute"
end

#Another one
def compute( &block )
  if block_given?
    block.call
  else
    "Do not compute"
  end
end