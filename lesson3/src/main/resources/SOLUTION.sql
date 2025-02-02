-- Change table 'Student': 'birthday' field cannot be null
ALTER TABLE student ALTER COLUMN birthday SET NOT NULL;

-- Change table 'Mark': 'mark' should be in the range from 1 to 10, 'student_id' and 'subject_id' cannot be null
ALTER TABLE MARK ADD CHECK (mark >= 1 AND mark <= 10);
ALTER TABLE MARK ALTER COLUMN STUDENT_ID set not null;
ALTER TABLE MARK ALTER COLUMN SUBJECT_ID set not null;
ALTER TABLE SUBJECT ADD CHECK (GRADE >= 1 AND GRADE <= 10);

ALTER TABLE PAYMENTTYPE ADD UNIQUE (NAME);

ALTER TABLE PAYMENT ALTER COLUMN TYPE_ID SET NOT NULL;
ALTER TABLE PAYMENT ALTER COLUMN AMOUNT SET NOT NULL;
ALTER TABLE PAYMENT ALTER COLUMN PAYMENT_DATE SET NOT NULL;