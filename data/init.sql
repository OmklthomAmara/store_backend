BEGIN;

DROP TABLE IF EXISTS owners, orders, products CASCADE;

CREATE TABLE owners (
  id SERIAL PRIMARY KEY,
  username VARCHAR(255) NOT NULL,
  email VARCHAR(255) NOT NULL,
  pass VARCHAR(255) NOT NULL
  
);

CREATE TABLE orders (
  id SERIAL PRIMARY KEY,
  username VARCHAR(255) NOT NULL,
  products_id TEXT,
  phone TEXT,
  location VARCHAR(255)
);

CREATE TABLE products (
  id SERIAL PRIMARY KEY,
  product_name TEXT NOT NULL,
  dsc TEXT,
  price TEXT,
  img TEXT
);

COMMIT;