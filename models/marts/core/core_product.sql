-- relationship between products, categories and suppliers

with product as (
    select * from {{ ref('stg_products') }}
),

category as (
    select * from {{ ref('stg_categories') }}
),

supplier as (
    select * from {{ ref('stg_suppliers') }}
)

select p.name as product,
    c.name as category,
    p.quantityPerUnit,
    p.unitPrice,
    p.unitsInStock,
    p.unitsOnOrder,
    s.companyName as company,
    s.contactName as contact
from product p
left join category c on p.categoryID = c.categoryID
left join supplier s on p.supplierID = s.supplierID