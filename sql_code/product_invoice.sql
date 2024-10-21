CREATE TABLE product_invoice( 
    product_id INT NOT NULL, 
    invoice_num INT NOT NULL, 
    quantity INT NOT NULL, 
    PRIMARY KEY(product_id, invoice_num), 
    FOREIGN KEY(product_id) REFERENCES product(product_id) ON UPDATE CASCADE ON DELETE RESTRICT, 
    FOREIGN KEY(invoice_num) REFERENCES invoice(invoice_num) ON UPDATE CASCADE ON DELETE RESTRICT 
);