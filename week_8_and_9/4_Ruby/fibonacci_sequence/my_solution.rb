# U3.W8-9: 


# I worked on this challenge [by myself].

# 2. Pseudocode
=begin
note: for fibonacci number: to test if  5x^2 + 4 or 5x^2 -4 is perfect square

function takes number as input
	squared = num*num
	condition_a = 5*squared + 4
	condition_b = 5*squared - 4
	
	if square root of condition a is a perfect square
		return true
	elsif square root of condition b is a perfect square
		return true
	else
		return false
=end

# 3. Initial Solution

def is_fibonacci?(num)
	squared = num * num
	condition_a = 5 * squared + 4
	condition_b = 5 * squared - 4

	if Math.sqrt(condition_a) == Math.sqrt(condition_a).to_i
		return true
	elsif Math.sqrt(condition_b) == Math.sqrt(condition_b).to_i
		return true
	else
		return false	
	end
end



# 4. Refactored Solution






# 1. DRIVER TESTS GO BELOW THIS LINE

def assert
	raise "Assertion failed!" unless yield
end
assert { is_fibonacci?(0) == true }
assert { is_fibonacci?(1) == true }
assert { is_fibonacci?(10946) == true }



# 5. Reflection 