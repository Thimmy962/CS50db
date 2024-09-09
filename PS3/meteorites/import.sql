-- Create temp table with appropriate types
CREATE TABLE IF NOT EXISTS temp (
    name TEXT,
    id INTEGER PRIMARY KEY,
    nametype TEXT,
    class TEXT,
    mass REAL,
    discovery TEXT CHECK(discovery IN ('Found', 'Fell')),
    year INTEGER,
    lat REAL,
    long REAL
);

-- Import CSV data: Use `\copy` command in PostgreSQL (run from psql command line)
\copy temp(name, id, nametype, class, mass, discovery, year, lat, long) FROM 'path/to/meteorites.csv' CSV HEADER;

-- Update empty strings to NULL
UPDATE temp
SET
    id = CASE WHEN id::TEXT = '' THEN NULL ELSE id END,
    name = CASE WHEN name = '' THEN NULL ELSE name END,
    class = CASE WHEN class = '' THEN NULL ELSE class END,
    mass = CASE WHEN mass::TEXT = '' THEN NULL ELSE mass END,
    discovery = CASE WHEN discovery = '' THEN NULL ELSE discovery END,
    year = CASE WHEN year::TEXT = '' THEN NULL ELSE year END,
    lat = CASE WHEN lat::TEXT = '' THEN NULL ELSE lat END,
    long = CASE WHEN long::TEXT = '' THEN NULL ELSE long END
WHERE
    id::TEXT = '' OR name = '' OR class = '' OR mass::TEXT = '' OR discovery = '' OR year::TEXT = '' OR lat::TEXT = '' OR long::TEXT = '';

-- Round numeric values where applicable
UPDATE temp
SET
    long = ROUND(long::NUMERIC, 2),
    lat = ROUND(lat::NUMERIC, 2),
    mass = ROUND(mass::NUMERIC, 2)
WHERE
    long IS NOT NULL OR lat IS NOT NULL OR mass IS NOT NULL;

-- Create the final meteorites table
CREATE TABLE IF NOT EXISTS meteorites (
    id INTEGER PRIMARY KEY,
    name TEXT,
    class TEXT,
    mass REAL,
    discovery TEXT CHECK(discovery IN ('Found', 'Fell')),
    year INTEGER,
    lat REAL,
    long REAL
);

-- Insert filtered data into final table
INSERT INTO meteorites (id, name, class, mass, discovery, year, lat, long)
SELECT id, name, class, mass, discovery, year, lat, long
FROM temp
WHERE nametype != 'Relict'
ORDER BY year, name;

-- Drop the temporary table
DROP TABLE temp;
