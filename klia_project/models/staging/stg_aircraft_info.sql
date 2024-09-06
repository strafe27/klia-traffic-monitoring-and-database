{{ config(materialized='view') }}

with aircraft_info as (
    select * 
    from {{ source('klia','raw_aircraft_info')}}  -- Reference to the raw table in a different database
)

select * 
from aircraft_info