SELECT
    job_id,
    job_title,
    job_location,
    job_schedule_type,
    salary_year_avg,
    job_posted_date,
    name as company_name
FROM
    job_postings_fact as jpf
LEFT JOIN 
    company_dim as cd ON jpf.company_id = cd.company_id
WHERE
    job_title_short like '%Data_Analyst%' AND
    job_location = 'Anywhere' AND
    salary_year_avg IS NOT NULL 
ORDER BY 
    salary_year_avg DESC
LIMIT 10 ;