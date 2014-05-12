# U3.W8-9: 


# I worked on this challenge [by myself, with: ].

# 2. Pseudocode



# 3. Initial Solution

def super_fizzbuzz(array)
	array.map do |x|
		if x%15==0
			"FizzBuzz"
		elsif x%5==0
			"Buzz"
		elsif x%3==0
			"Fizz"
		else
			x
		end
	end
end

# 1. DRIVER TESTS/ASSERT STATEMENTS GO BELOW THIS LINE

test1 = [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15]
test2 = [3,5,6,9,10,12,15]

p super_fizzbuzz(test1) == [1,2,"Fizz",4,"Buzz","Fizz",7,8,"Fizz","Buzz",11,"Fizz",13,14,"FizzBuzz"]
p super_fizzbuzz(test2) == ["Fizz","Buzz","Fizz","Fizz","Buzz","Fizz","FizzBuzz"]



# 5. Reflection 

# This was a fairly basic problem that I had done before in the early part of prep so this was pretty
# easy.  While my solution now is a little more elegant while using the map method.  Also I could be wrong
# but I don't remember writing the driver code but I could be mistaken