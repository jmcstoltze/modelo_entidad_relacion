
-- Poblar la tabla especialidad
INSERT INTO especialidad (descripcion) VALUES
    ('Cardiología'),
    ('Dermatología'),
    ('Gastroenterología'),
    ('Neurología'),
    ('Oftalmología'),
    ('Oncología'),
    ('Pediatría'),
    ('Psiquiatría'),
    ('Traumatología'),
    ('Urología');

-- Poblar la tabla medico
INSERT INTO medico (rut, cod_especialidad, nombre, direccion) VALUES
    ('11111111-1', 1, 'Juan Pérez', 'Calle 123, Ciudad'),
    ('22222222-2', 2, 'María González', 'Avenida 456, Ciudad'),
    ('33333333-3', 3, 'Carlos Ruiz', 'Plaza Principal, Ciudad'),
    ('44444444-4', 4, 'Laura Martínez', 'Av. Libertador, Ciudad'),
    ('55555555-5', 5, 'Pedro Gómez', 'Calle Mayor, Ciudad');

-- Poblar la tabla paciente
INSERT INTO paciente (rut, nombre, direccion) VALUES
    ('66666666-6', 'Ana López', 'Av. Central, Ciudad'),
    ('77777777-7', 'José Rodríguez', 'Calle 789, Ciudad'),
    ('88888888-8', 'Elena García', 'Paseo 101, Ciudad'),
    ('99999999-9', 'Miguel Sánchez', 'Av. Rivadavia, Ciudad'),
    ('10101010-0', 'Isabel Fernández', 'Calle 1112, Ciudad');

-- Poblar la tabla consulta
INSERT INTO consulta (rut_medico, rut_paciente, fecha_atencion, hora_atencion, nro_box) VALUES
    ('11111111-1', '66666666-6', '2024-04-01', '10:00:00', 1),
    ('22222222-2', '77777777-7', '2024-04-02', '11:00:00', 2),
    ('33333333-3', '88888888-8', '2024-04-03', '12:00:00', 3),
    ('44444444-4', '99999999-9', '2024-04-04', '13:00:00', 4),
    ('55555555-5', '10101010-0', '2024-04-05', '14:00:00', 5);

-- Poblar la tabla licencia
INSERT INTO licencia (consulta_id, rut_medico, rut_paciente, diagnostico, fecha_inicio, fecha_termino) VALUES
    (1, '11111111-1', '66666666-6', 'Reposo por gripe', '2024-04-01', '2024-04-05'),
    (2, '22222222-2', '77777777-7', 'Reposo por lesión', '2024-04-02', '2024-04-06'),
    (3, '33333333-3', '88888888-8', 'Reposo por fatiga', '2024-04-03', '2024-04-07'),
    (4, '44444444-4', '99999999-9', 'Reposo por fractura', '2024-04-04', '2024-04-08'),
    (5, '55555555-5', '10101010-0', 'Reposo por enfermedad', '2024-04-05', '2024-04-09');
