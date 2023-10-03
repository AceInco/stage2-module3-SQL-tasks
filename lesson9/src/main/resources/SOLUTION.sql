SELECT * FROM student WHERE id IN (SELECT student_id FROM Mark GROUP BY student_id HAVING AVG(mark) > 8);
SELECT id, name FROM student WHERE id IN (SELECT student_id FROM Mark GROUP BY student_id HAVING MIN(mark) > 7);
SELECT s.id, s.name FROM student s WHERE s.id IN (SELECT p.student_id FROM Payment p WHERE YEAR(p.payment_date) = 2019 GROUP BY p.student_id HAVING COUNT(*) > 2);

