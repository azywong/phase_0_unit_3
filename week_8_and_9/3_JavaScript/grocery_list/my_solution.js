// U3.W8-9: 


// I worked on this challenge [by myself].

// 2. Pseudocode
/*
create class grocery list (in this case a function)
create empty array list
    
create add item method
    input is item
    push item into list
    
create delete item method
    input is item
    delete from list
        
create view list method
    no input
    use console log to print
    checked list
    unchecked list

create class grocery item (in this case a function)
    takes 2 inputs, item name and quantity

*/


// 3. Initial Solution

// function List() {}

// var list = [];

// List.prototype.addItem = function(item){
//     list.push(item);
// };

// List.prototype.deleteItem = function(item){
//     var dindex = list.indexOf(item);
//     if (dindex > -1) {
//         list.splice(dindex, 1);
//     }
// };

// List.prototype.viewList = function(){
//     console.log("GROCERY LIST");
//     for (var i = 0; i < list.length; i++){
//         console.log(list[i]);
//     }
// };

// function Item(item, quantity) { 
//     this.item = item;
//     this.quantity= quantity;
//     }

    
// 4. Refactored Solution

function List() {}

var list = [];

List.prototype.addItem = function(item){
    list.push(item);
};

List.prototype.deleteItem = function(item){
    var index = list.indexOf(item);
    if (index > -1) {
        list.splice(index, 1);
    }
};

List.prototype.viewList = function(){
    console.log("GROCERY LIST");
    for (var i = 0; i < list.length; i++){
        console.log(list[i]);
    }
};

function Item(item, quantity) { 
    this.item = item;
    this.quantity= quantity;
    }




// 1. DRIVER TESTS/ASSERT STATEMENTS GO BELOW THIS LINE
var apple = new Item("apple", 3);
var rice = new Item("rice", 1);
var beef = new Item("beef", 2);
var glist = new List();

glist.addItem(apple);
glist.addItem(rice);
glist.addItem(beef);
glist.deleteItem(beef);
glist.viewList();





// 5. Reflection 

// What parts of your strategy worked? What problems did you face?
// 	I pseudocoded, then when I was implementing the code I realized I wasn't totally sure how to do most of it in javascript.
// 	I also originally included more features then I really needed to which made it more complicated.

// What questions did you have while coding? What resources did you find to help you answer them?
// 	I had questions about object oriented javascript, and I referenced this source
// 	https://developer.mozilla.org/en-US/docs/Web/JavaScript/Introduction_to_Object-Oriented_JavaScript

// 	I also followed a previous suggestion from a classmate to use http://repl.it/ to test more easily.

// What concepts are you having trouble with, or did you just figure something out? If so, what?
// 	I'm having trouble with javascript because I feel like I have to stop and ook up a lot of my questions frequently.
// 	I'm still not confident about object oriented javascript.

// Did you learn any new skills or tricks?
// 	I read up a bit on object oriented javascript.  And while that isn't exactly new, I did learn a bit.

// How confident are you with each of the Learning Competencies?
// 	Not too confident.  I was about to ask for help from cohort mates because I was getting frustrated, and then I figured
// 	out that I was using the wrong syntax for something

// Which parts of the challenge did you enjoy?
// 	I enjoyed pseudocoding and breaking the challenge down into smaller steps

// Which parts of the challenge did you find tedious?
// 	Looking up javascript questions/syntax constantly.