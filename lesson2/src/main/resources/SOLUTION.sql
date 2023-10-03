INSERT INTO Student (name, birthday, groupnumber) VALUES ('Chris', '2006-03-22', 1);
INSERT INTO Student (name, birthday, groupnumber) VALUES ('Carl', '2007-05-10', 1);
INSERT INTO Student (name, birthday, groupnumber) VALUES ('Oliver', '2004-08-08', 2);
INSERT INTO Student (name, birthday, groupnumber) VALUES ('James', '2004-11-30', 2);
INSERT INTO Student (name, birthday, groupnumber) VALUES ('Lucas', '2005-02-17', 2);
INSERT INTO Student (name, birthday, groupnumber) VALUES ('Henry', '2005-06-14', 2);
INSERT INTO Student (name, birthday, groupnumber) VALUES ('Jacob', '2003-04-05', 3);
INSERT INTO Student (name, birthday, groupnumber) VALUES ('Logan', '2003-07-19', 3);
INSERT INTO Student (name, birthday, groupnumber) VALUES ('Emil', '2002-09-25', 4);
INSERT INTO Student (name, birthday, groupnumber) VALUES ('Jahn', '2002-12-12', 4);
INSERT INTO Student (name, birthday, groupnumber) VALUES ('Jak', '2001-02-28', 5);
INSERT INTO Student (name, birthday, groupnumber) VALUES ('Zak', '2001-05-20', 5);
INSERT INTO subject (name, description, grade) VALUES ('Art', 'Art and music', 1);
INSERT INTO subject (name, description, grade) VALUES ('Music', 'Art and music', 1);
INSERT INTO subject (name, description, grade) VALUES ('Geography', 'Geography and history', 2);
INSERT INTO subject (name, description, grade) VALUES ('History', 'Geography and history', 2);
INSERT INTO subject (name, description, grade) VALUES ('PE', 'PE and math', 3);
INSERT INTO subject (name, description, grade) VALUES ('Math', 'PE and math', 3);
INSERT INTO subject (name, description, grade) VALUES ('Science', 'Science and IT', 4);
INSERT INTO subject (name, description, grade) VALUES ('IT', 'Science and IT', 4);
INSERT INTO subject (name, description, grade) VALUES ('Physic', 'Additional subject for grade 5', 5);
INSERT INTO subject (name, description, grade) VALUES ('Chemistry', 'Additional subject for grade 5', 5);
insert into paymenttype ( name) values ( 'DAILY');
insert into paymenttype ( name) values ('WEEKLY');
insert into paymenttype ( name) values ( 'MONTHLY');

INSERT INTO mark (student_id, subject_id, mark) VALUES ((SELECT id FROM student WHERE name = 'Chris'), (SELECT id FROM subject WHERE name = 'Art'), 8);
INSERT INTO mark (student_id, subject_id, mark) VALUES ((SELECT id FROM student WHERE name = 'Oliver'), (SELECT id FROM subject WHERE name = 'History'), 5);
INSERT INTO mark (student_id, subject_id, mark) VALUES ((SELECT id FROM student WHERE name = 'James'), (SELECT id FROM subject WHERE name = 'Geography'), 9);
INSERT INTO mark (student_id, subject_id, mark) VALUES ((SELECT id FROM student WHERE name = 'Jacob'), (SELECT id FROM subject WHERE name = 'Math'), 4);
INSERT INTO mark (student_id, subject_id, mark) VALUES ((SELECT id FROM student WHERE name = 'Logan'), (SELECT id FROM subject WHERE name = 'PE'), 9);

INSERT INTO payment (type_id, amount, payment_date, student_id) VALUES ((SELECT id FROM paymenttype WHERE name = 'WEEKLY'), 100.00, '2022-01-15 10:30:00', (SELECT id FROM student WHERE name = 'John'));
INSERT INTO payment (type_id, amount, payment_date, student_id) VALUES ((SELECT id FROM paymenttype WHERE name = 'MONTHLY'), 500.00, '2022-02-01 14:15:00', (SELECT id FROM student WHERE name = 'Oliver'));
INSERT INTO payment (type_id, amount, payment_date, student_id) VALUES ((SELECT id FROM paymenttype WHERE name = 'WEEKLY'), 75.00, '2022-03-05 09:00:00', (SELECT id FROM student WHERE name = 'Henry'));
INSERT INTO payment (type_id, amount, payment_date, student_id) VALUES ((SELECT id FROM paymenttype WHERE name = 'DAILY'), 10.00, '2022-04-10 16:45:00', (SELECT id FROM student WHERE name = 'James'));