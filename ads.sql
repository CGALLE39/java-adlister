USE adlister_db;

DROP TABLE IF EXISTS users;

CREATE TABLE users (
                       id INT UNSIGNED NOT NULL AUTO_INCREMENT,
                       user_id INT(100),
                        title VARCHAR(100),
                       description VARCHAR(200),
                       PRIMARY KEY (id)
);