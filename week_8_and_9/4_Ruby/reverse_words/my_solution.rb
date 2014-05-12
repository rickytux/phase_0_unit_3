# U3.W8-9: Reverse Words


# I worked on this challenge by myself.

# 2. Pseudocode




# 4. Refactored Solution

def reverse(words)
	new = words.split.map {|word| word.reverse}
	new.join(' ')
end




# 1. DRIVER TESTS/ASSERT STATEMENTS GO BELOW THIS LINE

p reverse("This is reversed") == "sihT si desrever"
p reverse("I'm a leaf on the wind") == "m'I a fael no eht dniw"
p reverse("Let's go Hawks") == "s'teL og skwaH"



# 5. Reflection 

# This was a very quick exercise I was able to complete fairly quickly. I didnt have to refactor the code because my first 
# solution was pretty clear and concise