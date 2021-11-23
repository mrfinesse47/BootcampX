SELECT SUM(assignment_submissions.duration) AS total_duration 
FROM cohorts
JOIN students ON cohorts.id = students.cohort_id 
JOIN assignment_submissions ON students.id = assignment_submissions.student_id
WHERE cohorts.name = 'FEB12';
-- GROUP BY students.id;

-- \i 2_queries_joins/2_cohorts_total_assignment_duration.sql