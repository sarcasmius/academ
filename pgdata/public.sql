CREATE TABLE students (
s_id SERIAL PRIMARY KEY,
name TEXT NOT NULL,
start_year DATE NOT NULL
);
CREATE TABLE courses (
c_no SERIAL PRIMARY KEY,
title TEXT NOT NULL,
hours INTEGER
);
CREATE TABLE exams (
score INTEGER,
s_id INTEGER NOT NULL,
c_no INTEGER NOT NULL,
PRIMARY KEY (s_id, c_no),
FOREIGN KEY (s_id) REFERENCES students (s_id),
FOREIGN KEY (c_no) REFERENCES courses (c_no)
);