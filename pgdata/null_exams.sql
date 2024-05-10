SELECT students.s_id, students.name
FROM students
LEFT JOIN exams ON students.s_id = exams.s_id
WHERE exams.s_id IS NULL;