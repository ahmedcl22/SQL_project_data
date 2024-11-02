WITH top_paying_jobs AS(
    SELECT 
        job_id,
        job_title,
        salary_year_avg,
        job_posted_date,
        name AS company_name
    FROM 
        job_postings_fact
    LEFT JOIN company_dim ON job_postings_fact.company_id=company_dim.company_id
    WHERE
        job_title_short = 'Data Analyst' AND 
        job_location='Anywhere' AND
        salary_year_avg IS NOT NULL
    ORDER BY
        salary_hour_avg DESC
    LIMIT 10 
)
SELECT 
    top_paying_jobs.*,
    skills
FROM top_paying_jobs
INNER JOIN skills_job_dim ON top_paying_jobs.job_id = skills_job_dim.job_id
INNER JOIN skills_dim ON skills_job_dim.skill_id = skills_dim.skill_id
ORDER BY
    salary_year_avg DESC

/* The top skills mentioned for data analyst roles in 2023, along with their frequency across job postings, are:

SQL - 11 mentions
Python - 6 mentions
Tableau - 5 mentions
R - 4 mentions
BI (Business Intelligence) - 3 mentions
Power BI - 3 mentions
AWS (Amazon Web Services) - 3 mentions
BigQuery - 2 mentions
SAS - 2 mentions
SPSS - 2 mentions
This indicates a strong demand for SQL and Python, along with data visualization and BI tools like Tableau and Power BI. Cloud services knowledge (e.g., AWS and BigQuery) also appears valuable. 

[
  {
    "job_id": 479485,
    "job_title": "Data Analyst",
    "salary_year_avg": "145000.0",
    "job_posted_date": "2023-03-15 16:59:55",
    "company_name": "Level",
    "skills": "python"
  },
  {
    "job_id": 479485,
    "job_title": "Data Analyst",
    "salary_year_avg": "145000.0",
    "job_posted_date": "2023-03-15 16:59:55",
    "company_name": "Level",
    "skills": "gcp"
  },
  {
    "job_id": 479485,
    "job_title": "Data Analyst",
    "salary_year_avg": "145000.0",
    "job_posted_date": "2023-03-15 16:59:55",
    "company_name": "Level",
    "skills": "bigquery"
  },
  {
    "job_id": 479485,
    "job_title": "Data Analyst",
    "salary_year_avg": "145000.0",
    "job_posted_date": "2023-03-15 16:59:55",
    "company_name": "Level",
    "skills": "aws"
  },
  {
    "job_id": 479485,
    "job_title": "Data Analyst",
    "salary_year_avg": "145000.0",
    "job_posted_date": "2023-03-15 16:59:55",
    "company_name": "Level",
    "skills": "elasticsearch"
  },
  {
    "job_id": 479485,
    "job_title": "Data Analyst",
    "salary_year_avg": "145000.0",
    "job_posted_date": "2023-03-15 16:59:55",
    "company_name": "Level",
    "skills": "golang"
  },
  {
    "job_id": 479485,
    "job_title": "Data Analyst",
    "salary_year_avg": "145000.0",
    "job_posted_date": "2023-03-15 16:59:55",
    "company_name": "Level",
    "skills": "r"
  },
  {
    "job_id": 479485,
    "job_title": "Data Analyst",
    "salary_year_avg": "145000.0",
    "job_posted_date": "2023-03-15 16:59:55",
    "company_name": "Level",
    "skills": "sql"
  },
  {
    "job_id": 479485,
    "job_title": "Data Analyst",
    "salary_year_avg": "145000.0",
    "job_posted_date": "2023-03-15 16:59:55",
    "company_name": "Level",
    "skills": "kubernetes"
  },
  {
    "job_id": 479485,
    "job_title": "Data Analyst",
    "salary_year_avg": "145000.0",
    "job_posted_date": "2023-03-15 16:59:55",
    "company_name": "Level",
    "skills": "looker"
  },
  {
    "job_id": 479485,
    "job_title": "Data Analyst",
    "salary_year_avg": "145000.0",
    "job_posted_date": "2023-03-15 16:59:55",
    "company_name": "Level",
    "skills": "scikit-learn"
  },
  {
    "job_id": 479485,
    "job_title": "Data Analyst",
    "salary_year_avg": "145000.0",
    "job_posted_date": "2023-03-15 16:59:55",
    "company_name": "Level",
    "skills": "pandas"
  },
  {
    "job_id": 592669,
    "job_title": "Behavioral Health Data Analyst- REMOTE",
    "salary_year_avg": "126452.0",
    "job_posted_date": "2023-07-25 17:41:14",
    "company_name": "ICF",
    "skills": "sas"
  },
  {
    "job_id": 592669,
    "job_title": "Behavioral Health Data Analyst- REMOTE",
    "salary_year_avg": "126452.0",
    "job_posted_date": "2023-07-25 17:41:14",
    "company_name": "ICF",
    "skills": "r"
  },
  {
    "job_id": 592669,
    "job_title": "Behavioral Health Data Analyst- REMOTE",
    "salary_year_avg": "126452.0",
    "job_posted_date": "2023-07-25 17:41:14",
    "company_name": "ICF",
    "skills": "spss"
  },
  {
    "job_id": 592669,
    "job_title": "Behavioral Health Data Analyst- REMOTE",
    "salary_year_avg": "126452.0",
    "job_posted_date": "2023-07-25 17:41:14",
    "company_name": "ICF",
    "skills": "sas"
  },
  {
    "job_id": 592669,
    "job_title": "Behavioral Health Data Analyst- REMOTE",
    "salary_year_avg": "126452.0",
    "job_posted_date": "2023-07-25 17:41:14",
    "company_name": "ICF",
    "skills": "tableau"
  },
  {
    "job_id": 592669,
    "job_title": "Behavioral Health Data Analyst- REMOTE",
    "salary_year_avg": "126452.0",
    "job_posted_date": "2023-07-25 17:41:14",
    "company_name": "ICF",
    "skills": "python"
  },
  {
    "job_id": 592669,
    "job_title": "Behavioral Health Data Analyst- REMOTE",
    "salary_year_avg": "126452.0",
    "job_posted_date": "2023-07-25 17:41:14",
    "company_name": "ICF",
    "skills": "sql"
  },
  {
    "job_id": 300502,
    "job_title": "Healthcare Data Analyst",
    "salary_year_avg": "125000.0",
    "job_posted_date": "2023-08-18 17:00:58",
    "company_name": "Get It Recruit - Real Estate",
    "skills": "redshift"
  },
  {
    "job_id": 300502,
    "job_title": "Healthcare Data Analyst",
    "salary_year_avg": "125000.0",
    "job_posted_date": "2023-08-18 17:00:58",
    "company_name": "Get It Recruit - Real Estate",
    "skills": "shell"
  },
  {
    "job_id": 300502,
    "job_title": "Healthcare Data Analyst",
    "salary_year_avg": "125000.0",
    "job_posted_date": "2023-08-18 17:00:58",
    "company_name": "Get It Recruit - Real Estate",
    "skills": "python"
  },
  {
    "job_id": 300502,
    "job_title": "Healthcare Data Analyst",
    "salary_year_avg": "125000.0",
    "job_posted_date": "2023-08-18 17:00:58",
    "company_name": "Get It Recruit - Real Estate",
    "skills": "sql"
  },
  {
    "job_id": 300502,
    "job_title": "Healthcare Data Analyst",
    "salary_year_avg": "125000.0",
    "job_posted_date": "2023-08-18 17:00:58",
    "company_name": "Get It Recruit - Real Estate",
    "skills": "jupyter"
  },
  {
    "job_id": 300502,
    "job_title": "Healthcare Data Analyst",
    "salary_year_avg": "125000.0",
    "job_posted_date": "2023-08-18 17:00:58",
    "company_name": "Get It Recruit - Real Estate",
    "skills": "airflow"
  },
  {
    "job_id": 300502,
    "job_title": "Healthcare Data Analyst",
    "salary_year_avg": "125000.0",
    "job_posted_date": "2023-08-18 17:00:58",
    "company_name": "Get It Recruit - Real Estate",
    "skills": "spark"
  },
  {
    "job_id": 300502,
    "job_title": "Healthcare Data Analyst",
    "salary_year_avg": "125000.0",
    "job_posted_date": "2023-08-18 17:00:58",
    "company_name": "Get It Recruit - Real Estate",
    "skills": "bigquery"
  },
  {
    "job_id": 238020,
    "job_title": "Business Data Analyst with SQL (Strong)",
    "salary_year_avg": "122500.0",
    "job_posted_date": "2023-06-19 17:01:37",
    "company_name": "Innova Solutions",
    "skills": "confluence"
  },
  {
    "job_id": 238020,
    "job_title": "Business Data Analyst with SQL (Strong)",
    "salary_year_avg": "122500.0",
    "job_posted_date": "2023-06-19 17:01:37",
    "company_name": "Innova Solutions",
    "skills": "sql"
  },
  {
    "job_id": 238020,
    "job_title": "Business Data Analyst with SQL (Strong)",
    "salary_year_avg": "122500.0",
    "job_posted_date": "2023-06-19 17:01:37",
    "company_name": "Innova Solutions",
    "skills": "aws"
  },
  {
    "job_id": 238020,
    "job_title": "Business Data Analyst with SQL (Strong)",
    "salary_year_avg": "122500.0",
    "job_posted_date": "2023-06-19 17:01:37",
    "company_name": "Innova Solutions",
    "skills": "jira"
  },
  {
    "job_id": 357990,
    "job_title": "Data Analyst",
    "salary_year_avg": "115000.0",
    "job_posted_date": "2023-01-19 17:00:07",
    "company_name": "Robert Half",
    "skills": "power bi"
  },
  {
    "job_id": 357990,
    "job_title": "Data Analyst",
    "salary_year_avg": "115000.0",
    "job_posted_date": "2023-01-19 17:00:07",
    "company_name": "Robert Half",
    "skills": "sql server"
  },
  {
    "job_id": 357990,
    "job_title": "Data Analyst",
    "salary_year_avg": "115000.0",
    "job_posted_date": "2023-01-19 17:00:07",
    "company_name": "Robert Half",
    "skills": "azure"
  },
  {
    "job_id": 357990,
    "job_title": "Data Analyst",
    "salary_year_avg": "115000.0",
    "job_posted_date": "2023-01-19 17:00:07",
    "company_name": "Robert Half",
    "skills": "tableau"
  },
  {
    "job_id": 357990,
    "job_title": "Data Analyst",
    "salary_year_avg": "115000.0",
    "job_posted_date": "2023-01-19 17:00:07",
    "company_name": "Robert Half",
    "skills": "oracle"
  },
  {
    "job_id": 357990,
    "job_title": "Data Analyst",
    "salary_year_avg": "115000.0",
    "job_posted_date": "2023-01-19 17:00:07",
    "company_name": "Robert Half",
    "skills": "databricks"
  },
  {
    "job_id": 357990,
    "job_title": "Data Analyst",
    "salary_year_avg": "115000.0",
    "job_posted_date": "2023-01-19 17:00:07",
    "company_name": "Robert Half",
    "skills": "sql"
  },
  {
    "job_id": 600392,
    "job_title": "REMOTE PowerBI Data Analyst",
    "salary_year_avg": "107500.0",
    "job_posted_date": "2023-04-04 17:05:54",
    "company_name": "Insight Global",
    "skills": "sql"
  },
  {
    "job_id": 116825,
    "job_title": "Data Analyst",
    "salary_year_avg": "90000.0",
    "job_posted_date": "2023-04-12 17:00:09",
    "company_name": "hackajob",
    "skills": "java"
  },
  {
    "job_id": 116825,
    "job_title": "Data Analyst",
    "salary_year_avg": "90000.0",
    "job_posted_date": "2023-04-12 17:00:09",
    "company_name": "hackajob",
    "skills": "matlab"
  },
  {
    "job_id": 116825,
    "job_title": "Data Analyst",
    "salary_year_avg": "90000.0",
    "job_posted_date": "2023-04-12 17:00:09",
    "company_name": "hackajob",
    "skills": "c#"
  },
  {
    "job_id": 116825,
    "job_title": "Data Analyst",
    "salary_year_avg": "90000.0",
    "job_posted_date": "2023-04-12 17:00:09",
    "company_name": "hackajob",
    "skills": "c++"
  },
  {
    "job_id": 116825,
    "job_title": "Data Analyst",
    "salary_year_avg": "90000.0",
    "job_posted_date": "2023-04-12 17:00:09",
    "company_name": "hackajob",
    "skills": "r"
  },
  {
    "job_id": 116825,
    "job_title": "Data Analyst",
    "salary_year_avg": "90000.0",
    "job_posted_date": "2023-04-12 17:00:09",
    "company_name": "hackajob",
    "skills": "python"
  },
  {
    "job_id": 116825,
    "job_title": "Data Analyst",
    "salary_year_avg": "90000.0",
    "job_posted_date": "2023-04-12 17:00:09",
    "company_name": "hackajob",
    "skills": "sql"
  },
  {
    "job_id": 36488,
    "job_title": "Data Analyst (Remote)",
    "salary_year_avg": "79415.5",
    "job_posted_date": "2023-11-17 17:01:39",
    "company_name": "Texas Workforce Commission",
    "skills": "sas"
  },
  {
    "job_id": 36488,
    "job_title": "Data Analyst (Remote)",
    "salary_year_avg": "79415.5",
    "job_posted_date": "2023-11-17 17:01:39",
    "company_name": "Texas Workforce Commission",
    "skills": "r"
  },
  {
    "job_id": 36488,
    "job_title": "Data Analyst (Remote)",
    "salary_year_avg": "79415.5",
    "job_posted_date": "2023-11-17 17:01:39",
    "company_name": "Texas Workforce Commission",
    "skills": "python"
  },
  {
    "job_id": 36488,
    "job_title": "Data Analyst (Remote)",
    "salary_year_avg": "79415.5",
    "job_posted_date": "2023-11-17 17:01:39",
    "company_name": "Texas Workforce Commission",
    "skills": "microsoft teams"
  },
  {
    "job_id": 36488,
    "job_title": "Data Analyst (Remote)",
    "salary_year_avg": "79415.5",
    "job_posted_date": "2023-11-17 17:01:39",
    "company_name": "Texas Workforce Commission",
    "skills": "spss"
  },
  {
    "job_id": 36488,
    "job_title": "Data Analyst (Remote)",
    "salary_year_avg": "79415.5",
    "job_posted_date": "2023-11-17 17:01:39",
    "company_name": "Texas Workforce Commission",
    "skills": "sas"
  },
  {
    "job_id": 36488,
    "job_title": "Data Analyst (Remote)",
    "salary_year_avg": "79415.5",
    "job_posted_date": "2023-11-17 17:01:39",
    "company_name": "Texas Workforce Commission",
    "skills": "power bi"
  },
  {
    "job_id": 36488,
    "job_title": "Data Analyst (Remote)",
    "salary_year_avg": "79415.5",
    "job_posted_date": "2023-11-17 17:01:39",
    "company_name": "Texas Workforce Commission",
    "skills": "tableau"
  },
  {
    "job_id": 36488,
    "job_title": "Data Analyst (Remote)",
    "salary_year_avg": "79415.5",
    "job_posted_date": "2023-11-17 17:01:39",
    "company_name": "Texas Workforce Commission",
    "skills": "go"
  },
  {
    "job_id": 36488,
    "job_title": "Data Analyst (Remote)",
    "salary_year_avg": "79415.5",
    "job_posted_date": "2023-11-17 17:01:39",
    "company_name": "Texas Workforce Commission",
    "skills": "sql"
  },
  {
    "job_id": 60732,
    "job_title": "Data Analyst (SQL) :Role 3354",
    "salary_year_avg": "67500.0",
    "job_posted_date": "2023-04-11 17:01:23",
    "company_name": "iTalent Digital",
    "skills": "sql"
  },
  {
    "job_id": 60732,
    "job_title": "Data Analyst (SQL) :Role 3354",
    "salary_year_avg": "67500.0",
    "job_posted_date": "2023-04-11 17:01:23",
    "company_name": "iTalent Digital",
    "skills": "tableau"
  },
  {
    "job_id": 60732,
    "job_title": "Data Analyst (SQL) :Role 3354",
    "salary_year_avg": "67500.0",
    "job_posted_date": "2023-04-11 17:01:23",
    "company_name": "iTalent Digital",
    "skills": "excel"
  },
  {
    "job_id": 60732,
    "job_title": "Data Analyst (SQL) :Role 3354",
    "salary_year_avg": "67500.0",
    "job_posted_date": "2023-04-11 17:01:23",
    "company_name": "iTalent Digital",
    "skills": "express"
  },
  {
    "job_id": 60732,
    "job_title": "Data Analyst (SQL) :Role 3354",
    "salary_year_avg": "67500.0",
    "job_posted_date": "2023-04-11 17:01:23",
    "company_name": "iTalent Digital",
    "skills": "python"
  },
  {
    "job_id": 272662,
    "job_title": "Business Intelligence Engineer",
    "salary_year_avg": "62000.0",
    "job_posted_date": "2023-05-31 17:53:38",
    "company_name": "Neurons Lab",
    "skills": "redshift"
  },
  {
    "job_id": 272662,
    "job_title": "Business Intelligence Engineer",
    "salary_year_avg": "62000.0",
    "job_posted_date": "2023-05-31 17:53:38",
    "company_name": "Neurons Lab",
    "skills": "sql"
  },
  {
    "job_id": 272662,
    "job_title": "Business Intelligence Engineer",
    "salary_year_avg": "62000.0",
    "job_posted_date": "2023-05-31 17:53:38",
    "company_name": "Neurons Lab",
    "skills": "power bi"
  },
  {
    "job_id": 272662,
    "job_title": "Business Intelligence Engineer",
    "salary_year_avg": "62000.0",
    "job_posted_date": "2023-05-31 17:53:38",
    "company_name": "Neurons Lab",
    "skills": "aws"
  },
  {
    "job_id": 272662,
    "job_title": "Business Intelligence Engineer",
    "salary_year_avg": "62000.0",
    "job_posted_date": "2023-05-31 17:53:38",
    "company_name": "Neurons Lab",
    "skills": "tableau"
  }
]
​ */