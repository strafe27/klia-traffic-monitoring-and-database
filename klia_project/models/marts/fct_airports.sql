{{ config(materialized='table') }}

-- CTE for arrivals
with arrivals as (
    select
        origin as airport_name,  -- Airport code of the destination for arrivals
        count(*) as arrival_count      -- Count the number of arrivals at each airport
    from {{ ref('stg_arrivals') }}
    group by origin
),

-- CTE for departures
departures as (
    select
        destination as airport_name,        -- Airport code of the origin for departures
        count(*) as departure_count    -- Count the number of departures from each airport
    from {{ ref('stg_departures') }}
    group by destination
),

-- Combine arrivals and departures
airport_flights as (
    select
        coalesce(a.airport_name, d.airport_name) as airport_name,  -- Merge on airport_code
        coalesce(a.arrival_count, 0) as arrival_flights,             -- Number of arrivals
        coalesce(d.departure_count, 0) as departure_flights,         -- Number of departures
        coalesce(a.arrival_count, 0) + coalesce(d.departure_count, 0) as total_flights  -- Total flights (arrivals + departures)
    from arrivals a
    full outer join departures d
    on a.airport_name = d.airport_name
)

-- Final selection for the fact table
select
    af.airport_name,
    af.arrival_flights,
    af.departure_flights,
    af.total_flights
from airport_flights af
order by total_flights desc
