select
    supplierID,
    companyName,
    contactName,
    contactTitle,
    address as street,
    city,
    region,
    postalCode,
    country,
    phone
from {{ ref('base_suppliers')}}