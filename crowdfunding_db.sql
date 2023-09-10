-- drop tables (in reverse order, to avoid errors) if they already exist
DROP TABLE IF EXISTS campaign;
DROP TABLE IF EXISTS category;
DROP TABLE IF EXISTS subcategory;
DROP TABLE IF EXISTS contacts;

CREATE TABLE contacts (
	contact_id INT PRIMARY KEY,
	first_name VARCHAR(50) NOT NULL,
	last_name VARCHAR(50) NOT NULL,
	email VARCHAR(50) UNIQUE
);

CREATE TABLE category (
	category_id VARCHAR(4) PRIMARY KEY,
	category VARCHAR(50) UNIQUE
);

CREATE TABLE subcategory (
	subcategory_id VARCHAR(8) PRIMARY KEY,
	subcategory VARCHAR(50) UNIQUE
);

CREATE TABLE campaign (
	cf_id INT PRIMARY KEY,
	contact_id INT,
	company_name VARCHAR(50) NOT NULL,
	description VARCHAR(100) NOT NULL,
	goal FLOAT NOT NULL,
	pledged FLOAT NOT NULL,
	outcome VARCHAR(10) NOT NULL,
	backers_count INT NOT NULL,
	country VARCHAR(2) NOT NULL,
	currency VARCHAR(3) NOT NULL,
	launch_date DATE NOT NULL,
	end_date DATE NOT NULL,
	category_id VARCHAR(4),
	subcategory_id VARCHAR(8),
	FOREIGN KEY(contact_id) REFERENCES contacts (contact_id),
	FOREIGN  KEY (category_id) REFERENCES category (category_id),
	FOREIGN KEY (subcategory_id) REFERENCES subcategory (subcategory_id)  
);

SELECT * FROM contacts;

SELECT * FROM category;

SELECT * FROM subcategory;

SELECT * FROM campaign;
