-- 1. Finding 5 oldest users 

SELECT * FROM users 
ORDER BY created_at 
LIMIT 5;


-- 2. Most Popular Registeration Date

SELECT 
    DAYNAME(created_at) AS day, -- Returns the weekday name for a given date 
    COUNT(*) as total 
FROM users
GROUP BY day
ORDER BY total DESC;


-- 3. Identify most inactive users(users with no photos)

     SELECT username, image_url
     FROM users
     LEFT JOIN photos
         ON users.id = photos.user_id
    WHERE photos.id IS NULL; 
    
    
    
    -- 4. Identify most popular photo(and user who created it) 
    
    SELECT photos.id, photos.image_url,
    COUNT(*) AS total
    FROM photos
    INNER JOIN likes 
         ON likes.photo_id = photos.id
    INNER JOIN users   
        ON photos.user_id = users.id 
    GROUP BY photos.id 
    ORDER BY total DESC
    LIMIT 1;
    
    
    
    -- 5. How many times does the average user post? 
    -- Calculate avg number of photos per user
    
    SELECT (SELECT COUNT(*) FROM photos) / (SELECT COUNT(*) FROM users) AS avg;
    
    
    -- 6. What are the top 5 most commonly used hashtags?
    
    SELECT 
        tags.tag_name, 
        COUNT(*) as total 
    FROM photo_tags 
    JOIN tags 
        ON photo_tags.tag_id = tags.id 
        GROUP BY tags.id 
        ORDER BY total DESC
        LIMIT 5;
        
        
        
        -- 7. Finding Bots - users who have liked every single photo_tags
    
    # SELECT 
    #     username, 
    #     COUNT(*) AS num_likes 
    # FROM users
    # INNER JOIN likes   
    #     ON users.id = likes.user_id
    # GROUP BY likes.user_id 
    # HAVING num_likes = (SELECT COUNT(*) FROM photos);
        
        
        
    
    
    
   
    
    
    
    
     