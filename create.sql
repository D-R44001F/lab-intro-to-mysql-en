-- Create the database
CREATE DATABASE lab_mysql;
USE lab_mysql;

-- Create the 'car' table
CREATE TABLE car (
    car_id INT PRIMARY KEY,
    VIN VARCHAR(20) NOT NULL,
    manufacturer VARCHAR(50),
    model VARCHAR(50),
    year INT,
    color VARCHAR(20)
);

-- Create the 'customer' table
CREATE TABLE customer (
    customer_id INT PRIMARY KEY,
    cust_id INT NOT NULL,
    name VARCHAR(100),
    phone VARCHAR(20),
    email VARCHAR(50),
    address VARCHAR(255),
    city VARCHAR(50),
    `state/province` VARCHAR(50),
    country VARCHAR(50),
    postal VARCHAR(10)
);

-- Create the 'salesperson' table
CREATE TABLE salesperson (
    numstaff_id INT PRIMARY KEY,
    Staff_ID VARCHAR(10) NOT NULL,
    name VARCHAR(50) NOT NULL,
    store VARCHAR(50) NOT NULL
);

-- Create the 'invoice' table
CREATE TABLE invoice (
    invoice_id INT PRIMARY KEY,
    date DATE NOT NULL,
    car INT NOT NULL,
    costumer INT NOT NULL,
    salesperson INT NOT NULL,
    FOREIGN KEY (car) REFERENCES car(car_id),
    FOREIGN KEY (costumer) REFERENCES customer(customer_id),
    FOREIGN KEY (salesperson) REFERENCES salesperson(numstaff_id)
);
