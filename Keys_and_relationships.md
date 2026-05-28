# Keys and Relationships

# Primary Keys

* students.student_id
* batches.batch_id
* courses.course_id
* enrollments.enrollment_id
* problems.problem_id
* submissions.submission_id

Primary keys uniquely identify rows.

---

# Candidate Keys

* students.roll_number
* students.email
* courses.course_code
* batches.batch_code
* problems.problem_code

Candidate keys can uniquely identify records.

---

# Alternate Keys

Alternate keys are candidate keys not selected as primary keys.

Examples:

* students.email
* students.roll_number

---

# Composite Keys

* enrollments(student_id, course_id)
* contest_problems(contest_id, problem_id)
* attendance(session_id, student_id)
* test_results(submission_id, test_case_id)

Composite keys prevent duplicate mappings.

---

# Foreign Keys

* students.batch_id references batches(batch_id)
* enrollments.student_id references students(student_id)
* enrollments.course_id references courses(course_id)
* problems.course_id references courses(course_id)
* submissions.student_id references students(student_id)
* submissions.problem_id references problems(problem_id)

Foreign keys maintain referential integrity.

---

# NOT NULL Constraints

Applied to:

* IDs
* email
* roll_number
* course_code

These fields are mandatory.

---

# UNIQUE Constraints

Applied to:

* students.email
* students.roll_number
* courses.course_code
* problems.problem_code

These constraints prevent duplicate values.

---

# CHECK Constraints

Examples:

* credit_hours > 0
* score >= 0
* similarity_score BETWEEN 0 AND 100
* difficulty IN ('Easy','Medium','Hard')

These constraints improve data validity.