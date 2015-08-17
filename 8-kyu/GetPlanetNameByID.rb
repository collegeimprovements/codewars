# The function is not returning the correct values. Can you figure out why?

# get_planet_name(3) # should return 'Earth'
# get_planet_name(3) # should return 'Earth'
=begin
def get_planet_name(id)
  # This doesn't work; Fix it!
  name =  switch id
    case 1: name = "Mercury"
    case 2: name = "Venus"
    case 3: name = "Earth"
    case 4: name = "Mars"
    case 5: name = "Jupiter"
    case 6: name = "Saturn"
    case 7: name = "Uranus"  
    case 8: name = "Neptune"
  end
  return name
end
=end

#my solution
def get_planet_name(id)
  name =  case id
    when 1 then name = "Mercury"
    when 2 then name = "Venus"
    when 3 then name = "Earth"
    when 4 then name = "Mars"
    when 5 then name = "Jupiter"
    when 6 then name = "Saturn"
    when 7 then name = "Uranus"  
    when 8 then name = "Neptune"
  end
  return name
end

get_planet_name(3)

#A better solution :: Interesting --> Let's don't complicate things :) 
#This one made me smile :)
def get_planet_name(id)
  %w[0 Mercury Venus Earth Mars Jupiter Saturn Uranus Neptune][id]
end

#Another similar one
def get_planet_name(id)
  %w{Mercury Venus Earth Mars Jupiter Saturn Uranus Neptune}[id - 1]
end


#And one more cool solution
PLANETS = { 1 => 'Mercury', 2 => 'Venus', 3 => 'Earth', 4 => 'Mars',
            5 => 'Jupiter', 6 => 'Saturn', 7 => 'Uranus', 8 => 'Neptune' }
            
def get_planet_name(id)
  PLANETS[id]
end