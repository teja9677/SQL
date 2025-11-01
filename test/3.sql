
select c1.name,s3.postings,s3.size
from company_dim as c1
left join (
select company_id,count(*) as postings
from job_postings_fact 
group by company_id) as s3
on c1.company_id=s3.company_id

 select c1.name,s3.postings,
    case
    when s3.postings<10 then 'SMALL'
    when s3.postings between 10 and 50 then 'MEDIUM'
    when s3.postings>50 then 'LARGE'
    end as size
    from company_dim as c1
left join (
    select company_id, count(*) as postings
    from job_postings_fact 
    group by company_id
) as s3
on c1.company_id = s3.company_id;

