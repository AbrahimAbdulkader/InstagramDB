CREATE TABLE users (

	id INT AUTO_INCREMENT PRIMARY KEY,
	username VARCHAR(255) UNIQUE NOT NULL, 
	created_at TIMESTAMP DEFAULT NOW()
);


CREATE TABLE photos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    image_url VARCHAR(255) NOT NULL,
    user_id INT NOT NULL,
    created_at TIMESTAMP DEFAULT NOW(), 
    FOREIGN KEY(user_id) REFERENCES users(id)
); 

CREATE TABLE comments (

    id INT AUTO_INCREMENT PRIMARY KEY,
    comment_text VARCHAR(255) NOT NULL,
    user_id INT NOT NULL, #We don't want user_id to be an orphan so we need it to be related to some user
    photo_id INT NOT NULL, #Same rule applies, we need to associate a comment with a parent photo
    created_at TIMESTAMP DEFAULT NOW(),
    FOREIGN KEY(user_id) REFERENCES users(id), #user_id links to the id in the users table
    FOREIGN KEY(photo_id) REFERENCES photos(id) #photo_id links to the id in the comments table 
); 

          
        