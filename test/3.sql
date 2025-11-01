
select 
from company_dim 
left join (
select company_id,count(*) as postings
from job_postings_fact as j1
group by company_id) as s3
on j1.company_id=s3.company_id

select *,
    case
    when postings<10 then 'SMALL'
    when postings between 10 and 50 then 'MEDIUM'
    when postings>50 then 'LARGE'
    end as size
    from 

