# U3.W8-9: Implement a Rectangle Class


# I worked on this challenge by myself.

# 2. Pseudocode



# 3. Initial Solution
class Rectangle
  attr_accessor :width, :height

  def initialize(width, height)
    @width  = width
    @height = height
  end
  def area
  	width*height
  end
  def perimeter
  	2*width+2*height
  end
  def diagonal
  	Math.sqrt((width**2)+(height**2))
  end
  def square?
  	if width==height
  		true
  	else
  		false
  	end
  end

  def ==(other)
    (other.width  == self.width && other.height == self.height ) ||
    (other.height == self.width && other.width  == self.height )
  end
end


# 1. DRIVER TESTS GO BELOW THIS LINE
def assert
	raise "failed" unless yield
end

test1 = Rectangle.new(50,100)
test2 = Rectangle.new(10,10)
test3 = Rectangle.new(30,40)

assert{test1.area==5000}
assert{test2.area==100}
assert{test3.area==1200}

assert{test1.perimeter==300}
assert{test2.perimeter==40}
assert{test3.perimeter==140}

assert{test1.diagonal==Math.sqrt((50**2)+(100**2))}

assert{test1.square? == false}
assert{test2.square? == true}
assert{test3.square? == false}





# 5. Reflection 

# I enjoyed working with the rectangle class it was fairly simple the main issue I encountered was with 
# the driver code. For the diagonal driver code required a correct answer.  I ended up including an equation
# in the driver code so that i didn't have to deal with rounding or leaving off a decimal place