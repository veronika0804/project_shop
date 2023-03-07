CREATE SCHEMA shop

CREATE TABLE IF NOT EXISTS shop.Makers
(
  maker_id INTEGER PRIMARY KEY,
  maker     VARCHAR(255) NOT NULL UNIQUE,
  country   VARCHAR(255) NOT NULL
);

CREATE TABLE IF NOT EXISTS shop.Category_name
(
  category_id  INTEGER NOT NULL UNIQUE,
  category     VARCHAR(255) PRIMARY KEY
);


CREATE TABLE IF NOT EXISTS shop.Makers_dep_category
(
  string_id INTEGER PRIMARY KEY,
  maker_id  INTEGER NOT NULL REFERENCES shop.Makers (maker_id),
  category  VARCHAR(255) NOT NULL  REFERENCES shop.Category_name (category)
);

CREATE TABLE IF NOT EXISTS shop.Subcategory_name
(
  subcategory_id  INTEGER PRIMARY KEY,
  subcategory     VARCHAR(255)  NOT NULL UNIQUE,
  category_id INTEGER NOT NULL REFERENCES shop.Category_name (category_id)
);

CREATE TABLE IF NOT EXISTS shop.Products
(
  article_no INTEGER PRIMARY KEY,
  subcategory_id  INTEGER  NOT NULL REFERENCES shop.Subcategory_name (subcategory_id),
  product_name  VARCHAR(255) NOT NULL UNIQUE,
  cost INTEGER CHECK(cost>0),
  characteristic_desc VARCHAR(255)  NOT NULL,
  installments_per_month INTEGER CHECK (installments_per_month>0),
  maker VARCHAR(255) NOT NULL REFERENCES shop.Makers (maker),
  availability BIT NOT NULL
);

CREATE TABLE IF NOT EXISTS shop.Points
(
  point_of_issue_no INTEGER PRIMARY KEY,
  town     VARCHAR(20) NOT NULL,
  adress   VARCHAR(255) NOT NULL
);

CREATE TABLE IF NOT EXISTS shop.Customers
(
  customer_id INTEGER PRIMARY KEY,
  name  VARCHAR(255) NOT NULL,
  point_of_issue_no INTEGER NOT NULL REFERENCES shop.Points (point_of_issue_no)         
);


CREATE TABLE IF NOT EXISTS shop.Orders
(
  order_no  INTEGER PRIMARY KEY,
  customer_id INTEGER NOT NULL REFERENCES shop.Customers (customer_id),
  date_d DATE NOT NULL,
  products_name  VARCHAR(255) NOT NULL,
  sum_amt INTEGER CHECK (sum_amt > 0)
);










