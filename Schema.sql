CREATE TABLE batches (
    batch_id INTEGER PRIMARY KEY,
    batch_code VARCHAR(20) UNIQUE NOT NULL,
    program VARCHAR(100) NOT NULL,
    start_date DATE NOT NULL,
    end_date DATE,
    batch_status VARCHAR(20)
);

CREATE TABLE students (
    student_id INTEGER PRIMARY KEY,
    roll_number VARCHAR(30) UNIQUE NOT NULL,
    full_name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    batch_id INTEGER NOT NULL,
    admission_date DATE,
    enrollment_status VARCHAR(20),
    graduation_year INTEGER,

    FOREIGN KEY (batch_id)
    REFERENCES batches(batch_id)
);

CREATE TABLE courses (
    course_id INTEGER PRIMARY KEY,
    course_code VARCHAR(20) UNIQUE NOT NULL,
    course_title VARCHAR(100) NOT NULL,
    course_status VARCHAR(20),
    credit_hours INTEGER CHECK (credit_hours > 0)
);

CREATE TABLE enrollments (
    enrollment_id INTEGER PRIMARY KEY,
    student_id INTEGER NOT NULL,
    course_id INTEGER NOT NULL,
    enrolled_on DATE,
    enrollment_status VARCHAR(20),
    final_grade VARCHAR(5),

    UNIQUE(student_id, course_id),

    FOREIGN KEY (student_id)
    REFERENCES students(student_id),

    FOREIGN KEY (course_id)
    REFERENCES courses(course_id)
);