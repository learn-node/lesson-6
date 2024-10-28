CREATE TABLE users
(
    id    SERIAL PRIMARY KEY,
    name  VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL
);

CREATE TABLE orders
(
    id       SERIAL PRIMARY KEY,
    user_id  INT,
    amount   DEC(10, 2) NOT NULL,
    products INT[] NOT NULL,
    FOREIGN KEY (user_id) REFERENCES users (id) ON DELETE CASCADE
);



INSERT INTO users(id, name, email)
VALUES (1, 'John Doe 1', 'JohnDoe-1@mail.com');

INSERT INTO users(id, name, email)
VALUES (2, 'John Doe 2', 'JohnDoe-2@mail.com');

SELECT *
FROM users;

INSERT INTO orders(user_id, amount, products)
VALUES (1, 375.36, '{1, 2}');

INSERT INTO orders(user_id, amount, products)
VALUES (2, 475.36, '{2, 4, 1}');

SELECT *
FROM orders;

DELETE
FROM users
WHERE id = 1;

SELECT *
FROM orders;