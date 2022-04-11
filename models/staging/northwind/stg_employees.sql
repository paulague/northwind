select
    employeeID,
    lastName,
    firstName,
    title,
    titleOfCourtesy,
    birthDate,
    hireDate,
    address as street,
    city,
    region,
    postalCode,
    homePhone as phone,
    notes,
    reportsTo,
    territoryID
from {{ ref('base_employees') }}