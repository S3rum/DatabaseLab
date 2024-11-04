.open testdb.db
PRAGMA foreign_keys = ON;



/*
INSERT INTO Hotels VALUES (15, "Horizon", "Ioannina");

INSERT INTO Rooms(hotelID,roomNum,floorNum,bedNum)
VALUES (15,3,2,3);

INSERT INTO Reservations(reservationID,hotelID,roomNum,clientName,arrivalDate,departureDate)
VALUES (8,15,3,"John Smith","10-10-2024","12-10-2024");

*/
DELETE FROM Reservations WHERE reservationID = 8;
SELECT * FROM Hotels;
SELECT * FROM Rooms;
SELECT * FROM Reservations;