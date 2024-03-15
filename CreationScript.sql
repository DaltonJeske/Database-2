-- IT Suport Service Database Creation Script
-- Developed by Dalton Jeske
-- Version 1.0
-- Modified Date: 2/10/2023
Create DATABASE IF NOT EXISTS `ITSupportService`;

USE `ITSupportService`;

DROP TABLE IF EXISTS `customer_contact_tbl`;

CREATE TABLE `Customer_Contact_Tbl` (
    `Customer_Contact` VARCHAR(13) NOT NULL,
    `Customer_Contact_Descr` VARCHAR(30) NOT NULL,
    PRIMARY KEY (`Customer_Contact`)
);

DROP TABLE IF EXISTS `Device_Tbl`;

CREATE TABLE `Device_Tbl` (
    `Device_ID` INT UNSIGNED NOT NULL,
    `Device_Descr` VARCHAR(20) NOT NULL,
    PRIMARY KEY (`Device_ID`)
);

DROP TABLE IF EXISTS `Emploiyee_Type_Tbl`;

CREATE TABLE `Emploiyee_Type_Tbl` (
    `Employee_Type` VARCHAR(10) NOT NULL,
    `Employee_Type_Descr` VARCHAR(30) NOT NULL,
    PRIMARY KEY (`Employee_Type`)
);

DROP TABLE IF EXISTS `Service_Type_Tbl`;

CREATE TABLE `Service_Type_Tbl` (
    `Service_Type_ID` INT UNSIGNED NOT NULL,
    `Service_Descr` VARCHAR(50) NOT NULL,
    `Cost` INT NULL,
    `Est_Repair_Time` VARCHAR(10) NULL,
    PRIMARY KEY (`Service_Type_ID`)
);

DROP TABLE IF EXISTS `Employee_Contact_Tbl`;

CREATE TABLE `Employee_Contact_Tbl` (
    `Employee_Contact` VARCHAR(13) NOT NULL,
    `Employee_Contact_Descr` VARCHAR(30) NOT NULL,
    PRIMARY KEY (`Employee_Contact`)
);

DROP TABLE IF EXISTS `Customer_Tbl`;

CREATE TABLE `Customer_Tbl` (
    `Customer_ID` INT UNSIGNED NOT NULL AUTO_INCREMENT,
    `First_Name` VARCHAR(30) NOT NULL,
    `Last_Name` VARCHAR(30) NOT NULL,
    `Customer_Contact` VARCHAR(13) NOT NULL,
    `Address1` VARCHAR(30) NOT NULL,
    `Address2` VARCHAR(30) NULL,
    `City` VARCHAR(30) NOT NULL,
    `State` VARCHAR(2) NOT NULL,
    `ZipCode` VARCHAR(10) NOT NULL,
    PRIMARY KEY (`Customer_ID`)
);

DROP TABLE IF EXISTS `Service_Tbl`;

CREATE TABLE `Service_Tbl` (
    `Service_ID` INT UNSIGNED NOT NULL AUTO_INCREMENT,
    `Customer_ID` INT UNSIGNED NOT NULL,
    `Employee_ID` INT UNSIGNED NOT NULL,
    `Device_ID` INT UNSIGNED NOT NULL,
    `Service_Type_ID` INT UNSIGNED NOT NULL,
    `Date_Received` DATETIME NOT NULL,
    `Date_Completed` DATETIME NULL,
    PRIMARY KEY (`Service_ID`)
);

DROP TABLE IF EXISTS `Employee_Tbl`;

CREATE TABLE `Employee_Tbl` (
    `Employee_ID` INT UNSIGNED NOT NULL AUTO_INCREMENT,
    `First_Name` VARCHAR(30) NOT NULL,
    `Last_Name` VARCHAR(30) NOT NULL,
    `Employee_Type` VARCHAR(10) NOT NULL,
    `Employee_Title` VARCHAR(20) NULL,
    `Employee_Contact` VARCHAR(13) NOT NULL,
    `Employee_Salary` INT UNSIGNED NULL,
    PRIMARY KEY (`Employee_ID`)
);

INSERT INTO `Device_tbl` (`Device_ID`, `Device_Descr`) VALUES
("1", "Laptop"), ("2", "Desktop"), ("3", "Printer"), ("4", "Phone"), ("5", "Tablet"), ("6", "Router"), ("7", "Peripheral Device"), ("8", "Projector");

INSERT INTO `service_type_tbl` (`Service_Type_ID`, `Service_Descr`) VALUES
("1", "Cracked Screen"), ("2", "Dead Battery"), ("3", "Motherboard Replacement"), ("4", "Lamp Bulb Replacement"), ("5", "Reset Wifi Router");