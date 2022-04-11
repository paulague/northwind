select
    orderID,
    customerID,
    employeeID,
    orderDate,
    requiredDate,
    shippedDate,
    shipVia,
    freight,
    shipName,
    shipAddress as street,
    shipCity as city,
    shipRegion as Region,
    shipPostalCode as postalCode
from {{ ref('base_orders')}}