CREATE DATABASE Manufacturer --X DROP DATABASE databasename; 
USE Manufacturer

--CREATE SCHEMA Product
--CREATE SCHEMA Component
--CREATE SCHEMA Supplier
--https://www.w3schools.com/sql/sql_create_table.asp

--X  DROP TABLE table_name; 
CREATE TABLE [Product] (
		[product_ID]  INT IDENTITY (1, 1) PRIMARY KEY NOT NULL, 
		[product_name] [nvarchar](50) NOT NULL,
		[quantity_on_hand]  INT NOT NULL
		 );

CREATE TABLE [Component](
		comp_ID INT IDENTITY (1, 1) PRIMARY KEY NOT NULL, 
		comp_name[nvarchar](200) NOT NULL,
		comp_description[nvarchar](200) NOT NULL,
		comp_quantity_on_hand INT NOT NULL
		);

CREATE TABLE [Supplier] (
		supplier_ID  INT IDENTITY (1, 1) PRIMARY KEY NOT NULL, 
		supplier_name [nvarchar](50) NULL, 
		activation_status [BIT] NULL
		); 

CREATE TABLE [comp_supp](
		supplier_ID INT  FOREIGN KEY REFERENCES [Supplier](supplier_ID),
		comp_ID INT FOREIGN KEY REFERENCES [component](comp_ID),
		supp_date DATE,
		supp_quantity INT NULL
		);
		
CREATE TABLE [prod_comp](
			product_ID INT FOREIGN KEY REFERENCES [Product](product_ID),
			comp_ID INT FOREIGN KEY REFERENCES [component](comp_ID)
			);


---SELECT * FROM   product

--drop database Manufacturer