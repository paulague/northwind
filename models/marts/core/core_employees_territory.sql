with employees as (
    select * from {{ ref('stg_employees') }}
),

territory as (
    select * from {{ ref('stg_territories') }}
)

select e.firstName,
    e.lastName,
    e.city,
    t.name
from employees e
left join territory t on e.territoryID = t.territoryID