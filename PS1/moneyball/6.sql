SELECT 
    t.name AS team_name,
    SUM(p.H) AS total_hits
FROM 
    performances p
JOIN 
    teams t ON p.team_id = t.id
WHERE 
    p.year = 2001
GROUP BY 
    t.name
ORDER BY 
    total_hits DESC
LIMIT 5;
