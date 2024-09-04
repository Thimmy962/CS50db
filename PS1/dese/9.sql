SELECT 
    "name" FROM "expenditures"
LEFT JOIN 
    "districts" ON  "districts"."id" = "expenditures"."district_id"
WHERE "pupils" = (
    SELECT
        MIN("pupils") FROM "expenditures");