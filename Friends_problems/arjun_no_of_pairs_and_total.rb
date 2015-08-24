#find number of pairs of each character and total no of pairs
#if character count is 5 then there are 2 pairs, if 1 then 0 pairs and so on...!

class String
	def pair c
		(self.count("#{c}") / 2).to_i
	end
end

s = "hi my name is arjun".downcase #we can use gets.chomp here
a = "ru i".downcase.split(//) #this is a cool trick to convert string into character array# #we can use gets.chomp here, too

a = a.reject {|e| e == " "} 

h = Hash[a.map {|x| [x, s.pair(x) ] }] #if pair would be simple method then it would look like pair(s,x)

h.values.reduce(:+)

