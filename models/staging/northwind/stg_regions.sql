select
    regionID,
    regionDescription as name
from {{ ref('base_regions') }}