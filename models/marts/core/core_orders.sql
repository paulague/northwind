-- relationship between orders, customers, employees and shippers

with order as (
    select * from {{ ref('stg_orders') }}
),

employee as (
    select * from {{ ref('stg_employees') }}
),

customer as (
    select * from {{ ref('stg_customers') }}
),

shipper as (
    select * from {{ ref('stg_shippers') }}
)

select o.orderID,
    o.orderDate,
    o.shippedDate,
    o.requiredDate,
    c.companyName as company_customer,
    e.firstName as employee,
    s.companyName as company_shipper
from order o 
left join customer c on o.customerID = c.customerID
left join employee e on o.employeeID = e.employeeID
left join shipper s on o.shipVia = s.shipperID