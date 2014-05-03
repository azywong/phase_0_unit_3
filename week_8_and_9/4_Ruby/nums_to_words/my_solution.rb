# U3.W8-9: Numbers to English Words


# I worked on this challenge [by myself].

# 2. Pseudocode
=begin
define method in_words that takes a number as input
	array of 0-19 in words
	words = empty array
		if num < 20
			shovel array[index] into words
		elsif num < 30
			shovel twenty into words
			shovel array[last digit] into words
		goes until 100

	join words with space between
=end


# 3. Initial Solution

def in_words(num)
	number = num.to_s
	array = ["zero", "one", "two", "three", "four", "five", "six", "seven", "eight", "nine", "ten", "eleven", "twelve", "thirteen", "fourteen", "fifteen", "sixteen", "seventeen", "eighteen", "nineteen"]
	words = []

		if num < 20
			words << array[num]

		elsif num < 30
			words << "twenty"
			words << array[number[-1].to_i]

		elsif num < 40
			words << "thirty"
			words << array[number[-1].to_i]

		elsif num < 50
			words << "forty"
			words << array[number[-1].to_i]

		elsif num < 60
			words << "fifty"
			words << array[number[-1].to_i]

		elsif num < 70
			words << "sixty"
			words << array[number[-1].to_i]
		
		elsif num < 80
			words << "seventy"
			words << array[number[-1].to_i]
		
		elsif num < 90
			words << "eighty"
			words << array[number[-1].to_i]

		elsif num < 100
			words << "ninety"
			words << array[number[-1].to_i]
		end
	return words.join(' ')	
end


# 4. Refactored Solution

def in_words(num)
	number = num.to_s
	array = ["zero", "one", "two", "three", "four", "five", "six", "seven", "eight", "nine", "ten", "eleven", "twelve", "thirteen", "fourteen", "fifteen", "sixteen", "seventeen", "eighteen", "nineteen"]
	words = []

		if num < 20
			words << array[num]
			
		elsif num < 30
			words << "twenty"
			words << array[number[-1].to_i]

		elsif num < 40
			words << "thirty"
			words << array[number[-1].to_i]

		elsif num < 50
			words << "forty"
			words << array[number[-1].to_i]

		elsif num < 60
			words << "fifty"
			words << array[number[-1].to_i]

		elsif num < 70
			words << "sixty"
			words << array[number[-1].to_i]
		
		elsif num < 80
			words << "seventy"
			words << array[number[-1].to_i]
		
		elsif num < 90
			words << "eighty"
			words << array[number[-1].to_i]

		else
			words << "ninety"
			words << array[number[-1].to_i]
		end
	return words.join(' ')	
end




# 1. DRIVER TESTS/ASSERT STATEMENTS GO BELOW THIS LINE

def assert
	raise "Assertion failed!" unless yield
end
assert { in_words(4) == "four" }
assert { in_words(27) =="twenty seven" }
assert { in_words(92) == "ninety two" }




# 5. Reflection 
=begin

What parts of your strategy worked? What problems did you face?
I went through and read the directions, pseudocoded and then turned that into actual code.  I had to go back a few times
to fix things because I rushed through the pseudocoding step, but I didn't run into any major problems.

What questions did you have while coding? What resources did you find to help you answer them?
I didn't really have any questions that came up while coding.

What concepts are you having trouble with, or did you just figure something out? If so, what?
Not really!  Getting more comfortable with Ruby!

Did you learn any new skills or tricks?
No, most of this used things I already learned.

How confident are you with each of the Learning Competencies?
I think I'm fairly confident!

Which parts of the challenge did you enjoy?
I enjoyed thinking through how to most effectively code this, even if my code probably still could be improved.

Which parts of the challenge did you find tedious?
None!
=end