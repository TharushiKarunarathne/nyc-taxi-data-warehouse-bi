CREATE TABLE DimDate (
    DateKey INT PRIMARY KEY,
    FullDate DATE NOT NULL,
    DayNumber INT NOT NULL,
    MonthNumber INT NOT NULL,
    MonthName VARCHAR(20) NOT NULL,
    QuarterNumber INT NOT NULL,
    YearNumber INT NOT NULL,
    DayOfWeekNumber INT NOT NULL,
    DayOfWeekName VARCHAR(20) NOT NULL
);

CREATE TABLE DimLocation (
    LocationKey INT IDENTITY(1,1) PRIMARY KEY,
    ZoneID INT NOT NULL,
    ZoneName VARCHAR(100) NOT NULL,
    Borough VARCHAR(50) NOT NULL,
    StartDate DATE NOT NULL,
    EndDate DATE NULL,
    IsCurrent BIT NOT NULL
);

CREATE TABLE DimPaymentType (
    PaymentTypeKey INT IDENTITY(1,1) PRIMARY KEY,
    PaymentID INT NOT NULL,
    PaymentName VARCHAR(50) NOT NULL
);

CREATE TABLE DimRateCode (
    RateCodeKey INT IDENTITY(1,1) PRIMARY KEY,
    RateCodeID INT NOT NULL,
    RateCodeName VARCHAR(100) NOT NULL
);

CREATE TABLE DimVendor (
    VendorKey INT IDENTITY(1,1) PRIMARY KEY,
    VendorID INT NOT NULL,
    VendorName VARCHAR(100) NOT NULL
);
