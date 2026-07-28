-- =============================================================================================
-- FRAMEWORK RESET & SCHEMA DEPLOYMENT
-- Cleans up any existing legacy/broken schemas to ensure a deterministic, fresh initialization
-- =============================================================================================

DROP TABLE IF EXISTS Nashville_Housing_Data;
GO

CREATE TABLE Nashville_Housing_Data (
    UniqueID BIGINT PRIMARY KEY,
    ParcelID VARCHAR(50) NOT NULL,
    LandUse VARCHAR(50),
    PropertyAddress VARCHAR(200), 
    SaleDate VARCHAR(50),         -- Ingested deliberately as VARCHAR to preserve raw text timestamp strings
    SalePrice DECIMAL(12,2),      -- Enforces exact scale/precision for financial audits (eliminates FLOAT rounding risks)
    LegalReference VARCHAR(50),
    SoldAsVacant VARCHAR(10),
    OwnerName VARCHAR(200),
    OwnerAddress VARCHAR(200),
    Acreage FLOAT,                -- Floating-point value suitable for land area measurements
    TaxDistrict VARCHAR(100),
    LandValue DECIMAL(12,2),      -- Strict decimal precision for property evaluations
    BuildingValue DECIMAL(12,2),   -- Strict decimal precision for property evaluations
    TotalValue DECIMAL(12,2),     -- Strict decimal precision for property evaluations
    YearBuilt INT,
    Bedrooms INT,
    FullBath INT,
    HalfBath INT
);
GO
