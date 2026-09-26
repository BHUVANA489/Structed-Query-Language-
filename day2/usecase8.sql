USE cdg_hyd_jfs_058;

SELECT * FROM hotel_rooms;


INSERT INTO hotel_rooms
(room_number, room_type, floor_number, bed_count, max_occupancy, price_per_night, availability_status, has_air_conditioning, smoking_allowed, notes)
VALUES
(701, 'SINGLE', 7, 1, 1, 100.00, 'AVAILABLE', TRUE, FALSE, NULL);


INSERT INTO hotel_rooms
(room_number, room_type, floor_number, bed_count, max_occupancy, price_per_night, availability_status, has_air_conditioning, smoking_allowed, notes)
VALUES
(702, 'DOUBLE', 7, 2, 3, 150.00, 'OCCUPIED', TRUE, FALSE, 'Garden view'),
(703, 'DELUXE', 7, 1, 2, 220.00, 'RESERVED', TRUE, FALSE, 'Balcony');


INSERT INTO hotel_rooms
(room_number, room_type, floor_number, bed_count, max_occupancy, price_per_night, availability_status, has_air_conditioning, smoking_allowed, notes)
VALUES
(704, 'SUITE', 7, 2, 4, 400.00, 'AVAILABLE', TRUE, FALSE, 'Pool view'),
(705, 'SINGLE', 7, 1, 1, 80.00, 'MAINTENANCE', FALSE, FALSE, 'Training room');


-- Valid bed count
INSERT INTO hotel_rooms
(room_number, room_type, floor_number, bed_count, max_occupancy, price_per_night, availability_status, has_air_conditioning, smoking_allowed, notes)
VALUES
(706, 'SINGLE', 7, 1, 1, 110.00, 'AVAILABLE', TRUE, FALSE, 'Extra space');


-- Valid occupancy
INSERT INTO hotel_rooms
(room_number, room_type, floor_number, bed_count, max_occupancy, price_per_night, availability_status, has_air_conditioning, smoking_allowed, notes)
VALUES
(707, 'DOUBLE', 7, 2, 2, 160.00, 'OCCUPIED', TRUE, FALSE, 'City view');


-- Valid price
INSERT INTO hotel_rooms
(room_number, room_type, floor_number, bed_count, max_occupancy, price_per_night, availability_status, has_air_conditioning, smoking_allowed, notes)
VALUES
(708, 'DELUXE', 7, 2, 3, 250.00, 'RESERVED', TRUE, FALSE, 'Balcony');


-- Valid availability status
INSERT INTO hotel_rooms
(room_number, room_type, floor_number, bed_count, max_occupancy, price_per_night, availability_status, has_air_conditioning, smoking_allowed, notes)
VALUES
(709, 'SINGLE', 7, 1, 1, 120.00, 'AVAILABLE', TRUE, FALSE, NULL);


-- Unique room number
INSERT INTO hotel_rooms
(room_number, room_type, floor_number, bed_count, max_occupancy, price_per_night, availability_status, has_air_conditioning, smoking_allowed, notes)
VALUES
(710, 'DELUXE', 7, 2, 3, 300.00, 'OCCUPIED', TRUE, FALSE, 'Mountain view');


UPDATE hotel_rooms
SET price_per_night = price_per_night * 1.10
WHERE room_type = 'SUITE';


UPDATE hotel_rooms
SET availability_status = 'AVAILABLE',
    notes = 'Cleaning completed'
WHERE room_number = 702;


UPDATE hotel_rooms
SET max_occupancy = 3,
    price_per_night = 240.00
WHERE room_number = 703;


UPDATE hotel_rooms
SET notes = 'Scheduled for renovation'
WHERE room_number = 705;


UPDATE hotel_rooms
SET max_occupancy = 3
WHERE room_number = 704;


SELECT * FROM hotel_rooms
WHERE room_number = 705;


DELETE FROM hotel_rooms
WHERE room_number = 705;


INSERT INTO hotel_rooms
(room_number, room_type, floor_number, bed_count, max_occupancy, price_per_night, availability_status, has_air_conditioning, smoking_allowed, notes)
VALUES
(799, 'DELUXE', 7, 2, 3, 280.00, 'OCCUPIED', TRUE, FALSE, 'Pool view');


SELECT * FROM hotel_rooms;


DELETE FROM hotel_rooms
WHERE room_number = 799;