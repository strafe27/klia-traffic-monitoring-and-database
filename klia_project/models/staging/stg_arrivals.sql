{{ config(materialized='view') }}

with arrivals as (
    select * 
    from {{ source('klia','raw_arrivals')}}  -- Reference to the raw table in a different database
)

select * 
from arrivals