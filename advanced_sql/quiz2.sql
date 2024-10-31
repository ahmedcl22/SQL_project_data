

SELECT * 
FROM (SELECT * FROM skills_dim LIMIT 5
SELECT COUNT(skill_id),job_id FROM skills_job_dim  
GROUP BY job_id);


SELECT s.type, skill_count.count AS mention_count
FROM skills_dim s
JOIN (
    SELECT skill_id, COUNT(*) AS count
    FROM skills_job_dim
    GROUP BY skill_id
    ORDER BY count DESC
    LIMIT 5
) AS skill_count
ON s.skill_id = skill_count.skill_id
ORDER BY skill_count.count DESC;
    
SELECT * FROM skills_dim
