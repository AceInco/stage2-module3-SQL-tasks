SELECT * FROM payment WHERE AMOUNT >= 500;
SELECT * FROM student WHERE DATEADD(YEAR, -20, CURRENT_DATE) > birthday;
SELECT * FROM student WHERE groupnumber = 10 AND DATEADD(YEAR, 20, CURRENT_DATE) < birthday;
SELECT * FROM student WHERE name = 'Mike' OR groupnumber IN (4, 5, 6);
SELECT * FROM payment WHERE payment_date >= DATEADD(MONTH, -8, CURRENT_DATE);
SELECT * FROM student WHERE LEFT(name, 1) = 'A';
SELECT * FROM student WHERE (name = 'Roxi' AND groupnumber = 4) OR (name = 'Tallie' AND groupnumber = 9);