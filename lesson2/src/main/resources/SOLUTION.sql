INSERT INTO Student (name, birthday, groupnumber) VALUES
    ('John', '2005-01-15', 1),
    ('Chris', '2006-03-22', 1),
    ('Carl', '2007-05-10', 1),
    ('Oliver', '2004-08-08', 2),
    ('James', '2004-11-30', 2),
    ('Lucas', '2005-02-17', 2),
    ('Henry', '2005-06-14', 2),
    ('Jacob', '2003-04-05', 3),
    ('Logan', '2003-07-19', 3),
    ('Emil', '2002-09-25', 4),
    ('Jahn', '2002-12-12', 4),
    ('Jak', '2001-02-28', 5),
    ('Zak', '2001-05-20', 5);
INSERT INTO subject (name, description, grade) VALUES
    ('Art', 'Art and music', 1),
    ('Music', 'Art and music', 1),
    ('Geography', 'Geography and history', 2),
    ('History', 'Geography and history', 2),
    ('PE', 'PE and math', 3),
    ('Math', 'PE and math', 3),
    ('Science', 'Science and IT', 4),
    ('IT', 'Science and IT', 4),
    ('Physic', 'Additional subject for grade 5', 5),
    ('Chemistry', 'Additional subject for grade 5', 5);
insert into paymenttype ( name) values ( 'DAILY');
insert into paymenttype ( name) values ('WEEKLY');
insert into paymenttype ( name) values ( 'MONTHLY');
INSERT INTO payment (type_id, amount, payment_date, student_id) VALUES
    ((SELECT id FROM paymenttype WHERE name = 'WEEKLY'), 100.00, '2022-01-15 10:30:00', (SELECT id FROM student WHERE name = 'John')),
    ((SELECT id FROM paymenttype WHERE name = 'MONTHLY'), 500.00, '2022-02-01 14:15:00', (SELECT id FROM student WHERE name = 'Oliver')),
    ((SELECT id FROM paymenttype WHERE name = 'WEEKLY'), 75.00, '2022-03-05 09:00:00', (SELECT id FROM student WHERE name = 'Henry')),
    ((SELECT id FROM paymenttype WHERE name = 'DAILY'), 10.00, '2022-04-10 16:45:00', (SELECT id FROM student WHERE name = 'James'));
INSERT INTO mark (student_id, subject_id, mark) VALUES
    ((SELECT id FROM student WHERE name = 'Chris'), (SELECT id FROM subject WHERE name = 'Art'), 8),
    ((SELECT id FROM student WHERE name = 'Oliver'), (SELECT id FROM subject WHERE name = 'History'), 5),
    ((SELECT id FROM student WHERE name = 'James'), (SELECT id FROM subject WHERE name = 'Geography'), 9),
    ((SELECT id FROM student WHERE name = 'Jacob'), (SELECT id FROM subject WHERE name = 'Math'), 4),
    ((SELECT id FROM student WHERE name = 'Logan'), (SELECT id FROM subject WHERE name = 'PE'), 9);
