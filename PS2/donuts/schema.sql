-- Ingredients table
CREATE TABLE IF NOT EXISTS Ingredients (
    "id" SERIAL PRIMARY KEY,
    "name" TEXT NOT NULL
);

-- Donuts table with a many-to-many relationship with ingredients, hence the bridge table donut_ingredients
CREATE TABLE IF NOT EXISTS Donuts (
    "id" SERIAL PRIMARY KEY,
    "gluten_free" TEXT NOT NULL CHECK(UPPER("gluten_free") IN ('YES', 'NO')),
    "price" REAL NOT NULL,
    "order_id" INTEGER REFERENCES "Orders"("id") ON DELETE SET NULL -- References Orders table
);

-- Customers table
CREATE TABLE IF NOT EXISTS Customers (
    "id" SERIAL PRIMARY KEY,
    "first_name" TEXT NOT NULL,
    "last_name" TEXT NOT NULL
);

-- Bridge table for the many-to-many relationship between Donuts and Ingredients
CREATE TABLE IF NOT EXISTS Donut_ingredients (
    "donut_id" INTEGER NOT NULL,
    "ingredient_id" INTEGER NOT NULL,
    PRIMARY KEY ("donut_id", "ingredient_id"),
    FOREIGN KEY ("donut_id") REFERENCES "Donuts"("id") ON DELETE CASCADE,
    FOREIGN KEY ("ingredient_id") REFERENCES "Ingredients"("id") ON DELETE NO ACTION
);

-- Orders table
CREATE TABLE IF NOT EXISTS Orders (
    "id" SERIAL PRIMARY KEY,
    "customer_id" INTEGER REFERENCES "Customers"("id") ON DELETE SET NULL -- Customer who made the order
);

-- Bridge table for the many-to-many relationship between Orders and Donuts
CREATE TABLE IF NOT EXISTS Order_donuts (
    "order_id" INTEGER NOT NULL,
    "donut_id" INTEGER NOT NULL,
    PRIMARY KEY ("order_id", "donut_id"),
    FOREIGN KEY ("order_id") REFERENCES "Orders"("id") ON DELETE CASCADE,
    FOREIGN KEY ("donut_id") REFERENCES "Donuts"("id") ON DELETE CASCADE
);
