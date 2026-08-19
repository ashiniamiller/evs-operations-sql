# EVS Operations SQL Analysis

## Overview

This project analyzes operational data from a fictional Environmental Services (EVS) company to identify trends in revenue, service volume, client performance, and employee workload.

The goal was to use SQL to answer practical business questions that could support operational and management decisions.

## Business Questions

The analysis focuses on:

1. Which service types generate the most revenue?
2. Which service types have the highest job volume?
3. Which services generate the highest average revenue per job?
4. Which clients generate the most revenue?
5. Which clients have the highest job volume?
6. Which clients generate the highest average revenue per job?
7. Which employees have the most job assignments?
8. Which employees have the most assigned hours?
9. Which service types generate more than $20,000 in revenue?
10. Which employees have the highest overall workload?
11. 
## Key Findings

- Post-Construction generated the highest average revenue per job.
- Food Service Cleaning had the highest job volume.
- Service types varied significantly in revenue potential and workload.
- Employee workload analysis identified differences in assigned jobs and hours.
- Client-level analysis highlighted the accounts contributing the most revenue.

## Tools & Technologies

- PostgreSQL
- SQL
- pgAdmin
- GitHub

## SQL Skills Demonstrated

- SELECT
- FROM
- JOIN
- ON
- GROUP BY
- HAVING
- ORDER BY
- SUM()
- COUNT()
- AVG()
- ROUND()
- Column aliases

## Key Findings

### Service Performance

Post-Construction generated the highest average revenue per job at approximately **$3,155**.

Large Event services ranked second at approximately **$2,427** per job.

Food Service Cleaning had the highest job volume with **19 jobs**.

### Client Performance

Walmart generated **$34,700** in total revenue across **11 jobs**.

Blue Wahoos Events generated approximately **$33,975** across **14 jobs**.

Panhandle Office Group generated approximately **$21,450** across **32 jobs**, demonstrating high job volume but a lower average revenue per job.

### Employee Workload

Employee assignment data was analyzed using job counts and total assigned hours.

The workload analysis helps identify employees receiving a higher volume of assignments and allows management to compare assignment volume with total scheduled hours.

## Business Recommendations

Based on the analysis:

- Prioritize higher-value service categories such as Post-Construction and Large Events.
- Evaluate opportunities to increase pricing or upsell services with lower average revenue per job.
- Monitor high-volume clients to ensure service capacity supports recurring demand.
- Review employee workloads to identify potential staffing imbalances.
- Use revenue and job-volume data together rather than relying on revenue alone when evaluating clients and services.

## Project Structure

```text
evs-operations-sql/
│
├── README.md
│
└── sql/
    └── evs_operations_analysis.sql
