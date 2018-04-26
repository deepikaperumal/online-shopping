CREATE TABLE category (
 id IDENTITY,
 name VARCHAR(50),
 description VARCHAR(255),
 image_url VARCHAR(50),
 is_active BOOLEAN,

 CONSTRAINT pk_category_id PRIMARY KEY(id)


);


CREATE TABLE user_detail(
  id IDENTITY,
  first_name VARCHAR(50),
  last_name VARCHAR(50),
  role VARCHAR(50),
  enabled BOOLEAN,
  password VARCHAR(60),
  email VARCHAR(50),
  contact_number VARCHAR(50),
  CONSTRAINT pk_user_id PRIMARY KEY(id),
);



CREATE TABLE product (
id IDENTITY,
code VARCHAR(20),
name VARCHAR(50),
brand VARCHAR(50),
description VARCHAR(255),
unit_price DECIMAL(10,2),
quantity INT,
is_active BOOLEAN,
category_id INT,
supplier_id INT,
purchases INT DEFAULT 0,
views INT DEFAULT 0,
CONSTRAINT pk_product_id PRIMARY KEY (id),
CONSTRAINT fk_product_category_id FOREIGN KEY (category_id) REFERENCES category (id),
CONSTRAINT fk_product_supplier_id FOREIGN KEY (supplier_id) REFERENCES user_detail(id),
);

-- the address table to store the user biling and shipping
CREATE TABLE address{
id IDENTITY,
user_id int,
address_line_one VARCHAR(100),
address_line_two VARCHAR(100),
city VARCHAR(20),
state VARCHAR(20),
country VARCHAR(20),
postal_code VARCHAR(10),
is_billing BOOLEAN,
is_shipping BOOLEAN,
CONSTRAINT fk_address_user_id FOREIGN KEY (user_id) REFERENCES user_detail(id),
CONSTRAINT pk_address_id PRIMARY KEY (id),
};
-- the cart table to store the user cart top-level detail
CREATE TABLE cart{
 id IDENTITY,
 user_id int,
 grand_total DECIMAL(10,2),
 cart_lines int,
 CONSTRAINT fk_cart_user_id FOREIGN KEY (user_id) REFERENCES user_detail(id),
 CONSTRAINT pk_cart_id PRIMARY KEY (id),
};



--the cart line table to store the cart details

CREATE TABLE cart_line (
id IDENTITY,
cart_id int,
total DECIMAL(10,2),
product_id int,
product_count int,
buying_price DECIMAL(10,2),
is_available boolean,

CONSTRAINT fk_cartline_cart_id FOREIGN KEY(cart_id)REFERENCES cart(id),
CONSTRAINT fk_cartline_product_id FOREIGN KEY(product_id)REFERENCES product(id),
CONSTRAINT pk_cartline_id PRIMARY KEY(id)

);








--adding three categoryies
INSERT INTO category (name,description,image_url,is_active) VALUES ('Laptop','This is description for Laptop Category!','CAT_1.png',true);
INSERT INTO category (name,description,image_url,is_active) VALUES ('Television','This is description for Television Category!','CAT_2.png',true);
INSERT INTO category (name,description,image_url,is_active) VALUES ('Mobile','This is description for Mobile Category!','CAT_3.png',true);

--adding three user
INSERT INTO user_detail
(first_name, last_name, role, enabled, password, email, contact_number)
VALUES('Deepika', 'Perumal', 'ADMIN', 'true', '$2a$10$FjCfJELP/co1WF7I4WbwxeXpg0CCHbuXQ8UbS4JsZUKmBAxPhmx8K', 'admin@gmail.com', '9988776655');

INSERT INTO user_detail
(first_name, last_name, role, enabled, password, email, contact_number)
VALUES('Akela', 'Arun', 'SUPPLIER', 'true', '$2a$10$FjCfJELP/co1WF7I4WbwxeXpg0CCHbuXQ8UbS4JsZUKmBAxPhmx8K', 'akela@gmail.com', '9911223344');

INSERT INTO user_detail
(first_name, last_name, role, enabled, password, email, contact_number)
VALUES('Indhu', 'Mathi', 'SUPPLIER', 'true', '$2a$10$FjCfJELP/co1WF7I4WbwxeXpg0CCHbuXQ8UbS4JsZUKmBAxPhmx8K', 'indhu@gmail.com', '9966778899');

--adding a supplier correspondence address
INSERT INTO address(user_id , address_line_one, address_line_two, city, state, country, postalcode, billing)
VALUES(2,'20 ABCD Nagar','Near ABC School','Chennai','TamilNadu','India','87654','FALSE')
----adding a cart for testing
INSERT INTO cart (user_id, grand_total, cart_line) VALUES(null,0,0);

--adding five products
INSERT INTO product(code, name, brand, description, unit_price, quantity, is_active, category_id, supplier_id)
VALUES('POIUY12345', 'iPhone', 'Apple', 'This is one of the best android smart phone available in the market right now!', '25000','5', 'true', 3,2);

INSERT INTO product(code, name, brand, description, unit_price, quantity, is_active, category_id, supplier_id)
VALUES('QWERT09876', 'Samsung s7', 'Samsung', 'This is one of the best android smart phone available in the market right now!', '32000','2', 'true', 3,3);


INSERT INTO product(code, name, brand, description, unit_price, quantity, is_active, category_id, supplier_id)
VALUES('DFGHJ56784', 'Dell Latitude E6510', 'Dell', 'This is one of the best Laptop series from dell that can be used!', '50000','5', 'true', 1,3);



