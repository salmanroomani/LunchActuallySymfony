
/*
 Creating Tables with Primary keys , Foriegn Key, Index and Cascade Operations.
 
 NOTE : Not adding auto increment for demo only. 
*/
CREATE TABLE Hotels(
  HotelId  INT NOT NULL,
  HotelName varchar(100) NOT NULL,
  HotelAddress varchar(200),
  StarRatings varchar(20),
  PRIMARY KEY (HotelId)
);

/*
 one to many: Hotel has many Rooms

 Applying Delete Cascade Operation and Foreign Key
*/

CREATE TABLE Rooms (
  RoomId  INT  NOT NULL,
  HotelId integer NOT NULL,
  RoomNumber varchar(50),
  PRIMARY KEY (RoomId),
  FOREIGN KEY (HotelId) REFERENCES Hotels(HotelId) ON DELETE CASCADE
);

/*
  Creating Index on Hotel Name
*/
CREATE INDEX idx_HotelName ON Hotels (HotelName);


/*
 Inserting values in Tables 
*/

INSERT INTO Hotels (HotelId, HotelName, HotelAddress, StarRatings) VALUES
  (1, 'Bangkok Hotel', '21 A Sukhumwit Road , Bangkok', '5 Star'),
  (2, 'Phuket Hotel', '32 Patong Beach Road, Phuket', '4 Star'),
  (3, 'Pattaya Hotel', '920 Patayya Road, Pattaya', '3 Star');


INSERT INTO Rooms (RoomId, HotelId, RoomNumber) VALUES
  (1, 1, '101'),
  (2, 1, '102'),
  (3, 1, '103'),
  (4, 2, '201'),
  (5, 2, '202'),
  (6, 2, '203'),
  (7, 3, '301'),
  (8, 3, '302'),
  (9, 3, '302'),
  (10, 3, '304');
