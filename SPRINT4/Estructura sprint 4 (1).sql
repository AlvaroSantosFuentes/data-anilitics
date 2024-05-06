CREATE TABLE Users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50),
    surname VARCHAR(50),
    phone VARCHAR(20),
    email VARCHAR(100),
    birth_date DATE,
    country VARCHAR(50),
    city VARCHAR(50),
    postal_code VARCHAR(10),
    address VARCHAR(255)
);
CREATE TABLE Companies (
    company_id VARCHAR(20) PRIMARY KEY,
    company_name VARCHAR(100),
    phone VARCHAR(20),
    email VARCHAR(100),
    country VARCHAR(50),
    website VARCHAR(255)
);
CREATE TABLE Credit_Cards (
    id VARCHAR(20) PRIMARY KEY,
    user_id INT,
    iban VARCHAR(34),
    pan VARCHAR(20),
    pin INT,
    cvv INT,
    track1 VARCHAR(100),
    track2 VARCHAR(100),
    expiring_date TEXT,
    CONSTRAINT fk_user_card FOREIGN KEY (user_id) REFERENCES Users(id)
);
CREATE TABLE Products (
    id INT PRIMARY KEY,
    product_name TEXT,
    price TEXT,
    colour TEXT,
    weight DOUBLE,
    warehouse_id TEXT
);
CREATE TABLE Transactions (
    id CHAR(36) PRIMARY KEY,
    card_id VARCHAR(20),
    business_id VARCHAR(20),
    timestamp DATETIME,
    amount DOUBLE,
    declined INT,
    product_ids TEXT,
    user_id INT,
    lat DOUBLE,
    longitude DOUBLE,
    CONSTRAINT fk_card FOREIGN KEY (card_id) REFERENCES Credit_Cards(id),
    CONSTRAINT fk_business FOREIGN KEY (business_id) REFERENCES Companies(company_id),
    CONSTRAINT fk_user FOREIGN KEY (user_id) REFERENCES Users(id)
);
UPDATE Users
SET birth_date = STR_TO_DATE(birth_date, '%b %d, %Y');





