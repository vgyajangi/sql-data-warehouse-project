/*
===============================================
Create Database and Schemas
================================================
Script Purpose:
	This Scripts creates a new database name 'DataWarehouse' after checking if it already exists. 
	if  the database exists, it is dropped and recreated. Additionally, the script sets up three schemas 
	within the datahase: 'bronze', 'silver', and 'gold'

WARNING:
	Running this scripts will drop the entire 'DataWarehouse' database if it exists.
	All data in the database will be permentely deleted. Proceed with caution
	and ensure you have proper backup before running this script.
*/

USE master;
GO

--Drop and recreate the 'DataWarehouse' database
IF EXISTS (SELECT 1 FROM sys.databases where name = 'DataWarehouse')
begin 
	alter database DataWarehouse set single_user with rollback immediate;
	drop database DataWarehouse;
END;
GO

--create the 'DataWarehouse' database

create database DataWarehouse;
GO

USE DataWarehouse;
GO

--Create Schemas

CREATE SChema bronze;
GO

create schema silver;
GO

create schema gold;
GO
