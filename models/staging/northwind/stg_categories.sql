select
    categoryID,
    categoryName as name,
    description
from {{ ref('base_categories') }}