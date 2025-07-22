-- GreenStay Database Setup
-- Create this database in phpMyAdmin: findhostels

CREATE DATABASE IF NOT EXISTS findhostels;
USE findhostels;

-- Students table
CREATE TABLE students (
    uid INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    gender VARCHAR(10),
    sid VARCHAR(20) UNIQUE NOT NULL,
    batch VARCHAR(10),
    email VARCHAR(100) UNIQUE NOT NULL,
    phone VARCHAR(15),
    address_l1 VARCHAR(255),
    address_l2 VARCHAR(255),
    password VARCHAR(255) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Landlords table
CREATE TABLE land_loards (
    uid INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    gender VARCHAR(10),
    nic VARCHAR(20) UNIQUE NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    phone VARCHAR(15),
    address_l1 VARCHAR(255),
    address_l2 VARCHAR(255),
    password VARCHAR(255) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Advertisements table
CREATE TABLE advertisements (
    aid INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    description TEXT,
    facilities TEXT,
    price DECIMAL(10,2),
    gender VARCHAR(10),
    phone VARCHAR(15),
    address_l1 VARCHAR(255),
    address_l2 VARCHAR(255),
    lat DECIMAL(10, 8),
    lon DECIMAL(11, 8),
    status VARCHAR(20) DEFAULT 'active',
    landlord VARCHAR(20),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (landlord) REFERENCES land_loards(nic)
);

-- Images table
CREATE TABLE img (
    id INT AUTO_INCREMENT PRIMARY KEY,
    ad_id INT,
    img_name VARCHAR(255),
    landlord VARCHAR(20),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (ad_id) REFERENCES advertisements(aid),
    FOREIGN KEY (landlord) REFERENCES land_loards(nic)
);

-- Requests table
CREATE TABLE requests (
    id INT AUTO_INCREMENT PRIMARY KEY,
    landlord VARCHAR(20),
    ad_id INT,
    sid VARCHAR(20),
    status VARCHAR(20) DEFAULT 'pending',
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (landlord) REFERENCES land_loards(nic),
    FOREIGN KEY (ad_id) REFERENCES advertisements(aid),
    FOREIGN KEY (sid) REFERENCES students(sid)
);

-- Articles table
CREATE TABLE articles (
    id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    description TEXT,
    photo VARCHAR(255),
    date TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Insert sample data (optional)
INSERT INTO students (first_name, last_name, gender, sid, batch, email, phone, address_l1, address_l2, password) 
VALUES ('John', 'Doe', 'Male', 'S001', '2023', 'john@example.com', '0771234567', '123 Main St', 'Colombo', 'password123');

INSERT INTO land_loards (first_name, last_name, gender, nic, email, phone, address_l1, address_l2, password) 
VALUES ('Jane', 'Smith', 'Female', '123456789V', 'jane@example.com', '0779876543', '456 Oak Ave', 'Kandy', 'password123');
