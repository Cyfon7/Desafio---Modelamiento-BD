-- Caso 2
-- Creacion de Entidades
CREATE TABLE alumnos(
    rut VARCHAR(15) NOT NULL,
    nombre VARCHAR(50) NOT NULL,
    curso REFERENCES cursos(id),
    PRIMARY KEY(rut)
);

CREATE TABLE profesores(
    id SERIAL,
    nombre VARCHAR(50) NOT NULL,
    departamento REFERENCES departamentos(id),
    PRIMARY KEY(id)
);

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

-- Creacion Tabla Intermendia
CREATE TABLE pruebas(
    alumno_id REFERENCES alumnos(rut),
    profesor_id REFERENCES profesores(id),
    puntaje INT
)
