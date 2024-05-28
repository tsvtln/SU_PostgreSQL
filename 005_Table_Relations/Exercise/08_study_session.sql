create table
    students(
        id serial primary key,
        student_name varchar(20)
);

create table
    exams(
        id int generated always as identity (start with 101 increment by 1 ) primary key,
        exam_name varchar(50)
);

create table
    study_halls(
    id serial primary key,
    study_hall_name varchar(50),
    exam_id int,
            constraint fk_exam_constraint
                foreign key (exam_id)
                    references exams(id)
);

create table
    students_exams(
    student_id int,
    exam_id int,

        constraint fk_student_con
                  foreign key (student_id)
                    references students(id),

        constraint fk_exam_con
                  foreign key (exam_id)
                    references exams(id)
);

insert into
    students(student_name)
values
    ('Mila'),
    ('Toni'),
    ('Ron');

insert into
    exams(exam_name)
values
    ('Python Advanced'),
    ('Python OOP'),
    ('PostgreSQL');

insert into
    study_halls(study_hall_name, exam_id)
values
    ('Open Source Hall', 102),
    ('Inspiration Hall', 101),
    ('Creative Hall', 103),
    ('Masterclass Hall', 103),
    ('Information Security Hall', 103);

insert into
    students_exams(student_id, exam_id)
values
    (1, 101),
    (1, 102),
    (2, 101),
    (3, 103),
    (2, 102),
    (2, 103);
