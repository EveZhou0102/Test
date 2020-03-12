-- Oracle Live SQL

CREATE TABLE product (
    product_name VARCHAR2(30) NOT NULL,
    category_name VARCHAR2(20) NOT NULL,
    PRIMARY KEY (product_name)
);

CREATE TABLE price_history (
    product_name VARCHAR2(30) NOT NULL,
    start_date DATE NOT NULL,
    end_date DATE,
    price INT NOT NULL,
    PRIMARY KEY (product_name, start_date),
    FOREIGN KEY (product_name) REFERENCES product(product_name)
);

INSERT INTO product VALUES ('product1', 'clothes');
INSERT INTO product VALUES ('product2', 'clothes');
INSERT INTO product VALUES ('product3', 'book');

INSERT INTO price_history VALUES ('product1', '01-JAN-2020', '08-JAN-2020', 120);
INSERT INTO price_history VALUES ('product1', '09-JAN-2020', '20-JAN-2020', 150);
INSERT INTO price_history VALUES ('product2', '09-FEB-2020', '20-FEB-2020', 320);

SELECT * FROM product
INNER JOIN price_history USING(product_name);
