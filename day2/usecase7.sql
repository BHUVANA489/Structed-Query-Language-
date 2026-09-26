USE cdg_hyd_jfs_058;

SELECT * FROM vehicle;


INSERT INTO vehicle
(registration_number, owner_name, manufacturer, model, vehicle_type, fuel_type, manufacture_year, purchase_date, color, odometer_km, insurance_expiry, vehicle_status)
VALUES
('AP05LM2468', 'Karthik Reddy', 'Kia', 'Seltos', 'CAR', 'PETROL', 2023, '2023-06-20', 'Black', 28000, '2027-06-19', 'ACTIVE');


INSERT INTO vehicle
(registration_number, owner_name, manufacturer, model, vehicle_type, fuel_type, manufacture_year, purchase_date, color, odometer_km, insurance_expiry, vehicle_status)
VALUES
('TS10NP3579', 'Divya Nair', 'TVS', 'Jupiter', 'MOTORCYCLE', 'PETROL', 2022, NULL, 'Blue', 12500, '2027-01-15', 'ACTIVE'),
('KA03QR4680', 'Sunrise Logistics', 'Ashok Leyland', 'Dost', 'TRUCK', 'DIESEL', 2021, '2021-04-12', 'White', 98000, '2027-04-11', 'IN_SERVICE');


INSERT INTO vehicle
(registration_number, owner_name, manufacturer, model, vehicle_type, fuel_type, manufacture_year, purchase_date, color, odometer_km, insurance_expiry, vehicle_status)
VALUES
('MH14ST5791', 'Pooja Desai', 'Maruti Suzuki', 'Eeco', 'VAN', 'PETROL', 2023, '2023-09-05', 'Silver', 31000, NULL, 'ACTIVE'),
('AP16UV6802', 'City Transport Services', 'Tata Motors', 'Starbus', 'BUS', 'DIESEL', 2011, NULL, 'Yellow', 420000, NULL, 'SCRAPPED');


-- Valid odometer value
INSERT INTO vehicle
(registration_number, owner_name, manufacturer, model, vehicle_type, fuel_type, manufacture_year, purchase_date, color, odometer_km, insurance_expiry, vehicle_status)
VALUES
('AP05LM2469', 'Karthik Reddy', 'Kia', 'Seltos', 'CAR', 'PETROL', 2023, '2023-06-20', 'Black', 28000, '2027-06-19', 'ACTIVE');


-- Valid vehicle type
INSERT INTO vehicle
(registration_number, owner_name, manufacturer, model, vehicle_type, fuel_type, manufacture_year, purchase_date, color, odometer_km, insurance_expiry, vehicle_status)
VALUES
('TS10NP3576', 'Divya Nair', 'Kia', 'Sonet', 'CAR', 'PETROL', 2022, NULL, 'Blue', 12500, '2027-01-15', 'ACTIVE');


-- Valid fuel type
INSERT INTO vehicle
(registration_number, owner_name, manufacturer, model, vehicle_type, fuel_type, manufacture_year, purchase_date, color, odometer_km, insurance_expiry, vehicle_status)
VALUES
('MH14ST5794', 'Pooja Desai', 'Toyota', 'Mirai', 'CAR', 'ELECTRIC', 2024, '2024-01-20', 'Silver', 18000, NULL, 'ACTIVE');


-- Unique registration number
INSERT INTO vehicle
(registration_number, owner_name, manufacturer, model, vehicle_type, fuel_type, manufacture_year, purchase_date, color, odometer_km, insurance_expiry, vehicle_status)
VALUES
('MH14ST5792', 'Rakesh Joshi', 'Maruti Suzuki', 'Eeco', 'VAN', 'PETROL', 2023, '2023-09-05', 'Silver', 31000, NULL, 'ACTIVE');


UPDATE vehicle
SET odometer_km = odometer_km + 750
WHERE registration_number = 'AP05LM2468';


UPDATE vehicle
SET insurance_expiry = '2027-09-05'
WHERE registration_number = 'MH14ST5791';


UPDATE vehicle
SET vehicle_status = 'ACTIVE'
WHERE registration_number = 'KA03QR4680'
AND vehicle_status = 'IN_SERVICE';


UPDATE vehicle
SET color = 'Matte Blue'
WHERE registration_number = 'TS10NP3579';


UPDATE vehicle
SET odometer_km = odometer_km + 1000
WHERE vehicle_status = 'ACTIVE';


SELECT * FROM vehicle
WHERE registration_number = 'AP16UV6802';


DELETE FROM vehicle
WHERE registration_number = 'AP16UV6802';


INSERT INTO vehicle
(registration_number, owner_name, manufacturer, model, vehicle_type, fuel_type, manufacture_year, purchase_date, color, odometer_km, insurance_expiry, vehicle_status)
VALUES
('TEST00TMP02', 'Sneha Kapoor', 'Hyundai', 'Venue', 'CAR', 'PETROL', 2024, '2024-03-15', 'Grey', 16000, NULL, 'ACTIVE');


SELECT * FROM vehicle;


DELETE FROM vehicle
WHERE registration_number = 'TEST00TMP02';