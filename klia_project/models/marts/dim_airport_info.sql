{{ config(materialized='table') }}

with airport_info as (
    select *
    from {{ ref('stg_airport_info')}}    
)

select * from airport_info