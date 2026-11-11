CREATE TABLE work_schedule (
    post_office_cod INTEGER NOT NULL,
    department_id INTEGER NOT NULL,
    day_of_week CHARACTER VARYING(20) NOT NULL,
    start_time TIME NOT NULL,
    end_time TIME NOT NULL,
    break_start_time TIME,
    break_end_time TIME,

    PRIMARY KEY (
        post_office_cod,
        department_id,
        day_of_week
    ),

    FOREIGN KEY (department_id)
        REFERENCES departments(department_code)
        ON UPDATE CASCADE
        ON DELETE CASCADE
);
