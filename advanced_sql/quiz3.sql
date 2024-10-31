 SELECT 
    job_jan.job_title_short,
    job_jan.salary_year_avg,
    skills.skills,
    skills.type

 FROM 
    january_jobs AS job_jan
LEFT JOIN skills_job_dim as skills_to_job ON skills_to_job.job_id=job_jan.job_id
LEFT JOIN skills_dim as skills ON skills.skill_id = skills_to_job.skill_id 
WHERE salary_year_avg=70000
UNION ALL
SELECT 
    job_feb.job_title_short,
    job_feb.salary_year_avg,
    skills.skills,
    skills.type

 FROM 
    january_jobs AS job_feb
LEFT JOIN skills_job_dim as skills_to_job ON skills_to_job.job_id=job_feb.job_id
LEFT JOIN skills_dim as skills ON skills.skill_id = skills_to_job.skill_id 
WHERE salary_year_avg=70000
UNION ALL
SELECT 
    job_mar.job_title_short,
    job_mar.salary_year_avg,
    skills.skills,
    skills.type

 FROM 
    january_jobs AS job_mar
LEFT JOIN skills_job_dim as skills_to_job ON skills_to_job.job_id=job_mar.job_id
LEFT JOIN skills_dim as skills ON skills.skill_id = skills_to_job.skill_id 
WHERE salary_year_avg=70000
 