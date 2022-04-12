-- relationship between employee, regions and territories

with employee as (
    select * from {{ ref('stg_employees') }}
),

region as (
    select * from {{ ref('stg_regions') }}
),

territory as (
    select * from {{ ref('stg_territories') }}
)

select e.firstName,
    e.lastName,
    e.city,
    r.name as region,
    t.name as territory
from employee e 
left join territory t on e.territoryID = t.territoryID
left join region r on r.regionID = t.regionID