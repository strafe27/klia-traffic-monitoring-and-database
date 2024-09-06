{{ config(materialized='table') }}

with aircraft_info as (
    select *
    from {{ ref('stg_aircraft_info')}}    
)

select * from aircraft_info