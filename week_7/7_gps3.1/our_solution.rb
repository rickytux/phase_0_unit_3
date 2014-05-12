# U3.W7: Build an Electronic Grocery List!
 
# Your full names:
# 1.Rick Dsida
# 2.Raghav Malik
 
# User Stories (As many as you want. Delete the statements you don't need)
# As a user, I want to an electronic grocery list that prints items that are associated with it
# As a user, I want to be able to add items
# As a user, I want to be able to remove items

 
# Pseudocode
# Create a class called grocery
# has an instance variable which is an array of grocery items
# intitialize class with empty array or previously listed items
# create methods to add and remove items
# 
# 
 
 
# Your fabulous code goes here....
# class Grocery
#   attr_accessor :list
#   def initialize
#     list = []
#   end
    
#   def add_item(item)
#     if check(item)
#       puts "That's already on the list"
#     else
#       list.push(item)
#     end
#   end
    
#   def remove(item)
#     if check(item)
#       list.delete(item) 
#     else
#       puts "That's not on the list"
#     end
#   end
    
#   def display
#     list.each { |item| puts item }
#   end
  
#   def check(item)
#     list.include?(item)
#   end
# end

class Grocery
  attr_accessor :list
  def initialize
      @list = {}
  end
  
  def add_item(item, qty = 5)
    list[item] = qty
  end
  
  def remove(item)
    list.delete(item)
  end
  
  def display
    list.each do |item,qty|
      puts item + ": " + qty.to_s
    end
  end
end
  

# DRIVER CODE GOES HERE. 
list = Grocery.new
list.add_item("milk", 1)
list.add_item("eggs",12)
list.display
list.remove("milk")
list.display
list.add_item("eggs")


# Reflection
# We tackled this problem in a couple of ways.  First we went with the simple array solution and then we switched gears and went with the 
# hash method where we could also include the quantity needed as the value in our hash.  