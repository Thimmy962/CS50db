CREATE TABLE IF NOT EXISTS "temp" (
    "name" TEXT,
    "id" INTEGER,
    "nametype" TEXT,
    "class" TEXT,
    "mass" REAL,
    "discovery" TEXT CHECK("discovery" IN ("Found", "Fell")),
    "year" INTEGER,
    "lat" REAL,
    "long" REAL,
    PRIMARY KEY ("id")
);

-- Import CSV data (you may need to adjust this part depending on your environment)
.import --csv --skip 1 meteorites.csv "temp"

-- Update to replace empty strings with NULL
UPDATE "temp"
SET
    "id" = CASE WHEN "id" = '' THEN NULL ELSE "id" END,
    "name" = CASE WHEN "name" = '' THEN NULL ELSE "name" END,
    "class" = CASE WHEN "class" = '' THEN NULL ELSE "class" END,
    "mass" = CASE WHEN "mass" = '' THEN NULL ELSE "mass" END,
    "discovery" = CASE WHEN "discovery" = '' THEN NULL ELSE "discovery" END,
    "year" = CASE WHEN "year" = '' THEN NULL ELSE "year" END,
    "lat" = CASE WHEN "lat" = '' THEN NULL ELSE "lat" END,
    "long" = CASE WHEN "long" = '' THEN NULL ELSE "long" END
WHERE
    "id" = '' OR "name" = '' OR "class" = '' OR "mass" = '' OR "discovery" = '' OR "year" = '' OR "lat" = '' OR "long" = '';

-- Round numeric values where
UPDATE "temp"
SET
    "long" = ROUND("long", 2),
    "lat" = ROUND("lat", 2),
    "mass" = ROUND("mass", 2)
WHERE
    "long" IS NOT NULL OR "lat" IS NOT NULL OR "mass" IS NOT NULL;

-- Create final table
CREATE TABLE IF NOT EXISTS "meteorites" (
    "id" INTEGER,
    "name" TEXT,
    "class" TEXT,
    "mass" REAL,
    "discovery" TEXT CHECK("discovery" IN ("Found", "Fell")),
    "year" INTEGER,
    "lat" REAL,
    "long" REAL,
    PRIMARY KEY ("id")
);

-- Insert filtered data into final table
INSERT INTO "meteorites" ("name", "class", "mass", "discovery", "year", "lat", "long")
SELECT "name", "class", "mass", "discovery", "year", "lat", "long" 
FROM "temp"
WHERE "nametype" != 'Relict'
ORDER BY "year" ASC, "name" ASC;

-- Drop the temporary table
DROP TABLE "temp";
