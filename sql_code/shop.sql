CREATE TABLE client(
	client_id INT AUTO_INCREMENT,
    client_first_name VARCHAR(30),
    client_last_name VARCHAR(50) NOT NULL,
    telephone_number VARCHAR(30),
    email VARCHAR(244) NOT NULL,
    PRIMARY KEY(client_id)
 );
 CREATE TABLE invoice(
    invoice_num INT AUTO_INCREMENT,
    invoice_date DATE NOT NULL,
    client_id INT NOT NULL,
    PRIMARY KEY(invoice_num),
    FOREIGN KEY(client_id) REFERENCES client(client_id) ON UPDATE CASCADE ON DELETE RESTRICT
);
CREATE TABLE product(
    product_id INT NOT NULL,
    product_name VARCHAR(50) NOT NULL,
    price INT,
    PRIMARY KEY(product_id)
);
CREATE TABLE product_invoice( 
    product_id INT NOT NULL, 
    invoice_num INT NOT NULL, 
    quantity INT NOT NULL, 
    PRIMARY KEY(product_id, invoice_num), 
    FOREIGN KEY(product_id) REFERENCES product(product_id) ON UPDATE CASCADE ON DELETE RESTRICT, 
    FOREIGN KEY(invoice_num) REFERENCES invoice(invoice_num) ON UPDATE CASCADE ON DELETE RESTRICT 
);

INSERT INTO client(client_first_name, client_last_name, email)
VALUES	("Blaga", "Denis", "blagadenis@apple.com"),
		("Mark", "Zuck", "zuck@meta.com");
  
INSERT INTO invoice(invoice_date, client_id) 
VALUES  ("2024-10-21", 2);