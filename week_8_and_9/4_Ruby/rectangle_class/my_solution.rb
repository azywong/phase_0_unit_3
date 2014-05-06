# U3.W8-9: Implement a Rectangle Class


# I worked on this challenge [by myself].

# 2. Pseudocode
=begin
class Rectangle
	initialize
	area method
		area = width*height
	perimeter method
		perimeter = 2*(width + height)
	diagonal method
		widthsq 
		heightsq
		square root of widthsq + heightsq 
	square? method
		width = height?
=end

# 3. Initial Solution
# class Rectangle
#   attr_accessor :width, :height

#   def initialize(width, height)
#     @width  = width
#     @height = height
#   end

#   def ==(other)
#     (other.width  == self.width && other.height == self.height ) ||
#     (other.height == self.width && other.width  == self.height )
#   end

#   def area
#   	area = width * height
#   end

#   def perimeter
#   	perimeter = 2 * (width + height)
#   end

#   def diagonal
#   	widthsq = width ** 2
#   	heightsq = height ** 2
#   	diagonal = Math.sqrt(widthsq + heightsq)
#   end

#   def square?
#   	if width == height
#   		return true
#   	else
#   		return false
#   	end
#   end

# end




# 4. Refactored Solution

class Rectangle
  attr_accessor :width, :height

  def initialize(width, height)
    @width  = width
    @height = height
  end

  def ==(other)
    (other.width  == self.width && other.height == self.height ) ||
    (other.height == self.width && other.width  == self.height )
  end

  def area
  	area = width * height
  end

  def perimeter
  	perimeter = 2 * (width + height)
  end

  def diagonal
  	widthsq = width ** 2
  	heightsq = height ** 2
  	diagonal = Math.sqrt(widthsq + heightsq)
  end

  def square?
  	width == height ? true : false
  end

end




# 1. DRIVER TESTS GO BELOW THIS LINE
def assert
	raise "Assertion failed!" unless yield
end
rectangle = Rectangle.new(10, 20)
square = Rectangle.new(20, 20)

assert { rectangle.area == 200 }
assert { square.area == 400 }
assert { rectangle.perimeter == 60 }
assert { square.perimeter == 80 }
assert { rectangle.diagonal == 22.360679774997898 }
assert { square.diagonal == 28.284271247461902 }
assert { rectangle.square? == false }
assert { square.square? == true }



# 5. Reflection 

=begin
What parts of your strategy worked? What problems did you face?
I psuedocoded, then moved onto coding relatively quick.  Since I was tired to begin with I made a lot of small errors while coding
and had to figure out what went wrong/what I forgot to put several times.  Other than that I didn't have any major issues with the
logic of the exercise.

What questions did you have while coding? What resources did you find to help you answer them?
I didn't really have any major questions for this.  For the refactoring bit I looked through old exercises/notes.

What concepts are you having trouble with, or did you just figure something out? If so, what?
I'm not really having trouble with any concepts, but I will say that I was working on another exercise before this and the instructions
were extremely confusing to me, so I moved onto this one and it made so much more sense.  This exercise was pretty straightforward.

Did you learn any new skills or tricks?
I refreshed myself on shorter conditional statements.

How confident are you with each of the Learning Competencies?
Fairly confident!  Its pretty much review.

Which parts of the challenge did you enjoy?
It was short and relatively painless.

Which parts of the challenge did you find tedious?
I was frustrated with my own errors and having to find/correct syntax errors one by one.
=end