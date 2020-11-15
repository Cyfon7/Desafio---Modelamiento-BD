-- Caso 1
-- Creacion de Entidades
CREATE TABLE trabajador(
    rut INT,
    nombre VARCHAR(50) NOT NULL,
    direccion VARCHAR(250) NOT NULL,
    departamento_id SERIAL,
    PRIMARY KEY(rut),
    FOREIGN KEY(departamento_id) REFERENCES departamentos(id)
);

CREATE TABLE liquidaciones(
    id SERIAL,
    nombre_archivo VARCHAR(50) NOT NULL,
    PRIMARY KEY(id)
);

-- Un trabajador puede pertenecer a un departamento,
-- un departamento puede contener uno o mas trabajadores
CREATE TABLE departamentos(
    id SERIAL,
    nombre VARCHAR(50) NOT NULL,
    PRIMARY KEY(id)
)

-- Creacion Tabla Intermedia
CREATE TABLE pagos_trabajador(
    trabajador_id REFERENCES trabajador(rut),
    liquidacion_id REFERENCES liquidaciones(id),
    PRIMARY KEY (trabajador_id, liquidacion_id)
);