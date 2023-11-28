-- Create table for contacts, set primary key
CREATE TABLE contacts (
	contact_id INT NOT NULL,
	first_name VARCHAR(50) NOT NULL,
	last_name VARCHAR(50) NOT NULL,
	email VARCHAR(100) NOT NULL,
PRIMARY KEY (contact_id)
);

-- Create table for categories, set primary key
CREATE TABLE category (
	category_id VARCHAR(50) NOT NULL,
	category VARCHAR(50) NOT NULL,
PRIMARY KEY (category_id)
);

-- Create table for subcategories, set primary key
CREATE TABLE subcategory (
	subcategory_id VARCHAR(50) NOT NULL,
	subcategory VARCHAR(50) NOT NULL,
PRIMARY KEY (subcategory_id)
);

-- Create table for campaigns, set primary and foreign keys
CREATE TABLE campaign (
	cf_id INT NOT NULL,
	contact_id INT NOT NULL,
	company_name VARCHAR(100) NOT NULL,
	description VARCHAR(300) NOT NULL,
	goal FLOAT NOT NULL,
	pledged FLOAT NOT NULL,
	outcome VARCHAR(50) NOT NULL,
	backers_count INT NOT NULL,
	country VARCHAR(50) NOT NULL,
	currency VARCHAR(50) NOT NULL,
	launched_date DATE NOT NULL,
	end_date DATE NOT NULL,
	category_id VARCHAR(50) NOT NULL,
	subcategory_id VARCHAR(50) NOT NULL,
PRIMARY KEY (cf_id),
FOREIGN KEY (contact_id) REFERENCES contacts(contact_id),
FOREIGN KEY (category_id) REFERENCES category(category_id),
FOREIGN KEY (subcategory_id) REFERENCES subcategory(subcategory_id)
);

SELECT * FROM contacts
SELECT * FROM category
SELECT * FROM subcategory
SELECT * FROM campaign

--DROP TABLE IF EXISTS contacts
--DROP TABLE IF EXISTS category
--DROP TABLE IF EXISTS subcategory
--DROP TABLE IF EXISTS campaign
