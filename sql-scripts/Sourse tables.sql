CREATE TABLE SrcPaymentType (
    PaymentID INT PRIMARY KEY,
    PaymentName VARCHAR(50) NOT NULL
);

INSERT INTO SrcPaymentType (PaymentID, PaymentName)
VALUES
(1, 'Credit Card'),
(2, 'Cash'),
(3, 'No Charge'),
(4, 'Dispute'),
(5, 'Unknown'),
(6, 'Voided Trip');


CREATE TABLE SrcRateCode (
    RateCodeID INT PRIMARY KEY,
    RateCodeName VARCHAR(100) NOT NULL
);

INSERT INTO SrcRateCode (RateCodeID, RateCodeName)
VALUES
(1, 'Standard Rate'),
(2, 'JFK'),
(3, 'Newark'),
(4, 'Nassau or Westchester'),
(5, 'Negotiated Fare'),
(6, 'Group Ride');



CREATE TABLE SrcVendor (
    VendorID INT PRIMARY KEY,
    VendorName VARCHAR(100) NOT NULL
);

INSERT INTO SrcVendor (VendorID, VendorName)
VALUES
(1, 'Creative Mobile Technologies, LLC'),
(2, 'VeriFone Inc.');

