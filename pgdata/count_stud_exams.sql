SELECT students.name, COUNT(exams.c_no) AS total_exams
FROM students
JOIN exams ON students.s_id = exams.s_id
GROUP BY students.name;