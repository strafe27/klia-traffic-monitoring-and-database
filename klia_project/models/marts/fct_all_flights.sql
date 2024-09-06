{{ config(materialized='table') }}

with arrivals as (
    select
        flight_id,
        flight_number,
        aircraft_type,
        scheduled_arrival_myt as scheduled_time,  -- Standardized column names
        actual_arrival_myt as actual_time,        -- Standardized column names
        origin,
        destination,
        gate_destination,
        'arrival' as flight_type                -- Adding a column to distinguish between arrival and departure
    from {{ ref('stg_arrivals') }}    -- Reference to the raw arrivals table

), departures as (
    select
        flight_id,
        flight_number,
        aircraft_type,
        scheduled_departure_myt as scheduled_time,
        actual_departure_myt as actual_time,
        origin,
        destination,
        gate_destination,
        'departure' as flight_type
    from {{ ref('stg_departures') }}  -- Reference to the raw departures table

), combined_flights as (
    select * from arrivals
    union all
    select * from departures
)

select *
from combined_flights
