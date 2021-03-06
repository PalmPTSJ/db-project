CREATE TABLE IF NOT EXISTS department(
    department_id CHAR(4) NOT NULL,
    name_en VARCHAR(50),
    name_th VARCHAR(50),
    faculty CHAR(2),
    CONSTRAINT department_pk PRIMARY KEY (department_id),
    CONSTRAINT department_fk FOREIGN KEY (faculty) REFERENCES faculty(faculty_code),
    CONSTRAINT department_name_not_null CHECK(name_en IS NOT NULL OR name_th IS NOT NULL)
);
