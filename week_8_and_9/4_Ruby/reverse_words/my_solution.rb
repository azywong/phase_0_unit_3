# U3.W8-9: Reverse Words


# I worked on this challenge [by myself].

# 2. Pseudocode
=begin
define method reverse_words
	takes string as input
	split string into array of strings
	reverse = empty array
	for each string in array, shovel reverse into reverse array
	join reverse array into a string
=end


# 3. Initial Solution
def reverse_words(string)
	input = string.split(" ")
	reversed = []
	input.each do |x|
		reversed << x.reverse
	end
	reversed.join(" ")
end


# 4. Refactored Solution

# I'm not sure if there is a better, more efficient way to do this as its already pretty compact.




# 1. DRIVER TESTS/ASSERT STATEMENTS GO BELOW THIS LINE
 p reverse_words("") == ""
 p reverse_words("allison") == "nosilla"
 p reverse_words("allison is a human") == "nosilla si a namuh"




# 5. Reflection 
=begin
What parts of your strategy worked? What problems did you face?
	I psuedo coded and then translated that into code.  The major problem I had was that on line 33 I switched input and reversed,
	creating an endless loop.  I didn't notice before I tested it and when my computer started slowing down when I tested it, I thought
	I broke something!  I'm glad I caught the error, terminated that process and was able to test correctly.

What questions did you have while coding? What resources did you find to help you answer them?
	I didn't really have any questions this time!  Used things that we've went over before.

What concepts are you having trouble with, or did you just figure something out? If so, what?
	I learned first hand the danger of setting up infinite loops.

Did you learn any new skills or tricks?
	Not really!

How confident are you with each of the Learning Competencies?
	Despite my silly mistake, I feel fairly confident with the learning competencies!

Which parts of the challenge did you enjoy?
	Finally getting the code to work!

Which parts of the challenge did you find tedious?
	Nothing really.
=end