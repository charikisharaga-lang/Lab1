CREATE TABLE departments (
    department_cod SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    serves_individuals BOOLEAN NOT NULL,
    serves_legal_entities BOOLEAN NOT NULL,
    department_functions TEXT
);
