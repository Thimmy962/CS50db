CREATE TABLE IF NOT EXISTS Users (
    "id" SERIAL PRIMARY KEY,
    "first_name" TEXT NOT NULL,
    "last_name" TEXT NOT NULL,
    "username" TEXT UNIQUE NOT NULL,
    "password" TEXT NOT NULL
);


CREATE TABLE IF NOT EXISTS Schools (
    "id" SERIAL PRIMARY KEY,
    "school_name" TEXT NOT NULL UNIQUE,
    "type" TEXT CHECK(UPPER("type") IN ('ELEMENTARY', 'PRIMARY', 'SECONDARY', 'COLLEGE', 'POLYTECHNIC','UNIVERSITY')),
    "location" TEXT,
    "founded" NUMERIC,
    "joined" NUMERIC DEFAULT CURRENT_DATE
);


CREATE TABLE IF NOT EXISTS Company (
    "id" SERIAL PRIMARY KEY,
    "name" TEXT NOT NULL,
    "industry" TEXT,
    "joined" NUMERIC DEFAULT CURRENT_DATE
);


CREATE TABLE IF NOT EXISTS School_affiliation (
    "user_id" INTEGER NOT NULL REFERENCES Users("id") ON DELETE CASCADE,
    "school_id" INTEGER NOT NULL REFERENCES Schools("id") ON DELETE CASCADE,
    "start_date" NUMERIC,
    "end_date" NUMERIC,
    "degree_earned" TEXT,
    "joined" NUMERIC DEFAULT CURRENT_DATE,
    PRIMARY KEY ("user_id", "school_id")
);

CREATE TABLE IF NOT EXISTS Company_affiliation (
    "user_id" INTEGER NOT NULL REFERENCES Users("id") ON DELETE CASCADE,
    "company_id" INTEGER NOT NULL REFERENCES Company("id") ON DELETE CASCADE,
    "start_date" NUMERIC,
    "end_date" NUMERIC,
    "title_held" TEXT,
    PRIMARY KEY ("user_id", "company_id")
);

CREATE TABLE IF NOT EXISTS USer_affiliation (
    "user_id_a" INTEGER NOT NULL REFERENCES Users("id") ON DELETE CASCADE,
    "user_id_b" INTEGER NOT NULL REFERENCES Users("id") ON DELETE CASCADE,
    PRIMARY KEY ("user_id_a", "user_id_b")
);
