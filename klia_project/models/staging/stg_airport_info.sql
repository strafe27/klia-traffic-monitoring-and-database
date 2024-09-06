{{ config(materialized='view') }}

WITH airport_info AS (
    SELECT 
        origin AS airport_name,  -- Renaming origin to airport_name
        country,
        iata_code,
        icao_code,
        city,
        latitude,
        longitude,
        elevation_ft,
        type,
        timezone,
        runways,
        passenger_volume
    FROM {{ source('klia', 'raw_airport_info') }}  -- Reference to the raw table in a different database
)

SELECT * 
FROM airport_info
