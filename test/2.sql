with company_jobs as(
    select company_id,count(*) as total_jobs
    from job_postings_fact
    group by company_id
)
select company_dim.name,company_jobs.total_jobs
from company_jobs
left join company_dim
on company_jobs.company_id=company_dim.company_id
order by total_jobs desc

select *
from skills_job_dim



--new
select s1.skill_id,s1.skills,s3.postings
from skills_dim as s1
left join(
select skills_job_dim.skill_id,count(*) as postings
from skills_job_dim
group by skill_id 
) as s3

on s1.skill_id=s3.skill_id
order by s3.postings desc
limit 5




                
                 


 






















































































































