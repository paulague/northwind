select
    productID,
    unitPrice,
    quantity,
    discount
from {{ ref('base_order_details') }}