# CREATE DATABASE IF NOT EXISTS candy_db;
#
# USE candy_db;

# CREATE TABLE albums (
#                         id INT UNSIGNED NOT NULL AUTO_INCREMENT,
# name VARCHAR(65),
#                         price_in_cents INT NOT NULL,
#                             description VARCHAR(180),
#                         FOREIGN KEY (type_id) REFERENCES (id),
#     PRIMARY KEY (id)
# );

# CREATE TABLE IF NOT EXISTS types (
#                                      id INT UNSIGNED NOT NULL,
#                                      name VARCHAR(100) NOT NULL,
#                                      PRIMARY KEY (id),
#                                      description VARCHAR (180)
# );
#
# CREATE TABLE IF NOT EXISTS candies (
#                                        id INT UNSIGNED NOT NULL AUTO_INCREMENT,
#                                        description VARCHAR (180),
#                                        name VARCHAR(65),
#                                        price_in_cents INT NOT NULL,
#                                        types_id INT UNSIGNED DEFAULT NULL,
#                                        PRIMARY KEY (id),
#                                        FOREIGN KEY(types_id) REFERENCES types(id)
# );


# USERS
# id
# email VARCHAR(60)
# password VARCHAR(50)
# PRIMARY KEY id
#
# ADS
# id
# title
# description
# category
# FOREIGN KEY (user_id) REFERENCES users(id)
#
#
# AD-CATEGORY
# ads_id
# categories_id
#
# CATEGORIES
# id