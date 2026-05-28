CREATE TABLE FactTrip (
    FactTripKey BIGINT IDENTITY(1,1) PRIMARY KEY,
    TripID VARCHAR(100) NOT NULL,
    PickupDateKey INT NOT NULL,
    DropoffDateKey INT NOT NULL,
    PickupLocationKey INT NOT NULL,
    DropoffLocationKey INT NOT NULL,
    PaymentTypeKey INT NOT NULL,
    RateCodeKey INT NOT NULL,
    VendorKey INT NOT NULL,
    StoreAndFwdFlag CHAR(1) NULL,
    PassengerCount INT NULL,
    TripDistance DECIMAL(10,2) NULL,
    FareAmount DECIMAL(10,2) NULL,
    TipAmount DECIMAL(10,2) NULL,
    TollsAmount DECIMAL(10,2) NULL,
    TotalAmount DECIMAL(10,2) NULL,
    TripDurationMinutes INT NULL
);

ALTER TABLE FactTrip
ADD CONSTRAINT FK_FactTrip_PickupDate
FOREIGN KEY (PickupDateKey) REFERENCES DimDate(DateKey);

ALTER TABLE FactTrip
ADD CONSTRAINT FK_FactTrip_DropoffDate
FOREIGN KEY (DropoffDateKey) REFERENCES DimDate(DateKey);

ALTER TABLE FactTrip
ADD CONSTRAINT FK_FactTrip_PickupLocation
FOREIGN KEY (PickupLocationKey) REFERENCES DimLocation(LocationKey);

ALTER TABLE FactTrip
ADD CONSTRAINT FK_FactTrip_DropoffLocation
FOREIGN KEY (DropoffLocationKey) REFERENCES DimLocation(LocationKey);

ALTER TABLE FactTrip
ADD CONSTRAINT FK_FactTrip_PaymentType
FOREIGN KEY (PaymentTypeKey) REFERENCES DimPaymentType(PaymentTypeKey);

ALTER TABLE FactTrip
ADD CONSTRAINT FK_FactTrip_RateCode
FOREIGN KEY (RateCodeKey) REFERENCES DimRateCode(RateCodeKey);
