SELECT *
    FROM product
    WHERE productPrice > 100;


SELECT *
    FROM product
    ORDER BY productPrice ASC; /*DESCENDENT*/

SELECT *
    FROM client
    WHERE country="Bulgaria";

SELECT country, COUNT(clientId)
    FROM client
    GROUP BY country;
    ORDER BY COUNT(clientId) DESC;

UPDATE product 
    SET productPrice = 300
    WHERE productCode = 2;