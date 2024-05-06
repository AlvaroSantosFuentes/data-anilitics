SELECT *
FROM Users u
WHERE (
    SELECT COUNT(*)
    FROM transactions t
    WHERE t.user_id = u.id
) > 30;
# fin del ejercicio 1 
SELECT c.iban, AVG(t.amount) AS promedio_amount
FROM transactions t
JOIN credit_cards c ON t.card_id = c.id
JOIN companies com ON t.business_id = com.company_id
WHERE com.company_name = 'Donec Ltd'
GROUP BY c.iban;

SELECT * FROM companies WHERE company_name = 'Donec Ltd';
