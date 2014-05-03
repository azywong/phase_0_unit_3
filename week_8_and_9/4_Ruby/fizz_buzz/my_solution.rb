# U3.W8-9: 


# I worked on this challenge [by myself].

# 2. Pseudocode

=begin
iterate through the array
make empty array
	if i%15 == 0
		shovel FizzBuzz
	elsif i%5 == 0
		shovel Buzz
	elsif i%3 == 0	
		shovel Fizz
	else
		shovel i 
=end


# 3. Initial Solution

# def super_fizzbuzz(array)
# supered = []
# 	array.each do |x|
# 		if x % 15 == 0
# 			supered.push("FizzBuzz")
# 		elsif x % 5 == 0
# 			supered.push("Buzz")
# 		elsif x % 3 == 0
# 			supered.push("Fizz")
# 		else
# 			supered.push(x)
# 		end		
# 	end	
# 	return supered
# end



# 4. Refactored Solution

def super_fizzbuzz(array)
supered = []
	array.each do |x|
		if x % 15 == 0
			supered << "FizzBuzz"
		elsif x % 5 == 0
			supered << "Buzz"
		elsif x % 3 == 0
			supered << "Fizz"
		else
			supered << x
		end		
	end	
	return supered
end




# 1. DRIVER TESTS/ASSERT STATEMENTS GO BELOW THIS LINE


def assert
	raise "Assertion failed!" unless yield
end
assert { super_fizzbuzz([1,2,3])  == [1, 2, "Fizz"]}
assert { super_fizzbuzz([1,2,5])  == [1, 2, "Buzz"]}
assert { super_fizzbuzz([1,2,15]) == [1, 2, "FizzBuzz"]}
assert { super_fizzbuzz([30, 9, 20, 1]) == ["FizzBuzz", "Fizz", "Buzz", 1]}



# 5. Reflection 
=begin
What parts of your strategy worked? What problems did you face?
I basically thought the problem out and pseudocoded and then coded the solution.  At first I was trying to modify the original
array and that didn't work quite as I hoped, so I moved to creating a new super-ed array and that worked a lot more smoothly.
I didn't really face major problems outside that though.


What questions did you have while coding? What resources did you find to help you answer them?
I didn't really have any major questions while coding, but I referenced ruby docs a few times fora refresher on arrays.


What concepts are you having trouble with, or did you just figure something out? If so, what?
The logic of the problem (order of the if statements) wasn't bad, but the implementation tripped me up a bit.  I didn't have
too much trouble though.


Did you learn any new skills or tricks?
Not really, considering this week is review.


How confident are you with each of the Learning Competencies?
I think I'm alright with the learning competencies this time!


Which parts of the challenge did you enjoy?
I enjoyed thinking through the problem and getting the code to work


Which parts of the challenge did you find tedious?
None
=end