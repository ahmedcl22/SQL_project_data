SELECT 
    skills,
    ROUND(AVG(salary_year_avg),0) AS avg_salary
FROM job_postings_fact
INNER JOIN skills_job_dim ON job_postings_fact.job_id = skills_job_dim.job_id
INNER JOIN skills_dim ON skills_job_dim.skill_id = skills_dim.skill_id
WHERE 
    job_title_short = 'Data Analyst' AND
    salary_year_avg IS NOT NULL
    -- job_work_from_home = TRUE
GROUP BY
    skills
ORDER BY
    avg_salary DESC

LIMIT 25;

/* Here are some insights into the top-paying skills for data analysts based on the data provided:

Broad Range of Skills:

The list spans a broad skillset, indicating that high salaries are associated not just with core data analysis tools, but also with specialized technologies in areas like machine learning, DevOps, cloud, data engineering, and even blockchain.
Machine Learning and AI Frameworks:

Skills in popular machine learning and AI frameworks like mxnet, keras, pytorch, tensorflow, and Hugging Face are all among the top 25. This suggests that machine learning and AI expertise continue to be in high demand and are highly rewarded for data analysts. These frameworks enable advanced analytics, model training, and deployment which are highly sought after in AI-focused industries.
Cloud and DevOps Tools:

Cloud and DevOps-related skills, such as Terraform, GitLab, VMware, Twilio, and Puppet, indicate the importance of skills that manage infrastructure, deployment, and collaboration in data-focused environments. This trend shows that data analysts with cloud and DevOps skills can command higher salaries, likely due to their ability to manage and deploy data solutions effectively.
Data Engineering and Big Data Skills:

Skills such as Kafka, Cassandra, and Airflow point to the importance of data engineering and big data pipelines. These skills are essential for handling large datasets, creating data workflows, and maintaining data pipelines, reflecting the shift in data analytics roles towards data engineering as data volumes grow.
Blockchain and Niche Technologies:

Solidity, a language for smart contract development on blockchain platforms, is very high-paying, even though it's typically outside the core data analytics skillset. This suggests that data analysts with knowledge in blockchain technology are highly valued, likely due to the specialized nature of this field and the high demand for analytics in blockchain applications.
Version Control and Collaboration Tools:

Tools like SVN, GitLab, Bitbucket, and Atlassian highlight the value of collaboration and version control in analytics workflows. These skills are critical for version tracking, code sharing, and project management in team-based data analysis environments, helping analysts work effectively with other technical teams.
High Demand for Open-Source Skills:

Many of these high-paying skills are tied to open-source technologies like Golang, Pytorch, Kafka, Ansible, and Terraform. This highlights the importance of open-source expertise in analytics and software development, as open-source tools are widely used in data science and engineering.
In summary, data analysts who can bridge data science, engineering, and DevOps skills are highly valued. Those who have expertise in machine learning frameworks, cloud infrastructure management, and big data tools can command top salaries, reflecting a demand for a hybrid set of skills that enable robust, scalable data solutions.


[
  {
    "skills": "svn",
    "avg_salary": "400000"
  },
  {
    "skills": "solidity",
    "avg_salary": "179000"
  },
  {
    "skills": "couchbase",
    "avg_salary": "160515"
  },
  {
    "skills": "datarobot",
    "avg_salary": "155486"
  },
  {
    "skills": "golang",
    "avg_salary": "155000"
  },
  {
    "skills": "mxnet",
    "avg_salary": "149000"
  },
  {
    "skills": "dplyr",
    "avg_salary": "147633"
  },
  {
    "skills": "vmware",
    "avg_salary": "147500"
  },
  {
    "skills": "terraform",
    "avg_salary": "146734"
  },
  {
    "skills": "twilio",
    "avg_salary": "138500"
  },
  {
    "skills": "gitlab",
    "avg_salary": "134126"
  },
  {
    "skills": "kafka",
    "avg_salary": "129999"
  },
  {
    "skills": "puppet",
    "avg_salary": "129820"
  },
  {
    "skills": "keras",
    "avg_salary": "127013"
  },
  {
    "skills": "pytorch",
    "avg_salary": "125226"
  },
  {
    "skills": "perl",
    "avg_salary": "124686"
  },
  {
    "skills": "ansible",
    "avg_salary": "124370"
  },
  {
    "skills": "hugging face",
    "avg_salary": "123950"
  },
  {
    "skills": "tensorflow",
    "avg_salary": "120647"
  },
  {
    "skills": "cassandra",
    "avg_salary": "118407"
  },
  {
    "skills": "notion",
    "avg_salary": "118092"
  },
  {
    "skills": "atlassian",
    "avg_salary": "117966"
  },
  {
    "skills": "bitbucket",
    "avg_salary": "116712"
  },
  {
    "skills": "airflow",
    "avg_salary": "116387"
  },
  {
    "skills": "scala",
    "avg_salary": "115480"
  }
]



 */