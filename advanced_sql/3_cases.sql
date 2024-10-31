SELECT * FROM job_postings_fact 
WHERE EXTRACT(MONTH FROM job_posted_date)=1;

CREATE TABLE january_jobs AS
    SELECT * FROM job_postings_fact 
    WHERE EXTRACT(MONTH FROM job_posted_date)=1;

CREATE TABLE february_jobs AS
    SELECT * FROM job_postings_fact 
    WHERE EXTRACT(MONTH FROM job_posted_date) = 2;

CREATE TABLE march_jobs AS
    SELECT * FROM job_postings_fact 
    WHERE EXTRACT(MONTH FROM job_posted_date) = 3;


    SELECT * FROM march_jobs;


SELECT
    job_title_short,
    job_location,
    CASE 
        WHEN job_location = 'Anywhere' THEN 'Remote'
        WHEN job_location = 'New York, NY' THEN 'Local'
        ELSE 'Onsite'
        END AS location_category
    FROM job_postings_fact;


SELECT
    COUNT(job_id) AS number_of_jobs,
    CASE 
        WHEN job_location = 'Anywhere' THEN 'Remote'
        WHEN job_location = 'New York, NY' THEN 'Local'
        ELSE 'Onsite'
        END AS location_category
    FROM job_postings_fact
    WHERE job_title_short='Data Analyst'
    GROUP BY location_category;

    SELECT 
    job_postings.job_id,
    job_postings.job_title_short,
    companies.name,
    job_postings.job_location,
    job_postings.salary_year_avg,
    CASE 
        WHEN job_postings.salary_year_avg >= 90000 THEN 'High Salary'
        WHEN job_postings.salary_year_avg BETWEEN 50000 AND 89999 THEN 'Standard Salary'
        ELSE 'Low Salary'
    END AS salary_category
FROM job_postings_fact as job_postings
LEFT JOIN company_dim as companies ON companies.company_id=job_postings.company_id
WHERE LOWER(job_postings.job_title_short) LIKE '%data analyst%'
ORDER BY job_postings.salary_year_avg DESC;

SELECT * FROM job_postings_fact LIMIT 5