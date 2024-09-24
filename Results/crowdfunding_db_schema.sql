-- Create Database
CREATE Database crowdfunding_db;

-- Create contact table
CREATE TABLE contacts(
    contact_id int PRIMARY KEY NOT NULL,
    first_name VARCHAR(20),
    last_name VARCHAR(20),
    email VARCHAR(50)
);
-- Create subcategory table
CREATE TABLE subcategory (
    subcategory_id VARCHAR(10) PRIMARY KEY NOT NULL, 
    subcategory VARCHAR(50)
);

-- Create category table
CREATE TABLE category (
    category_id VARCHAR(10) PRIMARY KEY NOT NULL, 
    category VARCHAR(50)
);


-- Create campaign table
CREATE TABLE campaign (
    cf_id int PRIMARY KEY NOT NULL,
    contact_id int,
    company_name VARCHAR(50), 
    description VARCHAR(200),
    goal float,
    pledged float,
    outcome VARCHAR(20),
    backers_count int,
    country VARCHAR(20),
    currency VARCHAR(20),
    launched_date DATE,
    end_date DATE,
    category_id VARCHAR(10),
    subcategory_id VARCHAR(10),
    FOREIGN KEY (contact_id) REFERENCES contacts(contact_id),
    FOREIGN KEY (category_id) REFERENCES category(category_id),
    FOREIGN KEY (subcategory_id) REFERENCES subcategory(subcategory_id)
);