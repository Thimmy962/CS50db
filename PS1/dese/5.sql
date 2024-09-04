SELECT 
   "city" AS "City Name", COUNT("id") 
FROM 
    "schools"
WHERE
    "type" = "Public School"
GROUP BY 
    "city"
HAVING
    COUNT("id") < 4
ORDER BY 
    COUNT("schools"."id") DESC, "city" ASC;