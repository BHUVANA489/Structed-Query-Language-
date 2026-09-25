USE cdg_hyd_jfs_058;
DROP TABLE IF EXISTS products;

CREATE TABLE products (
    product_id INT PRIMARY KEY AUTO_INCREMENT,
    sku VARCHAR(20) NOT NULL UNIQUE,
    product_name VARCHAR(150) NOT NULL,
    category VARCHAR(80) NOT NULL,
    brand VARCHAR(80),
    unit_price DECIMAL(12,2) NOT NULL,
    quantity_in_stock INT UNSIGNED NOT NULL DEFAULT 0,
    reorder_level INT UNSIGNED NOT NULL DEFAULT 5,
    manufacture_date DATE,
    expiry_date DATE,
    product_status VARCHAR(15) NOT NULL DEFAULT 'ACTIVE',
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    CHECK (unit_price > 0),
    CHECK (expiry_date IS NULL OR manufacture_date IS NULL OR expiry_date >= manufacture_date),
    CHECK (product_status IN ('ACTIVE', 'OUT_OF_STOCK', 'DISCONTINUED'))
);

INSERT INTO products
(sku, product_name, category, brand, unit_price, quantity_in_stock, reorder_level, manufacture_date, expiry_date, product_status)
VALUES
('SKU001', 'Laptop', 'Electronics', 'Dell', 55000.00, 10, 5, '2026-01-10', '2029-01-10', 'ACTIVE'),
('SKU002', 'Office Chair', 'Furniture', 'Nilkamal', 4500.00, 20, 5, '2026-05-01', NULL, 'ACTIVE');

SELECT * FROM products;
