# Create a class Ghost

# Ghost objects are instantiated without any arguments.

# Ghost objects are given a random color attribute of white" or "yellow" or "purple" or "red" when instantiated

# ghost = Ghost.new
# ghost.color  #=> "white" or "yellow" or "purple" or "red"


#mine
#mistake : asked for instance method not class method self.color and
#class methods are defined as def self.color.....end  :: not just as self.color...end
class Ghost
  attr_accessor :color
  def color
     @color = ["white", "yellow", "purple", "red"].sample
  end
end

#other solutions : 1
class Ghost
  def color
    %w(white yellow purple red).sample
  end
end

#2
class Ghost
  COLORS = %w(white yellow purple red)
  attr_accessor :color
  
  def initialize
    @color = COLORS.sample
  end
end

#3
class Ghost
  attr_reader :color
  def initialize
    colors = ['white', 'yellow', 'purple', 'red']
    @color = colors[rand(4)]
  end
end

#4
class Ghost
  attr_reader :color
  
  def initialize
    @color = available_colors.sample
  end
  
  private
  
  def available_colors
    %w(white yellow purple red)
  end
end

#5

class Ghost
  attr_accessor :color
  
  def initialize
    @color = ['white', 'yellow', 'purple', 'red'].sample
  end
end

#6
class Ghost
  # your code goes here
  def initialize 
    @colors = %w(white yellow purple red)
  end
  def color
    return @colors.sample
  end   
end


#7
class Ghost
  def initialize()
    @color = ["white", "yellow", "purple", "red"].sample
  end
  def color
    @color
  end
end

#8
class Ghost
  @@color = {1 => "white", 2 => "yellow", 3 => "purple", 4 => "red"}
  attr_reader :color
  def initialize
    @color = @@color[rand(1..4)]
  end
  
end

#9
class Ghost
  def color 
    x = ["white", "yellow", "purple", "red"]
    x[rand(x.length)]
  end
end


#10
