# Define a new instance method on the Array class called second, which returns the second item in an array (similar to the way .first and .last work in Ruby).

# If there is no element with index 1 in the array, return nil in Ruby, or undefined in Javascript.

# Ruby Example

# [3, 4, 5].second 
# # => 4 

# [].second 
# # => nil
# Javascript Example

# [1, 2, 3].second();
# // => 2

# [].second();
# // => undefined

#my solution
class Array
  def second
    self[1]
  end
end

#another solution
class Array
  def second
    self.at(1)
  end
end

#another good one
class Array
  def second
    self[1] rescue nil
  end
end

# a verobose bug good one
class Array
  def second
    if self.nil? || self.empty? || self.size == 1
      nil
    else
      self.shift(2).last 
    end
  end
end

# OMG I can use size method directly - completely forgot about that
class Array
  def second
    size > 1 ? self[1] : nil
  end
end

#simple and sober
class Array
  def second
    arr = self
    arr.length()<2 ? nil : arr[1]
  end
end

#how good?
class Array
  def second
    if self[1]
      return self[1]
    end
  end
end