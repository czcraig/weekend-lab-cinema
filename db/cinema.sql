DROP TABLE tickets;
DROP TABLE customers;
DROP TABLE films;


 CREATE TABLE films (

  id SERIAL4 PRIMARY KEY,
  title VARCHAR(255),
  price SERIAL4
);

CREATE TABLE customers (
  id SERIAL4 PRIMARY KEY,
  name VARCHAR(255),
  funds SERIAL4
);

CREATE TABLE tickets (
  id SERIAL4 PRIMARY KEY,
  user_id INT4 REFERENCES customers(id) ON DELETE CASCADE,
  film_id INT4 REFERENCES films(id) ON DELETE CASCADE
);
