CREATE TABLE Student(
    id bigint PRIMARY KEY,
    name varchar,
    birthday date,
    groupnumber int
);
CREATE TABLE Subject(
    id bigint PRIMARY KEY,
    name varchar,
    description varchar,
    grade int
);
CREATE TABLE PaymentType(
    id bigint PRIMARY KEY,
    name varchar
);
CREATE TABLE Payment(
    id bigint PRIMARY KEY,
    type_id bigint,
    amount decimal,
    student_id bigint,
    payment_date datetime,
    FOREIGN KEY (type_id) references PaymentType (id),
    FOREIGN KEY (student_id) references Student (id)
);
CREATE TABLE Mark(
    id bigint PRIMARY KEY,
    student_id bigint,
    subject_id bigint,
    mark int,
    FOREIGN KEY (student_id) references Student (id),
    FOREIGN KEY (subject_id) references Subject (id)
);




