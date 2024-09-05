CREATE TABLE IF NOT EXISTS Passengers (
    "id" INTEGER,
    "first_name" TEXT NOT NULL,
    "last_name" TEXT NOT NULL,
    "age" INTEGER NOT NULL,
    PRIMARY KEY ("id")
);


CREATE TABLE IF NOT EXISTS Airlines (
    "id" INTEGER,
    "name" TEXT NOT NULL,
    "concourse" TEXT NOT NULL,
    PRIMARY KEY ("id")
);

CREATE TABLE IF NOT EXISTS Flights (
    "id" INTEGER,
    "flight_number" INTEGER NOT NULL,
    "airline_id" INTERGER NOT NULL,
    "destination" TEXT NOT NULL CHECK(length(destination) = 3),
    "departure" TEXT NOT NULL CHECK(length(departure) = 3),
    "departure_time" NUMERIC NOT NULL,
    "arrival_time" NUMERIC NOT NULL,
    PRIMARY KEY ("id"),
    FOREIGN KEY ("airline_id") REFERENCES "airlines"("id")
);