CREATE TABLE invoice(
    invoice_num INT AUTO_INCREMENT,
    invoice_date DATE NOT NULL,
    client_id INT NOT NULL,
    PRIMARY KEY(invoice_num),
    FOREIGN KEY(client_id) REFERENCES client(client_id) ON UPDATE CASCADE ON DELETE RESTRICT);