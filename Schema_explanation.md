# Schema Explanation

# batches

Stores academic batch information.

Primary Key:

* batch_id

Candidate Key:

* batch_code

Relationship:

* One batch has many students.

---

# students

Stores student master data.

Primary Key:

* student_id

Candidate Keys:

* roll_number
* email

Foreign Key:

* batch_id references batches(batch_id)

Relationship:

* One student can have many enrollments, submissions and attendance records.

---

# courses

Stores course catalog information.

Primary Key:

* course_id

Candidate Key:

* course_code

Relationship:

* One course can contain many problems, contests and sessions.

---

# enrollments

Stores student course enrollments.

Primary Key:

* enrollment_id

Composite Candidate Key:

* (student_id, course_id)

Foreign Keys:

* student_id references students(student_id)
* course_id references courses(course_id)

Purpose:

* Resolves many-to-many relationship between students and courses.

---

# problems

Stores coding problems.

Primary Key:

* problem_id

Candidate Key:

* problem_code

Foreign Key:

* course_id references courses(course_id)

---

# test_cases

Stores evaluation test cases.

Primary Key:

* test_case_id

Composite Candidate Key:

* (problem_id, case_no)

Foreign Key:

* problem_id references problems(problem_id)

---

# contests

Stores coding contests.

Primary Key:

* contest_id

Foreign Key:

* course_id references courses(course_id)

---

# contest_problems

Bridge table between contests and problems.

Composite Primary Key:

* (contest_id, problem_id)

Foreign Keys:

* contest_id references contests(contest_id)
* problem_id references problems(problem_id)

---

# submissions

Stores student code submissions.

Primary Key:

* submission_id

Foreign Keys:

* student_id references students(student_id)
* problem_id references problems(problem_id)
* contest_id references contests(contest_id)

---

# test_results

Stores execution results for test cases.

Primary Key:

* result_id

Composite Candidate Key:

* (submission_id, test_case_id)

Foreign Keys:

* submission_id references submissions(submission_id)
* test_case_id references test_cases(test_case_id)

---

# sessions

Stores lectures/labs/tutorials.

Primary Key:

* session_id

Foreign Key:

* course_id references courses(course_id)

---

# attendance

Stores attendance records.

Primary Key:

* attendance_id

Composite Candidate Key:

* (session_id, student_id)

Foreign Keys:

* session_id references sessions(session_id)
* student_id references students(student_id)

---

# regrade_requests

Stores re-evaluation requests.

Primary Key:

* request_id

Foreign Keys:

* submission_id references submissions(submission_id)
* student_id references students(student_id)

---

# plagiarism_flags

Stores plagiarism similarity records.

Primary Key:

* flag_id

Foreign Keys:

* submission_id references submissions(submission_id)
* matched_submission_id references submissions(submission_id)

---

# raw_student_import

Temporary staging table used during imports.

This table is intentionally less normalized.

---

# operation_requests

Stores administrative data modification requests.
