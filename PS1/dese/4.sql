SELECT 
   "city" AS "City Name", COUNT("id") 
FROM 
    "schools"
WHERE
    "type" = 'Public School'
GROUP BY 
    "city"
ORDER BY 
    COUNT("schools"."id") DESC, "city" ASC
LIMIT
    10;