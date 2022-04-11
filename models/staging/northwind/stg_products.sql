select
    productID,
    productName as name,
    supplierID,
    categoryID,
    quantityPerUnit,
    unitPrice,
    unitsInStock,
    unitsOnOrder,
    reorderLevel,
    discontinued
from {{ ref('base_products') }}