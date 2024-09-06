KLIA traffic monitoring and databasing

# End to End CI/CD Azure Data Lake and Data Warehouse Project using Databricks, Apache Spark, Synapse Analytics and PowerBI.

## Overview

The project is called KLIA Flight Data Monitoring and Databasing which a data engineering project built to ingest, process, database and analyze arrivals and departures flight data in KLIA.

However, for documentation sake, the data warehousing part is also done in dbt

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
     - **Data Mart, Fact Table, Dim Table**: Using DIM and FACT tables, data marts are created for strategic team use purposes such as monthly ticket revenue and monthly movie releases.

<p align="center">
  <img src="https://github.com/user-attachments/assets/cdcf762f-3046-4ce2-8e13-e12c00401122" alt="Data Pipeline Diagram"/>
</p>

- **Data Schema**: The relationship between the tables can be seen below

<p align="center">
  <img src="https://github.com/user-attachments/assets/53224159-eb90-4ef9-8c76-16aec593d281" alt="Data Pipeline Diagram"/>
</p>

5. **Visualization**
   - **Tool Used**: Power BI for creating interactive visualizations and reports.

<p align="center">
  <img src="https://github.com/user-attachments/assets/b92d1b7e-139d-4e7b-bdf0-7551d1b81c69" alt="Data Pipeline Diagram"/>
</p>


