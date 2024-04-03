
-- Creación de la base de datos
CREATE DATABASE consultas_medicas;

-- Conexión a la base de datos
\c consultas_medicas

-- Creación de las tablas especialidad, médico, paciente, consulta y licencia

CREATE TABLE especialidad(
    cod_especialidad SERIAL PRIMARY KEY,
    descripcion VARCHAR(100) NOT NULL
);

CREATE TABLE medico(
    rut VARCHAR(20) PRIMARY KEY,
    cod_especialidad INTEGER REFERENCES especialidad(cod_especialidad),
    nombre VARCHAR(80) NOT NULL,
    direccion VARCHAR(80) NOT NULL
);

CREATE TABLE paciente(
    rut VARCHAR(20) PRIMARY KEY,
    nombre VARCHAR(80) NOT NULL,
    direccion VARCHAR(80) NOT NULL
);

CREATE TABLE consulta(
    consulta_id SERIAL PRIMARY KEY,
    rut_medico VARCHAR(20) REFERENCES medico(rut),
    rut_paciente VARCHAR(20) REFERENCES paciente(rut),
    fecha_atencion DATE NOT NULL,
    hora_atencion TIME NOT NULL,
    nro_box INTEGER NOT NULL
);

CREATE TABLE licencia(
    cod_licencia SERIAL PRIMARY KEY,
    consulta_id INTEGER REFERENCES consulta(consulta_id),
    rut_medico VARCHAR(20) REFERENCES medico(rut),
    rut_paciente VARCHAR(20) REFERENCES paciente(rut),
    diagnostico VARCHAR(100) NOT NULL,
    fecha_inicio DATE NOT NULL,
    fecha_termino DATE NOT NULL,
    CONSTRAINT chk_fechas_validas CHECK (fecha_inicio < fecha_termino)
);
