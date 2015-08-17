# Given an input n, write a function always that returns a function which returns n. Ruby should return a lambda or a proc.

# three = always(3)
# three.call # returns 3


#There are so many solutuons - just understand the concept
#1
def always(n=nil)
  Proc.new { n }
end

#2
def always(n=nil)
  lambda { n }
end

#3
def always(n=nil) 
  ->(){n}
end

#4
def always(n = nil)
  proc { n }
end

#5
def always *n
  lambda { n.first }
end

#6
def always(*n)
  -> () { n[0] }
end

#7
def always(n = nil)
  Proc.new {n == nil ? nil : n}
end

#8
def always(*n)
  if n[0]
    f = Proc.new { n[0] }
  else
    f = Proc.new { nil }
  end
end