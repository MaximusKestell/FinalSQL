CREATE DATABASE TobaccoStore
USE TobaccoStore

CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    Name VARCHAR(100),
    Email VARCHAR(100),
    Phone VARCHAR(100),
    LoyaltyPoints INT DEFAULT 0
);

CREATE TABLE Stores (
    StoreID INT PRIMARY KEY,
    StoreName VARCHAR(100),
    City VARCHAR(100),
    State VARCHAR(100)
);

CREATE TABLE Products (
    ProductID INTEGER PRIMARY KEY,
    Name TEXT,
    Description TEXT,
    Price REAL,
    QuantityStock INTEGER
);

CREATE TABLE Orders (
    OrderItemID INTEGER PRIMARY KEY,
    CustomerID INTEGER,
    StoreID INTEGER,
    OrderDate TEXT,
    TotalAmmount REAL,
    TaxAmmount REAL,
    FORIEGN KEY (OrderID) REFERENCES Orders(OrderID),
    FORIEGN KEY (ProductID) REFERENCES Products(ProductID)
);

CREATE TABLE OrderItems (
    OrderItemID INTEGER PRIMARY KEY,
    OrderID INTEGER,
    ProductID INTEGER,
    Quantity INTEGER,
    PricePerUnit REAL,
    FORIEGN KEY (OrderID) REFERENCES Orders (OrderID),
    FORIEGN KEY (ProductID) REFERENCES Products(ProductID)
);

CREATE TABLE Tracking (
    TrackingID INTEGER PRIMARY KEY,
    OrderID INTEGER,
    TrackingNumber TEXT,
    Status TEXT,
    EstimatedDelivery TEXT,
    FORIEGN KEY (OrderID) REFERENCES Orders(OrderID)
);

CREATE TABLE Users (
    UserID INTEGER PRIMARY KEY,
    Username TEXT UNIQUE,
    Password TEXT UNIQUE
);

-- maybe add price table 