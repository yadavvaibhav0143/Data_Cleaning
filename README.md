# Data Cleaning Project using SQL Server

### Project Overview

This project focuses on cleaning and preparing a real-world dataset, NashvilleHousingData, for analysis using SQL Server. The dataset contains records related to housing properties, including sale dates, property addresses, and other relevant information. The primary goal is to ensure data consistency, accuracy, and completeness by addressing common data quality issues such as inconsistent date formats, missing values, and incorrect data types.

### Objectives

#### Standardizing Date Formats:

Converting date values into a consistent format to facilitate accurate analysis and reporting.

#### Handling Missing Data:

Detecting and resolving missing values in critical fields, ensuring the dataset is complete and reliable.

#### Correcting Data Types:

Ensuring that all columns have appropriate data types for their intended use, which improves data integrity and prevents errors during analysis.

### Project Breakdown

#### Standardizing Date Formats

One common issue in datasets is inconsistent date formats. In this project, the `SaleDate` column in the `NashvilleHousingData` table was cleaned by;

##### Converting Date Values:

The script converts the `SaleDate` from various formats into a standardized date format using the `CONVERT()` function.

##### Creating a New Date Column:

A new column, `SaleDateConverted`, was added to store the standardized date values.

```sql
Add a new column for the converted date
ALTER TABLE NashvilleHousingData
ADD SaleDateConverted DATE;

Update the new column with standardized date values
UPDATE NashvilleHousingData
SET SaleDateConverted = CONVERT(DATE, SaleDate);
```

#### Handling Missing Data

Missing data, especially in key columns like property addresses, can lead to incomplete analysis. This project includes steps to;

##### Identify Missing Values:

The script identifies records where the PropertyAddress is missing or null.

##### Populate Missing Data:

Strategies are applied to fill in missing addresses, either by inferring from other related fields or through logical assumptions.

```sql
Select records with missing property addresses
SELECT *
FROM NashvilleHousingData
WHERE PropertyAddress IS NULL;

Example strategy to populate missing addresses
UPDATE NashvilleHousingData
SET PropertyAddress = CONCAT(AddressPart1, ' ', AddressPart2)
WHERE PropertyAddress IS NULL;
```

#### Correcting Data Types

Ensuring that each column has the correct data type is crucial for data integrity. In this project, the SQL script:

##### Converts Data Types:

Converts columns that were incorrectly typed (e.g., strings representing dates or numbers) into their correct data types.

##### Adds New Columns:

In some cases, new columns with the correct data type were added to replace or supplement existing ones.

```sql
Example of converting a column to the correct data type
ALTER TABLE NashvilleHousingData
ALTER COLUMN SalePrice DECIMAL(18, 2);
```

### Dataset

The dataset used in this project is `NashvilleHousingData`, which contains various records related to housing sales and properties.

### Conclusion

This project showcases the importance of data cleaning in ensuring the quality and reliability of data used in further analysis. By standardizing date formats, handling missing data, and ensuring correct data types, the dataset is prepared for more accurate and meaningful analysis.

### License

This project is licensed under the MIT License - see the LICENSE file for details.

