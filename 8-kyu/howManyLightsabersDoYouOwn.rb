# Inspired by the development team at Vooza, write the function howManyLightsabersDoYouOwn that

# accepts the name of a programmer, and
# returns the number of lightsabers owned by that person.
# The only person who owns lightsabers is Zach, by the way. He owns 18, which is an awesome number of lightsabers. Anyone else owns 0.

# No starting help here -- you'll need to know how to write a function that accepts a parameter and returns a value based on that parameter.


#my solution
#initial mistake :: forgot to provide default value in the parameter
def howManyLightsabersDoYouOwn(name="")
	if name == "Zach"
	 	 18
	 	else
	 		0
 	end
end

howManyLightsabersDoYouOwn "Zach"

#best solution
def howManyLightsabersDoYouOwn(name="")
  name == "Zach" ? 18 : 0
end

#another complex one - unnecessary
def howManyLightsabersDoYouOwn(*args)
  args.any? && args.first == 'Zach' ? 18 : 0
end

#this one is fine
def howManyLightsabersDoYouOwn (name='')
  if name.eql? 'Zach'
    18
  else
    0
  end
end