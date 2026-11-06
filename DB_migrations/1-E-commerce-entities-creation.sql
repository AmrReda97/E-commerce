-- creating e-commerce db entities


Create TABLE "Category" (
  category_id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
  category_name varchar(100) NOT NULL
);

Create TABLE "Product" (
  product_id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
  category_id INT ,
  name VARCHAR(200) NOT NULL,
  description VARCHAR(300),
  price NUMERIC(10,2) NOT NULL,
  stock_quantity INT NOT NULL DEFAULT 0, 

  FOREIGN KEY (category_id)
    REFERENCES "Category"(category_id)
);


Create Table "Customer" (
  customer_id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
  first_name VARCHAR(100),
  last_name VARCHAR(100),
  email VARCHAR(255) NOT NULL UNIQUE,
  password VARCHAR(255)
);

Create TABLE "Order" (
  order_id INT GENERATED ALWAYS As IDENTITY PRIMARY KEY,
  customer_id INT,
  order_date TIMESTAMPTZ NOT NULL DEFAULT CURRENT_TIMESTAMP,
  total_amount NUMERIC(10,2) NOT NULL,
  
  FOREIGN KEY(customer_id)
    REFERENCES "Category"(category_id)
);


Create TABLE "Order_details" (
  order_details_id INT GENERATED ALWAYS As IDENTITY PRIMARY KEY,
  order_id INT,
  product_id INT,
  quantity INT NOT NULL , 
  unit_price NUMERIC(10,2) NOT NULL ,
  
  FOREIGN KEY(product_id)
    REFERENCES "Product"(product_id),
  FOREIGN KEY(order_id)
    REFERENCES "Order"(order_id)
);

