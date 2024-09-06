# End to End Data Lake and Data Warehouse Project using Databricks, Apache Spark, Synapse Analytics and PowerBI.

## Overview

KLIA Flight Data Monitoring and Databasing is a data engineering project built to ingest, process, database and analyze arrivals and departures flight data in KLIA.

However, for documentation sake, the data warehousing part is also done using dbt in the klia_project folder

Tools used : Azure Databricks, Azure Synapse, dbt + Postgredsql, Azure Workflow, PowerBi
Programming language: SQL, Python, Pyspark
Techniques used : API data ingesting, CI/CD pipeline + scheduling, Data Lake, Data Warehousing, Data Visualisation

## Project Workflow

1. **Data Ingestion**
   - **Source**: FlightAware AeroAPI
       -**Description**: Hourly data ingestion triggered by Azure Workflow

<p align="center">
  <img src="https://github.com/user-attachments/assets/bb0d09b5-bbe0-4658-8820-7cae1b1f9c5e" alt="Data Pipeline Diagram"/>
</p>

2. **CI/CD with Databricks Workflow in Data Lake Architecture**
   - **Task**: Utilise Databricks Notebook with Workflow for data ingesting in parquet format. Hourly data is ingested then compiled.
    
<p align="center">
  <img src="https://github.com/user-attachments/assets/1c1f8d32-1357-4949-b992-8813c89b900c" alt="Data Pipeline Diagram"/>
</p>

3. **Data Warehousing using Azure Synapse**
   - **Stages Created**:
     - **Staging**: Preliminary data processing and preparation.
     - **Data Mart, Fact Table, Dim Table**: Using Dim and Fact tables, data marts are created for strategic teams use.

<p align="center">
  <img src="https://github.com/user-attachments/assets/cdcf762f-3046-4ce2-8e13-e12c00401122" alt="Data Pipeline Diagram"/>
</p>

- **Data Schema**: The relationship between the tables can be seen below

<p align="center">
  <img src="https://github.com/user-attachments/assets/53224159-eb90-4ef9-8c76-16aec593d281" alt="Data Pipeline Diagram"/>
</p>

4. **Visualization**
   - **Tool Used**: Power BI for creating interactive visualizations and reports.

<p align="center">
  <img src="https://github.com/user-attachments/assets/b92d1b7e-139d-4e7b-bdf0-7551d1b81c69" alt="Data Pipeline Diagram"/>
</p>

6. **Findings ( all findings are between 29 Aug to 1 Sept )**
   - The most popular route pair to and from KLIA would be the Singapore Changi Airport with a whopping total of 540 flights. Almost 200 more flights than Jakarta Soekarno Intl Airport, Indonesia, at 364 flights. On the third place would be Kuching Intl Airport with 342      flights followed close by Kota Kinabalu Intl Airport with 328 flights.

<p align="center">
  <img src="https://github.com/user-attachments/assets/f7b1bf4a-f146-4662-9803-ab43e37e0985" alt="Data Pipeline Diagram"/>
</p>

   - The average delay across all flights is approximately 23.77 minutes.
   - The most common flight would be the A320 Airbus with 2306 flights within the week
   - The average number of flights daily is around 950 flights, which slowly becomes busier nearing the weekend


