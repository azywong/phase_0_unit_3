// U3.W8-9: Challenge you're converting: U2.W5: Build a simple guessing game


// I worked on this challenge [by myself, with: Allison Wong & Hunter Chpaman].

// 2. Pseudocode
// create a quessing game with 2 functions
// one to check if the game has been solved
// one to handle the actual solving of the game
// symbols will be subed in as strings

// VARIABLES
// var solved = false
// var secret_num = 10


// FUNCTION guess
// guess which takes a single int as an input
// IF LOOP
//  less than input return :LOW
//  greater than input return :HIGH
//  equal to retur :CORRECT && set solved to true
// END IF LOOP
// END FUNCTION

// FUNCTION solved?
// solved? takes no arguements
// returns the value of var solved
// END FUNCTION



// 3. Initial Solution
// var solved = false;
// var secret_number = 10;

// var guess = function(int) {
//     if (int < secret_number){
//         return "low";     
//     }
//     else if (int > secret_number) {
//         return "high";
//     }
//     else if (int === secret_number) {
//         solved = true;
//         return "correct";
//     }
// };

// var is_solved = function(){
//     return solved;
// };



// 4. Refactored Solution
var solved = false;
var secret_number = 0;

var set_number = function(int) {
  secret_number = int;
};

var guess = function(int) {
    if (int < secret_number){
        return "low";     
    }
    else if (int > secret_number) {
        return "high";
    }
    else if (int === secret_number) {
        solved = true;
        return "correct";
    }
};

var is_solved = function(){
    return solved;
};





// 1. DRIVER TESTS/ASSERT STATEMENTS GO BELOW THIS LINE
console.log(secret_number === 0);
set_number(10)
console.log(secret_number === 10);
console.log(guess(11) === "high");
console.log(guess(9) === "low");
console.log(is_solved() === false);
console.log(guess(10) === "correct");
console.log(is_solved() === true);




// 5. Reflection 
/*
What parts of your strategy worked? What problems did you face?
We talked out the pseudocoding together and switched between driving and navigating to come to the conclusion.

What questions did you have while coding? What resources did you find to help you answer them?
We thought that our solution had a scope problem and looked at some resources, but it was actually a problem with the order
http://stackoverflow.com/questions/500431/javascript-variable-scope

What concepts are you having trouble with, or did you just figure something out? If so, what?
Nothing really!

Did you learn any new skills or tricks?
Learned a bit more/refreshed myself on scope.

How confident are you with each of the Learning Competencies?
I think I'm alright with the Learning Competencies!

Which parts of the challenge did you enjoy?
I enjoyed pairing, sharing ideas and working together.  My partner was extremely patient and vocal, so it worked out well.

Which parts of the challenge did you find tedious?
None!

*/