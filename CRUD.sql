-- CRUD
-- CREATE
INSERT INTO entrenadores (id, nombre, genero)
VALUES
(11, 'ByViruzz', 'Masculino');

INSERT INTO pokemones (id, nombre, tipo, habilidad, estadisticas, id_entrenador)
VALUES
(11, 'Staraptor', 'Volador', 'Intimidación', '{"hp": 85, "ataque": 120, "defensa": 70, "velocidad": 100}', 11);

INSERT INTO entrenador_pokemon (entrenador_id, pokemon_id, fecha_adopcion)
VALUES
(11, 11, '2024-07-24');

-- READ
SELECT * FROM batallas;
SELECT * FROM entrenadores;
SELECT * FROM pokemones;
SELECT * FROM entrenador_pokemon;

SELECT nombre FROM entrenadores;

-- UPDATE
UPDATE entrenadores SET nombre = 'ByViruzz/justViruzz'
WHERE id = 11;

-- DELETE
DELETE FROM pokemones 
WHERE id = 11;

DELETE FROM entrenadores 
WHERE id = 11;

DELETE FROM entrenador_pokemon
WHERE entrenador_id = 11 AND pokemon_id = 11;
