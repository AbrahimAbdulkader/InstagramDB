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
     