# U3.W8-9: What the Scope


# I worked on this challenge [by myself].

# 1. What are the problems in the error messages?
  # rb:48:in `block in do_stuff': undefined method `+' for nil:NilClass (NoMethodError)



# 2. Original Code

# $var_1 = 22
 
# class Person
#   @@var_2
#   VAR_6 = "Ruby"
 
#   attr_reader :var_3, :var_4
 
#   def initialize(var_5 = VAR_6)
#     @var_3="Law of Demeter"  
#   end
 
#   def do_stuff(var_7=[1,2,3])
#     var_7.each do |var_8|
#       var_9 += var_8 + 2
#     end
#   end
# end

# 3. Modified Code (with scope identified as comments)

$var_1 = 22                         #$var_1 is a global variable, which means its available everywhere
 
class Person
  @@var_2                           # @@var_2 is a class variable which means its scope is within the class its in (Person)
  VAR_6 = "Ruby"                    # VAR_6 is a local variable which means its scope is just within the class its in
 
  attr_reader :var_3, :var_4
 
  def initialize(var_5 = VAR_6)     # var_5 is the input of this method which means its scope is just within initialize
    @var_3="Law of Demeter"         # @var_3 is an instance variable which means its only available to an specific instance of a class
  end
 
  def do_stuff(var_7=[1,2,3])       # var_7 is the input of this method which means its scope is just within the method do_stuff
    var_9 = []                      # edited var_9 to an empty array.  var_9 is a local variable which means its scope is this method
    var_7.each do |var_8|           # var_8 is not a variable, but rather the placeholder for one in this loop.  It's scope is limited to this loop
      var_9 << var_8 += 2           #  changed "var_9 += var_8 + 2" because before it wasn't doing anything
    end
    return var_9                    # added this in because it was returning var_7 (the 'input')
  end
end



# 1. DRIVER TESTS/ASSERT STATEMENTS GO BELOW THIS LINE

newp = Person.new
p newp.do_stuff == [3, 4, 5]




# 5. Reflection 
=begin
What parts of your strategy worked? What problems did you face?
  I looked through the code step by step to figure out what it did.  My main problem was a lot of these variables weren't neccessary and 
  I wasn't completely sure what the code was supposed to do.  I made it 'work' to the best of my ability, but at the same time there is 
  still a lot of unnecessary stuff that I'm unsure if I should delete or not.

What questions did you have while coding? What resources did you find to help you answer them?
  I didn't really have any questions while coding, so I didn't have any resources I reference.

What concepts are you having trouble with, or did you just figure something out? If so, what?
  Not really having trouble with any concepts, but this was a nice review of the scope of variables.

Did you learn any new skills or tricks?
  Not really!  This was mainly review.

How confident are you with each of the Learning Competencies?
  Fairly confident!

Which parts of the challenge did you enjoy?
  I enjoyed the review of scopes of different variables.

Which parts of the challenge did you find tedious?
  None, it was relatively short.
=end