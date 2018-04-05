CREATE TABLE category (
 id IDENTITY,
 name VARCHAR(50),
 description VARCHAR(255),
 image_url VARCHAR(50),
 is_active BOOLEAN,

 CONSTRAINT pk_category_id PRIMARY KEY(id)


);
INSERT INTO category (name,description,image_url,is_active) VALUES ('Laptop','This is description for Laptop Category!','CAT_1.png',true);
INSERT INTO category (name,description,image_url,is_active) VALUES ('Television','This is description for Television Category!','CAT_2.png',true);
INSERT INTO category (name,description,image_url,is_active) VALUES ('Mobile','This is description for Mobile Category!','CAT_3.png',true);

CREATE TABLE user_detail(
  id IDENTITY,
  first_name VARCHAR(50),
  last_name VARCHAR(50),
  role VARCHAR(50),
  enabled BOOLEAN,
  password VARCHAR(50),
  email VARCHAR(50),
  contact_number VARCHAR(50),
  CONSTRAINT pk_user_id PRIMARY KEY(id),
);

INSERT INTO user_detail
(first_name, last_name, role, enabled, password, email, contact_number)
VALUES('Deepika', 'Perumal', 'ADMIN', 'true', 'admin', 'deepi@gmail.com', '9988776655');

INSERT INTO user_detail
(first_name, last_name, role, enabled, password, email, contact_number)
VALUES('Akela', 'Arun', 'SUPPLIER', 'true', '1111', 'akela@gmail.com', '9911223344');

INSERT INTO user_detail
(first_name, last_name, role, enabled, password, email, contact_number)
VALUES('Indhu', 'Mathi', 'SUPPLIER', 'true', '1111', 'indhu@gmail.com', '9966778899');

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

INSERT INTO product(code, name, brand, description, unit_price, quantity, is_active, category_id, supplier_id)
VALUES('POIUY12345', 'iPhone', 'Apple', 'This is one of the best android smart phone available in the market right now!', '25000','5', 'true', 3,2);

INSERT INTO product(code, name, brand, description, unit_price, quantity, is_active, category_id, supplier_id)
VALUES('QWERT09876', 'Samsung s7', 'Samsung', 'This is one of the best android smart phone available in the market right now!', '32000','2', 'true', 3,3);

INSERT INTO product(code, name, brand, description, unit_price, quantity, is_active, category_id, supplier_id)
VALUES('POIUY12345', 'GOOGLE PIXEL', 'google', 'This is one of the best android smart phone available in the market right now!', '58000','5', 'true', 1,3);

INSERT INTO product(code, name, brand, description, unit_price, quantity, is_active, category_id, supplier_id)
VALUES('ASDFG98765', 'Macbook pro', 'apple', 'This is one of the best Laptop available in the market right now!', '58000','5', 'true', 3,2);

INSERT INTO product(code, name, brand, description, unit_price, quantity, is_active, category_id, supplier_id)
VALUES('DFGHJ56784', 'Dell Latitude E6510', 'Dell', 'This is one of the best Laptop series from dell that can be used!', '50000','5', 'true', 1,3);



