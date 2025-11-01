select comp1.name
from job_postings_fact as jobs1
left join company_dim as comp1
on jobs1.company_id=comp1.company_id
where (extract(quarter from job_posted_date)=2) and jobs1.job_health_insurance=TRUE

 