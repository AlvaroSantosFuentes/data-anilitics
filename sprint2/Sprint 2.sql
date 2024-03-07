SELECT *
FROM transaction
WHERE company_id IN (SELECT id FROM company WHERE country = 'Alemania');
#fin del primer ejercicio nivel 1 
SELECT AVG(amount) AS media_transacciones
FROM transaction; # la media es 256,135
SELECT c.company_name, AVG(t.amount) AS media_transacciones
FROM company c
INNER JOIN transaction t ON c.id = t.company_id
GROUP BY c.company_name
HAVING AVG(t.amount) > '256.735520'
;
#fin del ejercicio 2 
SELECT company_name
FROM company
WHERE company_name LIKE 'C%';
# Fin del ejercicio 3 RESULTADO  hay tres compañias con la letra c de inicial
SELECT c.company_name
FROM company c
LEFT JOIN transaction t ON c.id = t.company_id
WHERE t.company_id IS NULL;
# FIN del ejercicio 4 del nivel 1 RESULTADO: no hay ninguna empresa qeu no tenga ninguna transaccion o puede ser qeu la hayan eliminado 
SELECT c.company_name, c.country
FROM company c
JOIN transaction t ON c.id = t.company_id
WHERE c.company_name = 'Non Institute';# nos confirma que esta compañia esta en United kingdom 
SELECT DISTINCT c.company_name
FROM company c
INNER JOIN transaction t ON c.id = t.company_id
WHERE c.country = 'United Kingdom';
#FIN del ejercicio 1 del nivel 2 
SELECT c.company_name, SUM(t.amount) AS suma_transacciones
FROM company c
JOIN transaction t ON c.id = t.company_id
GROUP BY c.company_name
ORDER BY suma_transacciones DESC
LIMIT 1;
# Nunc interdum Incorporated FIN del NIVEL 2 

