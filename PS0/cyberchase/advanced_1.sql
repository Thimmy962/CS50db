SELECT "title", "air_date"
FROM "episodes" 
WHERE TO_CHAR("air_date", 'YYYY-MM-DD') LIKE '20___12___';