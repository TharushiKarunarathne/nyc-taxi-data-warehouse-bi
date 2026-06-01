USE [TAXI_TRIP_DATA_Staging]
GO

CREATE TABLE dbo.StgFactTripCompletionUpdate
(
    TripID VARCHAR(100) NOT NULL,
    accm_txn_complete_time DATETIME2 NOT NULL
);
GO

CREATE TABLE dbo.StgTaxiTrip
(
    StgTripKey INT IDENTITY(1,1) PRIMARY KEY,
    vendor_id INT NULL,
    pickup_datetime DATETIME2 NULL,
    dropoff_datetime DATETIME2 NULL,
    passenger_count INT NULL,
    trip_distance DECIMAL(10,2) NULL,
    rate_code INT NULL,
    store_and_fwd_flag CHAR(1) NULL,
    payment_type INT NULL,
    fare_amount DECIMAL(10,2) NULL,
    tip_amount DECIMAL(10,2) NULL,
    tolls_amount DECIMAL(10,2) NULL,
    total_amount DECIMAL(10,2) NULL,
    pickup_location_id INT NULL,
    dropoff_location_id INT NULL
);
GO

CREATE TABLE dbo.StgTaxiZone
(
    StgZoneKey INT IDENTITY(1,1) PRIMARY KEY,
    zone_id INT NULL,
    zone_name VARCHAR(100) NULL,
    borough VARCHAR(50) NULL
);
GO