SELECT MIN(birthday) FROM student;
SELECT MIN(payment_date) FROM payment;
SELECT AVG(mark) FROM mark WHERE subject_id = (SELECT id FROM subject WHERE name = 'Math');
SELECT MIN(amount) AS min_weekly_payment_amount FROM payment WHERE type_id = (SELECT id FROM paymenttype WHERE name = 'WEEKLY');