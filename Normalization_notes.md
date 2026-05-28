# Normalization Notes

# First Normal Form (1NF)

The schema satisfies 1NF because:

* all values are atomic
* there are no repeating groups
* each row is uniquely identifiable

---

# Second Normal Form (2NF)

The schema satisfies 2NF because:

* non-key attributes fully depend on primary keys
* composite key tables avoid partial dependency

Example:
In enrollments, final_grade depends on both student_id and course_id.

---

# Third Normal Form (3NF)

The schema approximately satisfies 3NF because:

* transitive dependency is minimized
* non-key attributes depend only on primary keys

Example:
Batch details are stored separately instead of repeating them in students table.

---

# Redundancy Examples

1. Student details repeat in attendance and submissions.

2. Course details repeat in contests and sessions.

3. Problem details repeat in submissions and test cases.

Normalization removes this duplication.

---

# Design Improvements

1. contest_problems separates many-to-many relationship.

2. attendance separates session participation data.

---

# Functional Dependencies

student_id → full_name, email, batch_id

problem_id → title, difficulty, max_score

---

# Trade-offs

The design prioritizes integrity and normalization over denormalized performance.
