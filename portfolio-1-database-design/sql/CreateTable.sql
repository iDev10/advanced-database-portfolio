USE trustsend25_db;

SHOW TABLES;

DESCRIBE customers;
DESCRIBE hubs;
DESCRIBE sweepers;

-- Create customers table
CREATE TABLE customers (
    customer_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(50) NOT NULL UNIQUE,
    phone_num VARCHAR(15) NOT NULL UNIQUE,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB;

-- Create hubs tableTables
CREATE TABLE hubs (
    hubs_id INT AUTO_INCREMENT PRIMARY KEY,
    hub_name VARCHAR(100) NOT NULL,
    address VARCHAR(100) NOT NULL,
    city VARCHAR(100) NOT NULL,
    phone_num VARCHAR(15) NOT NULL UNIQUE
) ENGINE=InnoDB;

-- Create Sweepers TABLE
CREATE TABLE sweepers (
    rider_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    phone_num VARCHAR(15) NOT NULL UNIQUE,
    availability_status VARCHAR(20) DEFAULT 'Available'
) ENGINE=InnoDB;

