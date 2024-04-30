SELECT *
FROM transaction
WHERE company_id IN (SELECT id FROM company WHERE country = 'Germany');
#fin del primer ejercicio nivel 1 
SELECT distinct c.company_name, sub.company_id
FROM company c, (select company_id, amount from transaction t where t.amount > (SELECT AVG(amount) FROM transaction)) AS sub
where c.id = sub.company_id ;
#fin del ejercicio 2 ##
SELECT c.company_name, tabla.*
FROM company c,(Select t.* 
from transaction t ) tabla
where tabla.company_id = c.id 
and c.company_name LIKE 'C%';
# Fin del ejercicio 3 RESULTADO  hay tres compañias con la letra c de inicial
SELECT c.company_name, t.transaction_amount
FROM company c, 
    (SELECT company_id, COUNT(*) AS transaction_amount 
     FROM transaction 
     GROUP BY company_id) AS t
WHERE c.id = t.company_id
AND t.transaction_amount IS NULL;
###
select company_name 
from company c
Where c.id not in (select company_id from transaction where company_id=c.id)
###
;
# FIN del ejercicio 4 del nivel 1 RESULTADO: no hay ninguna empresa qeu no tenga ninguna transaccion o puede ser qeu la hayan eliminado 
SELECT c.company_name, t.* 
FROM company c, transaction t
WHERE c.id = t.company_id and c.country = (SELECT country FROM company WHERE company_name = 'Non Institute');
#FIN del ejercicio 1 del nivel 2 
SELECT c.company_name, t.amount 
FROM company c, transaction t
WHERE c.id = t.company_id
AND amount= 
(select max(amount) from transaction ); 
# Nunc interdum Incorporated FIN del NIVEL 2 