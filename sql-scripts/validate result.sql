-- Switch to the Data Warehouse database
USE TAXI_TRIP_DATA_DW;
GO

-- Row counts for each dimension and fact table
SELECT COUNT(*) AS DimDateRows FROM dbo.DimDate;
SELECT COUNT(*) AS DimVendorRows FROM dbo.DimVendor;
SELECT COUNT(*) AS DimPaymentTypeRows FROM dbo.DimPaymentType;
SELECT COUNT(*) AS DimRateCodeRows FROM dbo.DimRateCode;
SELECT COUNT(*) AS DimLocationRows FROM dbo.DimLocation;
SELECT COUNT(*) AS FactTripRows FROM dbo.FactTrip;

-- Sample records for quick inspection
SELECT TOP 10 * FROM dbo.FactTrip;
SELECT TOP 10 * FROM dbo.DimLocation;

