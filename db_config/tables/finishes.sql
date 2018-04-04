CREATE TABLE IF NOT EXISTS finishes(
	student_id VARCHAR(11) NOT NULL,
    course_id VARCHAR(7) NOT NULL,
    course_year INTEGER(4) NOT NULL,
    course_semester INTEGER(1) NOT NULL,
	grade ENUM('A','B+','B','C+','C','D+','D','F','W','S','U','X','I','M'),
    CONSTRAINT finish_pk PRIMARY KEY (student_id,course_id,course_year,course_semester),
    CONSTRAINT finish_fk1 FOREIGN KEY (student_id) REFERENCES student(student_id),
    CONSTRAINT finish_fk2 FOREIGN KEY (course_id,course_year,course_semester)
    REFERENCES course_sem(course_id,course_year,course_semester)
);
