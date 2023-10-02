INSERT INTO STUDENT (name, birthday, groupnumber)
VALUES
('Jhon', '1999-10-11', 1 ),
('Chris','1999-10-11', 1),
('Carl','2001-12-21', 1),
('Oliver','2001-12-21', 2),
('James','2001-12-21', 2),
('Lucas','2001-12-21', 2),
('Henry','2001-12-21', 2),
('Jacob','2001-12-21', 3),
('Logan','2001-12-21', 3),
('Mena','2001-12-21', 4),
('Gerd','2001-12-21', 4),
('Leon','2001-12-21', 5),
('ALESHA','2001-12-21', 5);
INSERT INTO SUBJECT (name, grade)
VALUES
('Art', 1),
('Music', 1),
('Geography', 2),
('History', 2),
('PE', 3),
('Math', 3),
('Science', 4),
('IT', 4),
('Chemistry', 5),
('Religion', 5);
INSERT INTO PAYMENTTYPE(name)
VALUES
('DAILY'),
('WEEKLY'),
('MONTHLY');
INSERT INTO PAYMENT(type_id, student_id, amount, payment_date)
VALUES
((SELECT id FROM PAYMENTTYPE WHERE name = 'WEEKLY'), (SELECT id FROM STUDENT WHERE name = 'John'), 1234, '1970-01-01 00:00:01'),
((SELECT id FROM PAYMENTTYPE WHERE name = 'MONTHLY'), (SELECT id FROM STUDENT WHERE name = 'Oliver'), 1234, '1970-01-01 00:00:01'),
((SELECT id FROM PAYMENTTYPE WHERE name = 'WEEKLY'), (SELECT id FROM STUDENT WHERE name = 'Henry'), 1234, '1970-01-01 00:00:01'),
((SELECT id FROM PAYMENTTYPE WHERE name = 'DAILY'), (SELECT id FROM STUDENT WHERE name = 'James'), 1234, '1970-01-01 00:00:01'),
((SELECT id FROM PAYMENTTYPE WHERE name = 'WEEKLY'), (SELECT id FROM STUDENT WHERE name = 'Logan'), 1234, '1970-01-01 00:00:01');
INSERT INTO MARK (student_id, subject_id, mark)
VALUES
((SELECT id FROM STUDENT WHERE name = 'Chris'), (SELECT id FROM SUBJECT where name = 'Art'), 8),
(SELECT id FROM STUDENT WHERE name = 'Oliver', SELECT id FROM SUBJECT where name = 'History', 5),
(SELECT id FROM STUDENT WHERE name = 'James', SELECT id FROM SUBJECT where name = 'Geography', 9),
(SELECT id FROM STUDENT WHERE name = 'Jacob', SELECT id FROM SUBJECT where name = 'Math', 4),
(SELECT id FROM STUDENT WHERE name = 'Logan', SELECT id FROM SUBJECT where name = 'PE', 9),
(SELECT id FROM STUDENT WHERE name = 'John', SELECT id FROM SUBJECT where name = 'IT', 1);

