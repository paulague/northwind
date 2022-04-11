select
    territoryID,
    territoryDescription as name
from {{ ref('base_territories')}}