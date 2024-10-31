SELECT AVG(salary_year_avg) AS year_avg,AVG(salary_hour_avg) AS hour_avg,job_schedule_type AS schedule_type FROM job_postings_fact
WHERE job_posted_date > '2023-06-1'

GROUP BY schedule_type;


SELECT count(job_id) AS job_posted_count, EXTRACT(MONTH FROM job_posted_date AT TIME ZONE 'UTC' AT TIME ZONE 'EST') AS month
FROM 
    job_postings_fact
GROUP BY
    MONTH


SELECT companies.name,job_postings.job_health_insurance,EXTRACT(MONTH FROM job_postings.job_posted_date ) AS month FROM company_dim as companies
LEFT JOIN job_postings_fact as job_postings ON companies.company_id = job_postings.company_id
WHERE job_health_insurance=true AND job_postings.job_posted_date in(4,5,6);




