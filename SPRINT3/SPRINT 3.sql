;
#Fin del ejercicio 1
select * 
From credit_card where id= "CcU-2938";
UPDATE credit_card
SET iban = 'R323456312213576817699999'
WHERE id = 'CcU-2938';
# fin del ejercicio 2 
INSERT INTO user (id) VALUES ('9999');
INSERT INTO transaction (id, credit_card_id, company_id, user_id, lat, longitude, timestamp, amount, declined)
VALUES ('108B1D1D-5B23-A76C-55EF-C568E49A99DD', 'CcU-9999', 'b-9999', '9999', 829.999, -117.999, NOW(), 111.11, 0);
SELECT * FROM transaction WHERE user_id = '9999';
#fin del ejercicio 3 
ALTER TABLE credit_card DROP COLUMN pan;
# fin del ejercicio 4 
DELETE FROM user WHERE id = '02C6201E-D90A-1859-B4EE-88D2986D3B02';
SELECT * FROM user WHERE id = '02C6201E-D90A-1859-B4EE-88D2986D3B02';
# Fin del ejercicio 1 del NIVEL 2 
CREATE VIEW VistaMarketing AS
SELECT c.company_name AS Nombre_Compañia,
       c.phone AS Telefono_Contacto,
       c.country AS Pais_Residencia,
       AVG(t.amount) AS Media_Compra
FROM company c
JOIN transaction t ON c.id = t.company_id
GROUP BY c.id
ORDER BY Media_Compra DESC;
Select * FROM vistamarketing; 
# fin del ejercicio 3 del Nivel 2 
SELECT * FROM VistaMarketing WHERE Pais_Residencia = 'Germany';











