# U3.W7: Modeling a Real-World Database (SOLO CHALLENGE)

## Release 0: Users Fields
Name, Location, Website, Bio


## Release 1: Tweet Fields
Just the "tweet" or message field


## Release 2: Explain the relationship
The relationship between `users` and `tweets` is: 
Its one to many.  One user can have many tweets, but each tweet is by one user only.


## Release 3: Schema Design
![image](https://raw.githubusercontent.com/azywong/phase_0_unit_3/master/week_7/imgs/3-01.png)


## Release 4: SQL Statements

all the tweets for a certain user id
```
SELECT tweet_text
FROM tweets
WHERE user_id = 000000

```


the tweets for a certain user id that were made after last Wednesday (whenever last Wednesday was for you)
```
SELECT tweet_text
FROM tweets
WHERE user_id = 000000
AND created_at > '04-17-2014'

```


all the tweets associated with a given user's twitter handle
```
SELECT tweet_text
FROM users
JOIN tweets
ON users.id = tweets.user_id
WHERE name = 'xxxxxx'

```


the twitter handle associated with a given tweet id
```
SELECT name
FROM users
JOIN tweets
ON users.id = tweets.user_id
WHERE tweet.id = '111111'

```


## Release 5: Reflection

### What parts of your strategy worked? What problems did you face?

I just went through my notes on SQL and databases for this week, and then followed the instructions.  I didn't really have any major issues with this solo challenge, but then again I might not have done it right.


### What questions did you have while coding? What resources did you find to help you answer them?

I didn't have any major questions that weren't answered by my notes.  I didn't use any outside resources.


### What concepts are you having trouble with, or did you just figure something out? If so, what?

I wasn't totally sure how to structure the databases for this exercise.  I just went with the simplest option, whether or not that was right.  It was the solution that made sense to me without too much duplicating


### Did you learn any new skills or tricks?

I didn't really learn anythign new persay, but I got to solidify concepts and put together what we went over in earlier challenges for this week!


### How confident are you with each of the Learning Competencies?

I think I'm alright with the learning competencies, but I could always use more practice!


### Which parts of the challenge did you enjoy?

I enjoyed putting together what we learned in challenge 1 and 2 in an exercise.


### Which parts of the challenge did you find tedious?

None!