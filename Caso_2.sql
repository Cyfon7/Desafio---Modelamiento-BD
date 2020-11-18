-- Caso 2
-- Creacion de Base de Datos
CREATE DATABASE caso_2_escuela;

-- Creacion de Entidades
CREATE TABLE cursos(
    id INT,
    nombre VARCHAR(80),
    PRIMARY KEY(id)
);

CREATE TABLE departamentos(
    id INT,
    nombre VARCHAR(80),
    PRIMARY KEY(id)
);

-- Entidades Principales
CREATE TABLE alumnos(
    id INT,
    rut VARCHAR(15),
    nombre VARCHAR(50),
    curso_id INT REFERENCES cursos(id),
    PRIMARY KEY(id)
);

CREATE TABLE profesores(
    id INT,
    nombre VARCHAR(50),
    departamento_id INT REFERENCES departamentos(id),
    PRIMARY KEY(id)
);

-- Creacion Tabla Intermendia
CREATE TABLE pruebas(
    id INT,
    alumno_id INT REFERENCES alumnos(id),
    profesor_id INT REFERENCES profesores(id),
    puntaje INT
);
