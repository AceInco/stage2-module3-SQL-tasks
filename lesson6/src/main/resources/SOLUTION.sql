SELECT * FROM payment WHERE type_id = (SELECT id FROM paymenttype WHERE name = 'MONTHLY');
SELECT * FROM mark WHERE subject_id = (SELECT id FROM subject WHERE name = 'Art');
SELECT s.* FROM student s JOIN payment p ON s.id = p.student_id WHERE p.type_id = (SELECT id FROM paymenttype WHERE name = 'WEEKLY');
SELECT s.* FROM student s JOIN mark m ON s.id = m.student_id WHERE m.subject_id = (SELECT id FROM subject WHERE name = 'Math');
