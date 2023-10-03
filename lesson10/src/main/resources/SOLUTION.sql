SELECT * FROM subject s WHERE (SELECT AVG(mark) FROM Mark m WHERE m.subject_id = s.id ) > (SELECT AVG(mark) FROM Mark);
SELECT s.* FROM student s WHERE (SELECT AVG(p.amount) FROM Payment p) > (SELECT AVG(p.amount) FROM Payment p WHERE p.student_id = s.id);
