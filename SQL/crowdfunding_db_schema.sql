-- CREATE TABLE QUERIES --

CREATE TABLE crowdfunding_db_schema.category (
  category_id varchar(30)  NOT NULL,
  category varchar(50) NOT NULL,
  PRIMARY KEY (category_id)
);

CREATE TABLE crowdfunding_db_schema.subcategory(
  subcategory_id varchar(30) NOT NULL,
  subcategory varchar(50) NOT NULL,
  PRIMARY KEY (subcategory_id)
); 

CREATE TABLE crowdfunding_db_schema.contacts(
   contact_id int NOT NULL,
   first_name varchar(50) NOT NULL,
   last_name varchar(50) NOT NULL,
   email varchar(50),
  PRIMARY KEY (contact_id)
); 

CREATE TABLE crowdfunding_db_schema.campaign (
  cf_id int NOT NULL,
  contact_id int NOT NULL,
  company_name varchar(100) NOT NULL,
  description  varchar(200) NOT NULL,
  goal float NOT NULL,
  pledged float NOT NULL,
  outcome varchar(50) NOT NULL,
  backers_count int NOT NULL,
  country varchar(50) NOT NULL,
  currency varchar(50) NOT NULL,
  launch_date timestamp NOT NULL,
  end_date timestamp NOT NULL,
  category_id varchar(50) NOT NULL,
  subcategory_id varchar(50) NOT NULL,
  FOREIGN KEY (contact_id) REFERENCES crowdfunding_db_schema.contacts(contact_id),
  FOREIGN KEY (category_id) REFERENCES crowdfunding_db_schema.category(category_id),
  FOREIGN KEY (subcategory_id) REFERENCES crowdfunding_db_schema.subcategory(subcategory_id),
  PRIMARY KEY (cf_id)
  );