-- Insertar datos en entrenadores
INSERT INTO entrenadores (nombre, genero)
VALUES 
    ('Ash Ketchum', 'Masculino'),
    ('Misty', 'Femenino'),
    ('Brock', 'Masculino'),
    ('Gary Oak', 'Masculino'),
    ('May', 'Femenino'),
    ('Dawn', 'Femenino'),
    ('Serena', 'Femenino');

-- Insertar datos en pokemones (sin id_entrenador inicialmente)
INSERT INTO pokemones (nombre, tipo, habilidad, estadisticas)
VALUES 
    ('Pikachu', 'Eléctrico', 'Electricidad estática', '{"hp": 35, "ataque": 55, "defensa": 40, "velocidad": 90}'),
    ('Bulbasaur', 'Planta/Veneno', 'Clorofila', '{"hp": 45, "ataque": 49, "defensa": 49, "velocidad": 45}'),
    ('Charmander', 'Fuego', 'Mar llamas', '{"hp": 39, "ataque": 52, "defensa": 43, "velocidad": 65}'),
    ('Squirtle', 'Agua', 'Torrente', '{"hp": 44, "ataque": 48, "defensa": 65, "velocidad": 43}'),
    ('Jigglypuff', 'Normal/Hada', 'Gran Encanto', '{"hp": 115, "ataque": 45, "defensa": 20, "velocidad": 20}'),
    ('Meowth', 'Normal', 'Recogida', '{"hp": 40, "ataque": 45, "defensa": 35, "velocidad": 90}'),
    ('Psyduck', 'Agua', 'Despiste', '{"hp": 50, "ataque": 52, "defensa": 48, "velocidad": 55}');

-- Insertar datos en entrenador_pokemon
INSERT INTO entrenador_pokemon (entrenador_id, pokemon_id, fecha_adopcion)
VALUES 
    (1, 1, '2024-01-01'),
    (2, 2, '2024-01-02'),
    (3, 3, '2024-01-03'),
    (4, 4, '2024-01-04'),
    (5, 5, '2024-01-05'),
    (6, 6, '2024-01-06'),
    (7, 7, '2024-01-07');

-- Actualizar id_entrenador en pokemones
UPDATE pokemones SET id_entrenador = 1 WHERE id = 1;
UPDATE pokemones SET id_entrenador = 2 WHERE id = 2;
UPDATE pokemones SET id_entrenador = 3 WHERE id = 3;
UPDATE pokemones SET id_entrenador = 4 WHERE id = 4;
UPDATE pokemones SET id_entrenador = 5 WHERE id = 5;
UPDATE pokemones SET id_entrenador = 6 WHERE id = 6;
UPDATE pokemones SET id_entrenador = 7 WHERE id = 7;

-- Insertar datos en batallas
INSERT INTO batallas (id_batalla, id_entrenador1, id_entrenador2, id_pokemon1, id_pokemon2, fecha, resultado)
VALUES 
    (1, 1, 2, 1, 2, '2024-07-01', 'Victoria para Ash Ketchum'),
    (2, 3, 4, 3, 4, '2024-07-02', 'Victoria para Brock'),
    (3, 5, 6, 5, 6, '2024-07-03', 'Victoria para May'),
    (4, 7, 1, 7, 1, '2024-07-04', 'Victoria para Ash Ketchum'),
    (5, 2, 3, 2, 3, '2024-07-05', 'Victoria para Misty'),
    (6, 4, 5, 4, 5, '2024-07-06', 'Victoria para Gary Oak'),
    (7, 6, 7, 6, 7, '2024-07-07', 'Victoria para Dawn');
