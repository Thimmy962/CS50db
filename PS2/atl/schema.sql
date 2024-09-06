CREATE TABLE IF NOT EXISTS Passengers (
    "id" SERIAL PRIMARY KEY,
    "first_name" TEXT NOT NULL,
    "last_name" TEXT NOT NULL,
    "age" INTEGER NOT NULL,
    PRIMARY KEY ("id")
);


CREATE TABLE IF NOT EXISTS Airlines (
    "id" SERIAL PRIMARY KEY,
    "name" TEXT NOT NULL,
    "concourse" TEXT NOT NULL,
    PRIMARY KEY ("id")
);

CREATE TABLE IF NOT EXISTS Flights (
    "id" SERIAL PRIMARY KEY,
    "flight_number" INTEGER NOT NULL,
    "airline_id" INTERGER  REFERENCES "airlines"("id") NOT NULL,
    "destination" TEXT NOT NULL CHECK(length(destination) = 3),
    "departure" TEXT NOT NULL CHECK(length(departure) = 3),
    "departure_time" NUMERIC NOT NULL,
    "arrival_time" NUMERIC NOT NULL
);