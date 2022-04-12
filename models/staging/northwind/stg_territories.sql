select
    territoryID,
    territoryDescription as name,
    regionID
from {{ ref('base_territories') }}