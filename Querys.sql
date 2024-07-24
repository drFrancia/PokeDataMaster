-- Crear la tabla entrenadores
CREATE TABLE entrenadores (
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    genero VARCHAR(10),
    fecha_registro TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Crear la tabla pokemones 
CREATE TABLE pokemones (
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    tipo VARCHAR(50) NOT NULL,
    habilidad VARCHAR(100) NOT NULL,
    estadisticas JSONB NOT NULL,
    id_entrenador INT,

    FOREIGN KEY (id_entrenador) REFERENCES entrenadores (id)
);

-- Crear la tabla intermedia entrenador_pokemon
CREATE TABLE entrenador_pokemon (
    id SERIAL PRIMARY KEY,
    entrenador_id INT NOT NULL,
    pokemon_id INT NOT NULL,
    fecha_adopcion DATE,
    UNIQUE(entrenador_id, pokemon_id),
    FOREIGN KEY (entrenador_id) REFERENCES entrenadores(id),
    FOREIGN KEY (pokemon_id) REFERENCES pokemones(id)
);

-- Crear la tabla batallas
CREATE TABLE batallas(
    id_batalla INT PRIMARY KEY,
    id_entrenador1 INT,
    id_entrenador2 INT,
    id_pokemon1 INT,
    id_pokemon2 INT,
    fecha DATE,
    Resultado VARCHAR(100),

    FOREIGN KEY (id_entrenador1) REFERENCES entrenadores (id),
    FOREIGN KEY (id_entrenador2) REFERENCES entrenadores (id),
    FOREIGN KEY (id_pokemon1) REFERENCES pokemones (id),
    FOREIGN KEY (id_pokemon2) REFERENCES pokemones (id)
);

