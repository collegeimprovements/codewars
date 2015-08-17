# Given 2 strings, a and b, return a string of the form short+long+short, with the shorter string on the outside and the longer string on the inside. The strings will not be the same length, but they may be empty (length0).

# For example:

# solution("1", "22") # returns "1221"
# solution("22", "1") # returns "1221"


#my solution
def solution(a, b)
  a.length > b.length ? "#{b}#{a}#{b}" : "#{a}#{b}#{a}"
end

solution("1", "22")
solution("22", "1")

#other solution
def solution(a, b)
  a.length < b. length ? a + b + a : b + a + b 
end

#the odd one
def solution(a, b)
  a, b = b, a if a.length < b.length
  return b + a + b
end

#the clever one
def solution(a, b)
  order = [a,b].sort
  "#{order.first}#{order.last}#{order.first}"
end