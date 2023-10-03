SELECT * FROM mark WHERE mark > 6 ORDER BY mark DESC;
SELECT * FROM payment WHERE amount < 300 ORDER BY amount;
SELECT * FROM paymenttype ORDER BY name;
SELECT * FROM student ORDER BY name DESC;
SELECT s.* FROM student s WHERE EXISTS (SELECT 1 FROM payment p WHERE p.student_id = s.id AND p.amount > 1000) ORDER BY birthday;
