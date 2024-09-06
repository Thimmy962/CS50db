CREATE TABLE IF NOT EXISTS Users (
    "id" SERIAL PRIMARY KEY,
    "first_name" TEXT NOT NULL,
    "last_name" TEXT NOT NULL,
    "username" TEXT UNIQUE NOT NULL,
    "password" TEXT NOT NULL
);

-- CREATE OR REPLACE FUNCTION auto_uppercase_user_fields()
-- RETURNS TRIGGER AS $$
-- BEGIN
--     -- Capitalize the first letter of first_name and last_name
--     NEW.first_name := INITCAP(NEW.first_name);
--     NEW.last_name := INITCAP(NEW.last_name);
    
--     -- Make the username lowercase
--     NEW.username := LOWER(NEW.username);
    
--     -- Return the modified NEW row
--     RETURN NEW;
-- END;
-- $$ LANGUAGE plpgsql;


-- CREATE TRIGGER auto_uppercase_first_letter
-- BEFORE INSERT OR UPDATE ON "User"
-- FOR EACH ROW
-- EXECUTE FUNCTION auto_uppercase_user_fields();



-- CREATE TRIGGER auto_uppercase_first_letter
-- BEFORE INSERT OR UPDATE ON User
-- FOR EACH ROW
-- BEGIN
--     -- Uppercase the first letter of first_name and last_name, lowercase the rest
--     NEW.first_name = UPPER(SUBSTR(NEW.first_name, 1, 1)) || LOWER(SUBSTR(NEW.first_name, 2));
--     NEW.last_name = UPPER(SUBSTR(NEW.last_name, 1, 1)) || LOWER(SUBSTR(NEW.last_name, 2));
    
--     -- Make the username lowercase
--     NEW.username = LOWER(NEW.username);
-- END;


CREATE TABLE IF NOT EXISTS Schools (
    "id" SERIAL PRIMARY KEY,
    "school_name" TEXT NOT NULL UNIQUE,
    "type" TEXT CHECK(UPPER("type") IN ('ELEMENTARY', 'PRIMARY', 'SECONDARY', 'COLLEGE', 'POLYTECHNIC','UNIVERSITY')),
    "location" TEXT,
    "founded" DATE,
    "joined" DATE DEFAULT CURRENT_DATE
);


CREATE TABLE IF NOT EXISTS Company (
    "id" SERIAL PRIMARY KEY,
    "name" TEXT NOT NULL,
    "industry" TEXT,
    "joined" DATE DEFAULT CURRENT_DATE
);


CREATE TABLE IF NOT EXISTS School_affiliation (
    "user_id" INTEGER NOT NULL REFERENCES Users("id") ON DELETE CASCADE,
    "school_id" INTEGER NOT NULL REFERENCES Schools("id") ON DELETE CASCADE,
    "start_date" DATE,
    "end_date" DATE,
    "degree_earned" TEXT,
    "joined" DATE DEFAULT CURRENT_DATE,
    PRIMARY KEY ("user_id", "school_id")
);

CREATE TABLE IF NOT EXISTS Company_affiliation (
    "user_id" INTEGER NOT NULL REFERENCES Users("id") ON DELETE CASCADE,
    "company_id" INTEGER NOT NULL REFERENCES Company("id") ON DELETE CASCADE,
    "start_date" DATE,
    "end_date" DATE,
    "title_held" TEXT,
    PRIMARY KEY ("user_id", "company_id")
);

CREATE TABLE IF NOT EXISTS USer_affiliation (
    "user_id_a" INTEGER NOT NULL REFERENCES Users("id") ON DELETE CASCADE,
    "user_id_b" INTEGER NOT NULL REFERENCES Users("id") ON DELETE CASCADE,
    PRIMARY KEY ("user_id_a", "user_id_b")
);
