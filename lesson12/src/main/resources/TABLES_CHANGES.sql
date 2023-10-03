ALTER TABLE PAYMENT DROP CONSTRAINT payment_type_id_fkey;
ALTER TABLE PAYMENT DROP CONSTRAINT payment_student_id_fkey;
ALTER table PAYMENT ADD CONSTRAINT payment_type_id_fkey foreign key (type_id) references paymenttype(id) On delete cascade;
ALTER table PAYMENT ADD CONSTRAINT payment_student_id_fkey foreign key (student_id) references student(id) On delete cascade;
ALTER TABLE MARK DROP CONSTRAINT mark_student_id_fkey;
ALTER TABLE MARK DROP CONSTRAINT mark_subject_id_fkey;
ALTER TABLE MARK ADD CONSTRAINT mark_student_id_fkey foreign key (student_id) references student(id) on delete cascade;
ALTER TABLE MARK ADD CONSTRAINT mark_subject_id_fkey foreign key (subject_id) references subject(id) on delete cascade;
