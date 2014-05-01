
/*
Psuedocode
1. create variable average = function syntax
2. input = array of numbers
    
    output = average
3. create variable gradebook = new object
4. make all students properties of gradebook
    make them all objects containing testScores
5. make a function addScore
    make that function property of gradebook
    takes arguements name and score
    loop through students
    if match is found, push score into corresponding scores array
6. create function getAverage
    make property of gradebook
    takes arguement name
    assign it property of a function that returns student's average

/*
U3.W8-9: Gradebook from Names and Scores

You will work with the following two variables.  The first, students, holds the names of four students.  
The second, scores, holds groups of test scores.  The relative positions of elements within the two 
variables match (i.e., 'Joseph' is the first element in students; his scores are the first value in scores.).

Do not alter the students and scores code.

I worked on this challenge [with: Andra Lally]

*/

var students = ["Joseph", "Susan", "William", "Elizabeth"]

var scores = [ [80, 70, 70, 100],
               [85, 80, 90, 90],
               [75, 70, 80, 75],
               [100, 90, 95, 85] ]

// __________________________________________
// Write your code below.

/*
var average = function(array) {
    sum = 0
    for (var i = 0; i < array.length; i++) {
        sum += array[i]; 
    };
    avg = sum/array.length;
    return avg;
};

var gradebook = {

    Joseph: {
        testScores: scores[0]
    },
    Susan: {
        testScores: scores[1]
    },
    William: {
        testScores: scores[2]
    },
    Elizabeth: {
        testScores: scores[3]
    },

    addScore: function(name, score) {
        for (var i = 0; i < students.length ; i++) {
            if (name === students[i])
            {
              scores[i].push(score);
            }
        }
    },
    getAverage: function(name) {
        for (var i = 0; i < students.length ; i++) {
            if (name === students[i])
            {
                return average(scores[i]);
            }
        }      
    }
};
*/

// __________________________________________
// Refactored Solution

var average = function(array) {
    sum = 0
    for (var i = 0; i < array.length; i++) {
        sum += array[i]; 
    };
   return sum/array.length;
};

var gradebook = {

    Joseph: {
        testScores: scores[0]
    },
    Susan: {
        testScores: scores[1]
    },
    William: {
        testScores: scores[2]
    },
    Elizabeth: {
        testScores: scores[3]
    },

    addScore: function(name, score) {
        for (var i = 0; i < students.length ; i++) {
            if (name === students[i])
            {
              scores[i].push(score);
            }
        }
    },
    getAverage: function(name) {
        for (var i = 0; i < students.length ; i++) {
            if (name === students[i])
            {
                return average(scores[i]);
            }
        }      
    }
};


// __________________________________________
// Reflect

/*
What parts of your strategy worked? What problems did you face?

We started out by pseudocoding, but ran into issues understanding what the instructions were asking for exactly since neither of us
was very strong with javascript.  Looking up syntax in from our notes/resources helped a lot, but progress was slow and involved lots
of searching.

What questions did you have while coding? What resources did you find to help you answer them?
I mainly referenced notes and the linked resource for syntax questions.  Most of my questions were just syntax related because I'm
not super familiar with javascript.

What concepts are you having trouble with, or did you just figure something out? If so, what?
I think I'm get the logic behind the code, but getting the correct format for javascript throws me off sometimes.  Earlier, our code
wasn't working because of a missing comma.  I think I need to be more careful with javascript because I'm not as used to it and its
easier to make mistakes.

Did you learn any new skills or tricks?
Not really, more or less went over implementing what we've learned before, maybe not necessarily in javascript though.  Got more practice
with javascript objects, which was good.

How confident are you with each of the Learning Competencies?
Not very confident.  I had to use a lot of references to get this challenge done and it took a while.

Which parts of the challenge did you enjoy?
When the code finally worked!

Which parts of the challenge did you find tedious?
Going back and forth between the assignment and googling because we didn't understand the wording of the assignment.

*/







// __________________________________________
// Driver Code:  Do not alter code below this line.

function assert(test, message, test_number) {
  if (!test) {
    console.log(test_number + "false");
    throw "ERROR: " + message;
  }
  console.log(test_number + "true");
  return true;
}

assert(
  (average instanceof Function),
  "The value of average should be a Function.\n",
  "1. "
)

assert(
  average([1, 2, 3]) === 2,
  "average should return the average of the elements in the array argument.\n",
  "2. "
)

assert(
  (gradebook instanceof Object),
  "The value of gradebook should be an Object.\n",
  "3. "
)

assert(
  (gradebook["Elizabeth"] instanceof Object),
  "gradebook's Elizabeth property should be an object.",
  "4. "
)

assert(
  (gradebook.William.testScores === scores[2]),
  "William's testScores should equal the third element in scores.",
  "5. "
)

assert(
  (gradebook.addScore instanceof Function),
  "The value of gradebook's addScore property should be a Function.",
  "6. "
)

gradebook.addScore("Susan", 80)

assert(
  (gradebook.Susan.testScores.length === 5
   && gradebook.Susan.testScores[4] === 80),
  "Susan's testScores should have a new score of 80 added to the end.",
  "7. "
)

assert(
  (gradebook.getAverage instanceof Function),
  "The value of gradebook's getAverage property should be a Function.",
  "8. "
)

assert(
  (gradebook.getAverage("Joseph") === 80),
  "gradebook's getAverage should return 80 if passed 'Jospeh'.",
  "9. "
)