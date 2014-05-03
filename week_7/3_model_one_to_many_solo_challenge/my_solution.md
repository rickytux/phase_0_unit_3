# U3.W7: Modeling a Real-World Database (SOLO CHALLENGE)

## Release 0: Users Fields
In your user profile the includes:
-Twitter Handle
- Name
- User Photo
- Location
- User Website
- Short Bio


## Release 1: Tweet Fields
Tweet Includes:
-Twitter Handle
- Name
- Twitter text
- Time Created
- Possibly Location


## Release 2: Explain the relationship
The relationship between `users` and `tweets` is: 
The link between the two tables is the twitter handle.  It makes sense because both of user profile 
and the tweet should be filed under that handle.  The connection is a one to many due to the fact that
a twitter handle has many tweets

## Release 3: Schema Design
![alt text](https://github.com/rickytux/phase_0_unit_3/blob/master/images/twitterdesign.png "My Twitter schema")

## Release 4: SQL Statements
Tweets from certain user:
SELECT contents FROM tweets WHERE handle = 'specific user'

Tweets from certain user made after last Wednesday:
SELECT contents FROM tweets WHERE user_id ='specific user' AND created_at >='4/30/2014' 

Tweets from specific twitter handle:
SELECT contents FROM tweets WHERE handle = 'specific user'

Twitter handle associated with a specific tweet
SELECT handle FROM tweets WHERE contents = 'Tweet we are looking for'

## Release 5: Reflection
This exercise was interesting to see real world applications of the databases.  My main problem was that I thought 
that the userid and the twitter handle would be the same thing.  In this case that would make two of the SQL statements
identical.  The Tweets from specific handle and tweets from specific user.  This is what I ended up with because I thought
an additional username was superflous and was not required by twitter.  I think that the idea of that exercise was to 
use the JOIN function for the two tables and I kind of wanted to play around with that a little more. 