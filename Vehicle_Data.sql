USE cdg_hyd_jfs_058;
CREATE TABLE Vehicles(
   Vehicle_id INT PRIMARY key AUTO_INCREMENT ,
   registration_number VARCHAR(20) NOT NULL UNIQUE,
   owner_name VARCHAR(120) NOT NULL,
   manufacturer VARCHAR(80) NOT NULL,
   model VARCHAR(80) NOT NULL,
   vehicle_type VARCHAR(20) NOT NULL,
   fuel_type VARCHAR(20) NOT NULL,
   manufacture_year YEAR NOT NULL,
   purchase_date DATE,
   color VARCHAR(40) NOT NULL,
   odometer_km INT NOT NULL DEFAULT 0,
   insurance_expiry DATE ,
   vehicle_status VARCHAR(20) NOT NULL DEFAULT 'ACTIVE',
   created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
   CHECK (odometer_km >= 0),
   CHECK (vehicle_type IN ('CAR','MOTORCYCLE','TRUCK','VAN','BUS')),
   CHECK(fuel_type IN('PETROL','DIESEL','ELECTRIC','HYBRID','CNG')),
   CHECK(vehicle_status IN('ACTIVE','IN_SERVICE','SOLD','SCRAPPED'))
   );
   INSERT INTO Vehicles(
      registration_number,owner_name,manufacturer,model,vehicle_type,fuel_type,manufacture_year,purchase_date,color,odometer_km,insurance_expiry,vehicle_status)
      VALUES('AP3356AB1234', 'Kumar', 'Toyota', 'Innova', 'CAR','DIESEL', 2022, '2022-06-15', 'White', 35000,'2027-06-14', 'ACTIVE'),
       ('AP05EF9022', 'Suresh Reddy', 'Tata', 'Prima', 'TRUCK','CNG', 2021, '2021-08-20', 'Blue', 85000,'2026-08-19', 'ACTIVE'),
       ('AP05EF9M22', 'Satish', 'Tata', 'Prima', 'BUS','CNG', 2001, '2021-09-20', 'white', 85050,'2026-09-19', 'ACTIVE');          
 SELECT * FROM vehicles;