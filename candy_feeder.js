USE candy_db;

CREATE TABLE albums (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    name VARCHAR(65),
    price_in_cents INT NOT NULL
    description VARCHAR(180),
    FOREIGN KEY (type_id) REFERENCES (id),
    PRIMARY KEY (id)
);