DELETE FROM student WHERE groupnumber >= 4;
DELETE FROM student WHERE id IN (SELECT m.student_id FROM mark m WHERE m.mark < 4);
DELETE FROM payment WHERE type_id = (SELECT id FROM paymenttype WHERE name = 'Daily');
DELETE FROM mark WHERE mark < 7;
