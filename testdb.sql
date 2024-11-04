.open testdb.db
PRAGMA foreign_keys = ON;

DROP TABLE IF EXISTS Hotels;
DROP TABLE IF EXISTS Rooms;
DROP TABLE IF EXISTS Reservations;

CREATE TABLE Hotels(
    hotelID INT,
    Name CHAR(20),
    Location CHAR(20),
    PRIMARY KEY (hotelID)
);

CREATE TABLE Rooms(
    hotelID INT,
    roomNum INT,
    floorNum INT,
    bedNum INT,
    PRIMARY KEY (roomNum, hotelID),
    FOREIGN KEY (hotelID) REFERENCES Hotels(hotelID)
);


CREATE TABLE Reservations(
    hotelId INT,
    roomNum INT,
    reservationID INT,
    clientName CHAR(20),
    arrivalDate CHAR(10),
    departureDate CHAR(10),
    PRIMARY KEY (reservationID),
    FOREIGN KEY (hotelID,roomNum) REFERENCES Rooms(hotelID,roomNum)
);
