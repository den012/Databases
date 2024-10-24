ALTER TABLE product
    RENAME COLUMN productPrice TO productCost;

DELETE FROM clients 
    WHERE postalCode is NULL;

DELETE FROM invoice
    WHERE invoiceData < '2013-1-1';

ALTER TABLE client
    MODIFY clientFirstName VARCHAR(150)
    MODIFY clientLastName VARCHAR(150);

UPDATE product
    SET productCost = 1
    WHERE productCost < 1;

SELECT COUNT(*)
    FROM invoice
    WHERE invoiceDate = '2023-11-07';

SELECT *
    FROM invoice
    ORDER BY invoiceDate DESC
    LIMIT 5;

SELECT *
    FROM invoice
    WHERE invoiceDate = '2020-10-30' OR invoiceDate = '2023-04-09';

SELECT *
    FROM invoice
    WHERE invoiceDate > '2019-10-30' and invoiceDate < '2020-10-30';

SELECT city, COUNT(clientId)
    FROM client
    GROUP BY city;

SELECT invoiceNum, clientId
    FROM invoice;

SELECT invoice.invoiceNum, client.clientFirstName
    from invoice
    JOIN client ON client.clientId = invoice.clientId;

SELECT SUM(product_invoice.quantite)
    FROM product_invoice
    JOIN invoice ON product_invoice.invoiceNum = invoice.invoiceNum
    WHERE product_invoice.productCode = 6
    AND YEAR(invoice.invoiceDate) = '2023';


SELECT invoice.clientId, COUNT(invoice.invoiceNum), client.clientFirstName
    FROM invoice
    JOIN client ON invoice.clientId = client.clientId
    GROUP BY clientId;


SELECT productCost, productName
    FROM product
    WHERE productCost = (
        SELECT MIN(productCost) FROM product
    );

INSERT INTO client (clientId, clientLastName, clientFirstName, mail, telephone, roadNum, roadName, postalCode, city, country)
VALUES (1, 'Denis', 'Boss', 'denis@denis.net', '1-737-387-9387x1591', 'Bucharest', 'Corwin Cliff', '40702', 'America', 'London');

SELECT invoice.clientId, COUNT(invoice.invoiceNum), client.clientFirstName
    FROM invoice
    LEFT JOIN client ON client.clientId = invoice.clientId
    GROUP BY clientId, client.clientFirstName
    ORDER BY COUNT(invoice.invoiceNum);

-- 52
-- Jacobs
-- Issac
-- janick10@example.net
-- 1-802-644-9357x25854
-- Circles
-- Mills Oval
-- 09196
-- North Jovani
-- Kyrgyz Republic