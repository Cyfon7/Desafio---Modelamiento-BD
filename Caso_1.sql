-- Caso 1
-- Creacion de Base de Datos
CREATE DATABASE caso_1_empresa;

-- Creacion de Entidades

-- Un trabajador puede pertenecer a un departamento,
-- un departamento puede contener uno o mas trabajadores
CREATE TABLE departamentos(
    id INT,
    nombre VARCHAR(50),
    PRIMARY KEY(id)
);

-- Entidades Principales
CREATE TABLE trabajadores(
    id INT 
    rut VARCHAR(15),
    nombre VARCHAR(50),
    direccion VARCHAR(250),
    departamento_id INT REFERENCES departamentos(id),
    PRIMARY KEY(id)
);

CREATE TABLE liquidaciones(
    id INT,
    fecha DATE,
    url_archivo VARCHAR(50),
    PRIMARY KEY(id)
);

-- Creacion Tabla Intermedia
CREATE TABLE trabajador_liquidacion(
    id INT,
    trabajador_id INT REFERENCES trabajadores(id),
    liquidacion_id INT REFERENCES liquidaciones(id),
    PRIMARY KEY (id)
);