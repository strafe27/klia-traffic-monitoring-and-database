{{ config(materialized='view') }}

with departures as (
    select * 
    from {{ source('klia','raw_departures')}}  -- Reference to the raw table in a different database
)

select * 
from departures