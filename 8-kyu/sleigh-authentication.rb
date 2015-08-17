# Christmas is coming and many people dreamed of having a ride with Santa's sleigh. But, of course, only Santa himself is allowed to use this wonderful transportation. And in order to make sure, that only he can board the sleigh, there's an authentication mechanism.

# Your task is to implement the authenticate() method of the sleigh, which takes the name of the person, who wants to board the sleigh and a secret password. If, and only if, the name equals "Santa Claus" and the password is "Ho Ho Ho!" (yes, even Santa has a secret password with uppercase and lowercase letters and special characters :D), the return value must be true. Otherwise it should return false.

#my solution

class Sleigh
  def authenticate(name, password)
    if name=="Santa Claus" && password=="Ho Ho Ho!"
    	true
    else
    	false
    end
  end
end

#other solutions :: This one is best
class Sleigh
  def authenticate(name, password)
    name == "Santa Claus" && password == "Ho Ho Ho!"
  end
end


#this one is great for long term
class Sleigh
  VALID_USERS = {"Santa Claus" => "Ho Ho Ho!"}

  def authenticate(name, password)
    VALID_USERS[name] == password
  end
end


#this one uses ternary operator
class Sleigh
  def authenticate(uname,pass)
  uname == "Santa Claus" && pass =="Ho Ho Ho!" ? true : false
  end
end

#And only in ruby you can be this much cool
class Sleigh
  def authenticate(name, password)
    [name, password] == ['Santa Claus', 'Ho Ho Ho!']
  end
end