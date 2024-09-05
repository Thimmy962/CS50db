CREATE TABLE IF NOT EXISTS Ingredients (
    "id" INTEGER,
    "name" TEXT,
    PRIMARY KEY ("id")
);

-- donuts in in many-to-many relationship with ingredients, hence the bridge table donut_ingredients
CREATE TABLE IF NOT EXISTS Donuts (
    "id" INTEGER,
    "gluten_free" TEXT NOT NULL CHECK(UPPER("gluten_free") IN ('YES', 'NO')),
    "price" REAL NOT NULL,
    "order_id" INTEGER,
    PRIMARY KEY ("id"),
    FOREIGN KEY ("order_id") REFERENCES "Orders"("id") ON DELETE SET NULL -- References Orders table
);


CREATE TABLE IF NOT EXISTS Customers (
    "id" INTEGER,
    "first_name" TEXT NOT NULL,
    "last_name" TEXT NOT NULL,
    PRIMARY KEY ("id")
);

-- bridge table for donuts and ingredients
-- bridge table for the many-to-many relationship between Donuts and Ingredients
CREATE TABLE IF NOT EXISTS Donut_ingredients (
    "donut_id" INTEGER,
    "ingredient_id" INTEGER NOT NULL,
    PRIMARY KEY ("donut_id", "ingredient_id"),
    FOREIGN KEY ("donut_id") REFERENCES "Donuts"("id") ON DELETE CASCADE,
    FOREIGN KEY ("ingredient_id") REFERENCES "Ingredients"("id") ON DELETE NO ACTION
);


-- order has one-to-many relationship with customer
-- order has many-to-many relationship with donuts, hence the bridge table oder_donuts
CREATE TABLE IF NOT EXISTS Orders (
    "id" INTEGER,
    "customer_id" INTEGER, -- customer who made the order
    PRIMARY KEY ("id")
    FOREIGN KEY ("customer_id") REFERENCES "Customers"("id") -- References Customers table
);