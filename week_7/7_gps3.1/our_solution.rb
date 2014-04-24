# U3.W7: Build an Electronic Grocery List!
 
# Your full names:
# 1. C.J. Jameson
# 2. Allison Wong
 
# User Stories (As many as you want. Delete the statements you don't need)
# As a user, I want to add items to my list
# As a user, I want to delete items from my list
# As a user, I want to view delete items or "check them off"
# As a user, I want to view the entire list
# As a user, I want to manage quantities of the items I want
 
# Pseudocode
# Grocery List class
#    initialize checked holder and unchecked holder
#   
#
#   Grocery Items
#   initialize class
#       name of item
#       quantity
# 
#   method: adding item
#       reference item and put in unchecked holder
#       ask for quantity
#       check if item already exists, if so add new quantity to exisiting quantity

#   method: delete item
#       check if item exists (if not, raise error)
#       otherwise, pull out of unchecked holder

#   method: check
#       input: item
#       access item in unchecked and move to checked

#   method: uncheck
#       input: item
#       access item in checked and move to unchecked

#   method: view entire list
#       iterate through each holder
#       and print unchecked, then checked

 
# Your fabulous code goes here....

class Grocery_list
    def initialize
        @unchecked_list = []
        @checked_list = []
    end
    
    def add_item(grocery_item)
        index_of_duplicate = nil #used for the upcoming logic chain
        @unchecked_list.each_with_index { |item, index|
            if item.item_name == grocery_item.item_name
                index_of_duplicate = index
            end
        }
        if index_of_duplicate.nil?
            @unchecked_list.push(grocery_item) 
        else
            @unchecked_list[index_of_duplicate].quantity += grocery_item.quantity
        end
    end
    
    def delete_item(grocery_item)
        @unchecked_list.delete(grocery_item)
        @checked_list.delete(grocery_item)
    end
    
    def check(grocery_item)
        if @unchecked_list.index(grocery_item).nil?
            puts "Nothing to check off!"
        else
            @unchecked_list.delete(grocery_item)
            @checked_list.push(grocery_item)
        end
    end
    
    def uncheck(grocery_item)
        if @checked_list.index(grocery_item).nil?
            puts "Nothing to uncheck!"
        else
            @checked_list.delete(grocery_item)
            @unchecked_list.push(grocery_item)
        end
    end
    
    def view_list
        #go through unchecked list
        if @unchecked_list.length > 0
            puts "Here are the things you still need to get"
            @unchecked_list.each { |item| 
                puts "- #{item.quantity} #{item.item_name}"
            }
        end
        
        #go through the checked list
        if @checked_list.length > 0
            puts "Here are things you've crossed off your list"
            @checked_list.each { |item| 
                puts "- #{item.quantity} #{item.item_name}"
            }        
        end
    end
    
end

class Grocery_item
   attr_reader :item_name, :quantity
   attr_writer :quantity
   
    def initialize(item_name, quantity)
        @item_name = item_name
        @quantity = quantity
    end
    
end


# DRIVER CODE GOES HERE. 
apple = Grocery_item.new("apple", 3)
bacon = Grocery_item.new("bacon", 1)
steak = Grocery_item.new("steak", 4)
steak2 = Grocery_item.new("steak", 5)
dinner = Grocery_list.new
dinner.add_item(steak)
dinner.add_item(bacon)
dinner.add_item(steak)
dinner.add_item(steak2)
dinner.add_item(apple)
dinner.delete_item(apple)
dinner.check(bacon)
dinner.view_list
dinner.uncheck(bacon)
dinner.view_list


# REFLECTION
=begin
What parts of your strategy worked? What problems did you face?
Talking out our thought processes and logic really helped, even if the thoughts weren't fully fleshed out yet.
It was good to bounce ideas and think about how to structure the code.  The main problem we faced was getting
too into the details to start with, or one piece of the problem and losing sight of the big picture.

What questions did you have while coding? What resources did you find to help you answer them?
We frequently accessed ruby docs for syntax.

What concepts are you having trouble with, or did you just figure something out? If so, what?
I was having a bit of trouble remembering all the different syntax we could use, but ruby docs was really helpful.
Our instructor showed us how to use attr_reader and attr_writer, which helped us move forward!

Did you learn any new skills or tricks?
attr_reader and attr_writer and that you can use not just |item| but also |item, index| when iterating over an
array.

How confident are you with each of the Learning Competencies?
I think I'm alright with the learning competencies.  Sometimes I need to look things up or talk through the 
logic, but in general I think I have an understanding of the main ideas.

Which parts of the challenge did you enjoy?
I enjoyed working through the challenge and using teamwork to get over obstacles.

Which parts of the challenge did you find tedious?
None!
=end