-- MySQL Script generated by MySQL Workbench
-- Wed Sep 27 09:58:36 2023
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema tdr-cotization-manager
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema tdr-cotization-manager
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `tdr-cotization-manager` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci ;
USE `tdr-cotization-manager` ;

-- -----------------------------------------------------
-- Table `tdr-cotization-manager`.`customer`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `tdr-cotization-manager`.`customer` (
  `id_customer` INT NOT NULL AUTO_INCREMENT,
  `name_customer` VARCHAR(50) NOT NULL,
  `lastname_customer` VARCHAR(50) NOT NULL,
  `document_type` VARCHAR(2) NOT NULL,
  `number_document` VARCHAR(30) NOT NULL,
  `email_customer` VARCHAR(50) NOT NULL,
  `status_customer` VARCHAR(2) NOT NULL,
  `number_phone` VARCHAR(20) NOT NULL,
  PRIMARY KEY (`id_customer`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `tdr-cotization-manager`.`my_user`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `tdr-cotization-manager`.`my_user` (
  `email_user` VARCHAR(60) NOT NULL,
  `user_password` VARCHAR(150) NOT NULL,
  `user_name` VARCHAR(50) NOT NULL,
  `user_lastname` VARCHAR(50) NOT NULL,
  `user_rol` VARCHAR(45) NOT NULL,
  `status_user` VARCHAR(2) NOT NULL,
  PRIMARY KEY (`email_user`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `tdr-cotization-manager`.`market_rates`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `tdr-cotization-manager`.`market_rates` (
  `id_quote` INT NOT NULL AUTO_INCREMENT,
  `number_quote` VARCHAR(30) NULL DEFAULT NULL,
  `date_quote` DATE NOT NULL,
  `subtotal_quote` DECIMAL(18,2) NOT NULL,
  `total_quote` DECIMAL(18,2) NOT NULL,
  `status_quote` VARCHAR(2) NOT NULL,
  `id_customer` INT NOT NULL,
  `email_user` VARCHAR(60) NOT NULL,
  PRIMARY KEY (`id_quote`),
  INDEX `id_customer` (`id_customer` ASC) VISIBLE,
  INDEX `fk_market_rates_my_user1_idx` (`email_user` ASC) VISIBLE,
  CONSTRAINT `market_rates_ibfk_1`
    FOREIGN KEY (`id_customer`)
    REFERENCES `tdr-cotization-manager`.`customer` (`id_customer`),
  CONSTRAINT `fk_market_rates_my_user1`
    FOREIGN KEY (`email_user`)
    REFERENCES `tdr-cotization-manager`.`my_user` (`email_user`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `tdr-cotization-manager`.`category`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `tdr-cotization-manager`.`category` (
  `id_category` INT NOT NULL AUTO_INCREMENT,
  `name_category` VARCHAR(50) NOT NULL,
  PRIMARY KEY (`id_category`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `tdr-cotization-manager`.`product`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `tdr-cotization-manager`.`product` (
  `id_product` INT NOT NULL AUTO_INCREMENT,
  `name_product` VARCHAR(100) NOT NULL,
  `description_product` VARCHAR(500) NULL DEFAULT NULL,
  `quantity` INT NOT NULL,
  `product_reference` VARCHAR(50) NOT NULL,
  `unit_price` FLOAT NOT NULL,
  `product_picture` VARCHAR(1024) NULL DEFAULT NULL,
  `status_product` CHAR(2) NOT NULL,
  `id_category` INT NULL DEFAULT NULL,
  PRIMARY KEY (`id_product`),
  INDEX `id_category` (`id_category` ASC) VISIBLE,
  CONSTRAINT `product_ibfk_1`
    FOREIGN KEY (`id_category`)
    REFERENCES `tdr-cotization-manager`.`category` (`id_category`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `tdr-cotization-manager`.`workshop`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `tdr-cotization-manager`.`workshop` (
  `id_workshop` INT NOT NULL AUTO_INCREMENT,
  `name_workshop` VARCHAR(100) NOT NULL,
  `description_workshop` VARCHAR(500) NULL DEFAULT NULL,
  `price_workshop` DECIMAL(18,2) NULL DEFAULT NULL,
  `capacity_workshop` INT NULL DEFAULT NULL,
  `date_workshop` DATE NOT NULL,
  `status_workshop` VARCHAR(2) NOT NULL,
  `user_email` VARCHAR(60) NULL DEFAULT NULL,
  PRIMARY KEY (`id_workshop`),
  INDEX `user_email` (`user_email` ASC) VISIBLE,
  CONSTRAINT `workshop_ibfk_1`
    FOREIGN KEY (`user_email`)
    REFERENCES `tdr-cotization-manager`.`my_user` (`email_user`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `tdr-cotization-manager`.`added_products`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `tdr-cotization-manager`.`added_products` (
  `quantity_products` INT NOT NULL,
  `id_quote` INT NOT NULL,
  `id_product` INT NOT NULL,
  `id_workshop` INT NULL DEFAULT NULL,
  INDEX `id_quote` (`id_quote` ASC) VISIBLE,
  INDEX `id_product` (`id_product` ASC) VISIBLE,
  INDEX `id_workshop` (`id_workshop` ASC) VISIBLE,
  CONSTRAINT `added_products_ibfk_1`
    FOREIGN KEY (`id_quote`)
    REFERENCES `tdr-cotization-manager`.`market_rates` (`id_quote`),
  CONSTRAINT `added_products_ibfk_2`
    FOREIGN KEY (`id_product`)
    REFERENCES `tdr-cotization-manager`.`product` (`id_product`),
  CONSTRAINT `added_products_ibfk_3`
    FOREIGN KEY (`id_workshop`)
    REFERENCES `tdr-cotization-manager`.`workshop` (`id_workshop`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;