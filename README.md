# InstagramDB

1st Commit - Created a users table with the following attributes

1. An id that uniquely identifies a user
2. a username
3. TIMESTAMP which returns the exact time a user was created


----------------------------------

2nd Commit - Created a photos table with the following attributes

1. An id which uniquely identifies a photo
2. An image url
3. User id
4. TIMESTAMP
5. Foreign Key of user_id which is referencing the id in the users table


------------------------------------


3rd Commit - Created a comments table with the following attributes

1. id that uniquely identifies a comment
2. comment_text that stores a string
3. user_id
4. photo_id
5. timestamp
6. 2 Foreign Keys(user_id) and (photo_id) that that reference the id in users table and id in the photos table

------------------------------------



4th Commit - Created a likes table with the following attributes 

1. USER ID 
2. photo ID
3. TIMESTAMP
4. Foreign Key referencing user(id)
5. Foreign Key referencing photo(id)
t

------------------------------------


5th Commit - Created a follows table with the following attributes 

1. Follower ID
2. Followee ID
3. TIMESTAMP
4. Foreign Key referencing users(id)
5. Foreign Key referencing users(id) 

------------------------------------


6th Commit - Created 2 Hashtags(tags and photo_tags) table with the following attributes 

1. ID 
2. Tagname 
3. TIMESTAMP


1. Photo_id
2. tag_id
3. Foreign Key referencing photos(id)
4. Foreign Key referencing tags(id_
5. Set photo_id and tag_id to Primary Keys


------------------------------------




7th & 8th Commit -- Solutions to solving real world examples

