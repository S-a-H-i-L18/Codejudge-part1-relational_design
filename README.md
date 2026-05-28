# CodeJudge Database System - Part 1

## Objective

This project converts the raw CSV exports of the CodeJudge platform into a structured relational database schema.

This assignment covers:

* schema understanding
* entity identification
* keys and constraints
* normalization
* SQL DDL schema design
* ER diagram

---

## Dataset Tables

The dataset contains:

* batches
* students
* courses
* enrollments
* problems
* test_cases
* contests
* contest_problems
* submissions
* test_results
* sessions
* attendance
* regrade_requests
* plagiarism_flags
* raw_student_import
* operation_requests

---

## Files Included

| File                      | Purpose                       |
| ------------------------- | ----------------------------- |
| schema.sql                | SQL schema                    |
| schema_explanation.md     | Table explanations            |
| keys_and_relationships.md | PK/FK and constraint analysis |
| normalization_notes.md    | Normalization reasoning       |
| assumptions.md            | Design assumptions            |
| erd.md                    | Relationship diagram          |

---

## Database Used

SQLite compatible SQL syntax is used.

---

## Notes

The raw CSV files may contain inconsistent records.
Therefore, staging/raw import design is assumed before loading into normalized tables.