select name
from company_dim
where company_id in(
    select company_id
    from job_postings_fact
    where job_no_degree_mention=true
)