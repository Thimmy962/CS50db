SELECT "id" AS "ID", 
       "english_title" AS "Title", 
       "artist" AS "Artist", 
       ROUND("brightness", 2) AS "AVG Brightness",
       "brightness" AS "Brightness"
FROM "views"
WHERE "brightness" > (SELECT ROUND(AVG("brightness"), 2) FROM "views")
ORDER BY "brightness" DESC;