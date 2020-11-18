-- Caso 2
-- Creacion de Base de Datos
CREATE DATABASE caso_2_escuela;

-- Creacion de Entidades
CREATE TABLE cursos(
    id SERIAL,
    nombre VARCHAR(80) NOT NULL,
    PRIMARY KEY(id)
);

CREATE TABLE departamentos(
    id SERIAL,
    nombre VARCHAR(80) NOT NULL,
    PRIMARY KEY(id)
);

-- Entidades Principales
CREATE TABLE alumnos(
    rut VARCHAR(15) NOT NULL,
    nombre VARCHAR(50) NOT NULL,
    curso SERIAL REFERENCES cursos(id),
    PRIMARY KEY(rut)
);

CREATE TABLE profesores(
    id SERIAL,
    nombre VARCHAR(50) NOT NULL,
    departamento SERIAL REFERENCES departamentos(id),
    PRIMARY KEY(id)
);

-- Creacion Tabla Intermendia
CREATE TABLE pruebas(
    alumno_id VARCHAR(15) REFERENCES alumnos(rut),
    profesor_id SERIAL REFERENCES profesores(id),
    puntaje INT
);
