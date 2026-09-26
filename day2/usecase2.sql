USE cdg_hyd_jfs_058;

SELECT * FROM products;

INSERT INTO products 
(sku, product_name, category, brand, unit_price, quantity_in_stock, reorder_level, manufacture_date, expiry_date, product_status)
VALUES 
('SKU-MOU-101', 'Wireless Mouse', 'Accessories', 'LogiTech', 899.00, 45, 10, NULL, NULL, 'ACTIVE');


INSERT INTO products 
(sku, product_name, category, brand, unit_price, quantity_in_stock, reorder_level, manufacture_date, expiry_date, product_status)
VALUES 
('SKU-HDP-102', 'Bluetooth Headphones', 'Accessories', 'SoundMax', 2499.00, 7, 5, '2026-02-10', NULL, 'ACTIVE'),
('SKU-MLK-103', 'Chocolate Milk', 'Beverages', 'MilkyFresh', 90.00, 0, 15, '2026-09-05', '2026-11-05', 'OUT_OF_STOCK');


INSERT INTO products 
(sku, product_name, category, brand, unit_price, quantity_in_stock, reorder_level, manufacture_date, expiry_date, product_status)
VALUES 
('SKU-PEN-104', 'Ball Point Pen Set', 'Stationery', 'WriteWell', 120.00, 100, 20, NULL, NULL, 'ACTIVE'),
('SKU-OLD-105', 'Old Power Bank', 'Accessories', 'PowerMax', 799.00, 0, 15, NULL, NULL, 'DISCONTINUED');


-- negative price
INSERT INTO products 
(sku, product_name, category, brand, unit_price, quantity_in_stock, reorder_level, manufacture_date, expiry_date, product_status)
VALUES 
('SKU-MOU-106', 'Gaming Mouse', 'Accessories', 'GameTech', -1299.00, 12, 5, NULL, NULL, 'ACTIVE');


-- expiry date is earlier than manufacture date
INSERT INTO products 
(sku, product_name, category, brand, unit_price, quantity_in_stock, reorder_level, manufacture_date, expiry_date, product_status)
VALUES 
('SKU-JCE-107', 'Apple Juice', 'Beverages', 'JuicyDay', 150.50, 25, 8, '2026-09-10', '2026-05-10', 'ACTIVE');


-- duplicate sku
INSERT INTO products 
(sku, product_name, category, brand, unit_price, quantity_in_stock, reorder_level, manufacture_date, expiry_date, product_status)
VALUES 
('SKU-MOU-101', 'Office Chair', 'Furniture', 'ComfortPro', 5499.00, 8, 3, NULL, NULL, 'ACTIVE');


UPDATE products 
SET quantity_in_stock = quantity_in_stock + 50, 
    product_status = 'ACTIVE' 
WHERE product_name = 'Chocolate Milk';


UPDATE products 
SET unit_price = ROUND(unit_price * 1.05, 2) 
WHERE category = 'Accessories';


UPDATE products 
SET brand = NULL 
WHERE brand = 'WriteWell';


UPDATE products 
SET reorder_level = 15 
WHERE product_status = 'ACTIVE' 
AND quantity_in_stock < 10;


UPDATE products 
SET quantity_in_stock = -1 
WHERE sku = 'SKU-MOU-101';


SELECT * FROM products 
WHERE sku = 'SKU-OLD-105';

DELETE FROM products 
WHERE sku = 'SKU-OLD-105';


INSERT INTO products 
(sku, product_name, category, brand, unit_price, quantity_in_stock, reorder_level, manufacture_date, expiry_date, product_status)
VALUES 
('SKU-TEMP-888', 'Denim Jacket', 'Clothes', 'UrbanWear', 1899.00, 15, 5, NULL, NULL, 'ACTIVE');


SELECT * FROM products 
WHERE sku = 'SKU-TEMP-888';


DELETE FROM products 
WHERE sku = 'SKU-TEMP-888';
