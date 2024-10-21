CREATE TABLE client(
	client_id INT AUTO_INCREMENT,
    client_first_name VARCHAR(30),
    client_last_name VARCHAR(50) NOT NULL,
    telephone_number VARCHAR(30),
    email VARCHAR(244) NOT NULL,
    PRIMARY KEY(client_id)
 );