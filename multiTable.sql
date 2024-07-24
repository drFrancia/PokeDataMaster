-- info de batallas
SELECT 
    e1.nombre AS Entrenador1, 
    p1.nombre AS Pokemon1, 
    e2.nombre AS Entrenador2, 
    p2.nombre AS Pokemon2, 
    b.fecha, 
    b.resultado
FROM 
    batallas b
JOIN 
    entrenadores e1 ON b.id_entrenador1 = e1.id
JOIN 
    entrenadores e2 ON b.id_entrenador2 = e2.id
JOIN 
    pokemones p1 ON b.id_pokemon1 = p1.id
JOIN 
    pokemones p2 ON b.id_pokemon2 = p2.id;

-- info de entrenadores y sus pokemones
SELECT 
    e.nombre AS Entrenador, 
    e.genero, 
    e.fecha_registro, 
    p.nombre AS Pokemon, 
    p.tipo, 
    p.habilidad, 
    p.estadisticas
FROM 
    entrenadores e
JOIN 
    entrenador_pokemon ep ON e.id = ep.entrenador_id
JOIN 
    pokemones p ON ep.pokemon_id = p.id;

-- info de pokemones y sus entrenadores
SELECT 
    p.nombre AS Pokemon, 
    p.tipo, 
    p.habilidad, 
    p.estadisticas, 
    e.nombre AS Entrenador, 
    e.genero, 
    e.fecha_registro
FROM 
    pokemones p
JOIN 
    entrenadores e ON p.id_entrenador = e.id;


BEGIN;

-- Paso 1: Eliminar registros en `entrenador_pokemon` relacionados con los Pokémon que están a punto de ser eliminados
DELETE FROM entrenador_pokemon
WHERE pokemon_id IN (SELECT id FROM pokemones WHERE id_entrenador = (SELECT id FROM entrenadores WHERE nombre = 'Brock'));

-- Paso 2: Eliminar registros en `batallas` donde el entrenador Brock participa como `id_entrenador1`
DELETE FROM batallas
WHERE id_entrenador1 = (SELECT id FROM entrenadores WHERE nombre = 'Brock');

-- Paso 3: Eliminar registros en `batallas` donde el entrenador Brock participa como `id_entrenador2`
DELETE FROM batallas
WHERE id_entrenador2 = (SELECT id FROM entrenadores WHERE nombre = 'Brock');

-- Paso 4: Eliminar los Pokémon asociados con el entrenador Brock
DELETE FROM pokemones
WHERE id_entrenador = (SELECT id FROM entrenadores WHERE nombre = 'Brock');

-- Paso 5: Eliminar el entrenador Brock de la tabla `entrenadores`
DELETE FROM entrenadores
WHERE nombre = 'Brock';

COMMIT;
