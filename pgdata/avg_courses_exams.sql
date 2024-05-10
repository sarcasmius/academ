SELECT courses.title, AVG(exams.score) AS avg_score
FROM courses
JOIN exams ON courses.c_no = exams.c_no
GROUP BY courses.title
ORDER BY avg_score DESC;