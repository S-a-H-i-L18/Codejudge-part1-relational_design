# Assumptions

1. All ID columns uniquely identify records.

2. Student email addresses are unique.

3. roll_number uniquely identifies students.

4. contest_id in submissions may be NULL.

5. Raw CSV files may contain inconsistent records.

6. Staging tables may be required before importing.

7. CHECK constraints are logical assumptions.

8. operation_requests is treated as an administrative workflow table.

9. plagiarism_flags compares two submissions.

10. Dates are assumed to follow valid formats.