# Nashville Housing Data Cleaning using SQL

## Overview

This project focuses on cleaning and preparing a raw housing dataset using Microsoft SQL Server. The objective was to improve data quality by handling missing values, standardizing formats, splitting combined fields, and removing duplicate records to create a cleaner dataset for further analysis and reporting.

## Tools Used

- Microsoft SQL Server (SSMS)
- SQL

## Dataset

The project uses the Nashville Housing dataset containing property sales and ownership information.

## Data Cleaning Steps

The following data cleaning tasks were performed:

- Standardized the `SaleDate` column to the DATE data type.
- Populated missing `PropertyAddress` values using self-joins based on matching `ParcelID`.
- Split `PropertyAddress` into separate Street Address and City columns.
- Split `OwnerAddress` into separate Address, City, and State columns.
- Standardized the `SoldAsVacant` field by converting `Y/N` values to `Yes/No`.
- Identified and removed duplicate records using `ROW_NUMBER()` and Common Table Expressions (CTE).
- Validated each transformation using SQL queries to verify the results.

## Data Quality Checks

Validation queries were included after each major transformation to verify that:

- `SaleDate` was converted to the `DATE` data type.
- Missing `PropertyAddress` values were populated where a matching `ParcelID` had a valid address.
- Property and owner address components were populated correctly.
- `SoldAsVacant` values were standardized from `Y/N` to `Yes/No`.
- Duplicate records based on the defined business-key fields were removed.

## SQL Concepts Used

- UPDATE
- ALTER TABLE
- CASE
- SELF JOIN
- Common Table Expressions (CTE)
- ROW_NUMBER()
- PARTITION BY
- PARSENAME()
- REPLACE()
- SUBSTRING()
- CHARINDEX()
- ISNULL()

## Project Structure

```
Nashville-Housing-Data-Cleaning/
│
├── README.md
├── Nashville_Housing_Data.csv
├── 01_Schema_Setup.sql
└── 02_Data_Cleaning.sql
```

## Outcome

The dataset was successfully cleaned and standardized, making it more suitable for reporting, dashboard creation, and further analytical work.

---
