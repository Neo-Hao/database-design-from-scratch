-- MySQL Script generated by MySQL Workbench
-- Mon Jan 15 18:04:35 2024
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8 ;
USE `mydb` ;

-- -----------------------------------------------------
-- Table `mydb`.`payment_method`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`payment_method` (
  `payment_id` INT PRIMARY KEY,
  `name` VARCHAR(30),
  `card_number` CHAR(16),
  `expiry_date` CHAR(4),
  `csc` CHAR(4),
  `billing_address` VARCHAR(255)
  )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`product`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`product` (
  `code` CHAR(12) PRIMARY KEY,
  `name` VARCHAR(100),
  `description` TEXT,
  `manufacturer` VARCHAR(100),
  `photo` VARCHAR(1000),
  `price` DECIMAL(7,2),
  `cost` DECIMAL(7,2),
  `inventory_quantity` INT
  )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`purchase`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`purchase` (
  `purchase_id` INT PRIMARY KEY,
  `total_price` DECIMAL(13,2),
  `purchase_time` TIMESTAMP,
  `product_time` DECIMAL(7,2),
  `product_quantity` INT
  )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`review`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`review` (
  `review_id` INT PRIMARY KEY,
  `review_text` TEXT,
  `review_time` TIMESTAMP
  )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`user`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`user` (
  `email` VARCHAR(320) PRIMARY KEY,
  `username` VARCHAR(30),
  `password` VARCHAR(20),
  `first_name` VARCHAR(50),
  `last_name` VARCHAR(50),
  `address` VARCHAR(255),
  `phone_number` VARCHAR(15),
  `last_login_time` TIMESTAMP
  )
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
