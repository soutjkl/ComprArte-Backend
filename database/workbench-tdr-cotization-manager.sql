-- Crear la base de datos (MySQL utiliza 'CREATE SCHEMA' en lugar de 'CREATE DATABASE')
CREATE SCHEMA `tdr-cotization-manager`;

-- Cambiar al esquema recién creado
USE `tdr-cotization-manager`;

-- Tabla CATEGORY (sin cambios importantes)
CREATE TABLE `CATEGORY` (
    `id_category` INT NOT NULL AUTO_INCREMENT,
    `name_category` VARCHAR(50) NOT NULL,
    PRIMARY KEY (`id_category`)
);

-- Tabla PRODUCT (cambios de tipos de datos)
CREATE TABLE `PRODUCT` (
    `id_product` INT NOT NULL AUTO_INCREMENT,
    `name_product` VARCHAR(100) NOT NULL,
    `description_product` VARCHAR(500) NULL,
    `quantity` INT NOT NULL,
    `product_reference` VARCHAR(50) NOT NULL,
    `unit_price` FLOAT NOT NULL,
    `product_picture` VARCHAR(1024) NULL,
    `status_product` CHAR(2) NOT NULL,
    `id_category` INT NULL,
    PRIMARY KEY (`id_product`),
    FOREIGN KEY (`id_category`) REFERENCES `CATEGORY` (`id_category`)
);

-- Tabla CUSTOMER (sin cambios importantes)
CREATE TABLE `CUSTOMER` (
    `id_customer` INT NOT NULL AUTO_INCREMENT,
    `name_customer` VARCHAR(50) NOT NULL,
    `lastname_customer` VARCHAR(50) NOT NULL,
    `document_type` VARCHAR(2) NOT NULL,
    `number_document` VARCHAR(30) NOT NULL,
    `email_customer` VARCHAR(50) NOT NULL,
    `status_customer` VARCHAR(2) NOT NULL,
    `number_phone` VARCHAR(20) NOT NULL,
    PRIMARY KEY (`id_customer`)
);

-- Tabla MY_USER (sin cambios importantes)
CREATE TABLE `MY_USER` (
    `email_user` VARCHAR(60) NOT NULL,
    `user_password` VARCHAR(150) NOT NULL,
    `user_name` VARCHAR(50) NOT NULL,
    `user_lastname` VARCHAR(50) NOT NULL,
    `user_rol` VARCHAR(45) NOT NULL,
    `status_user` VARCHAR(2) NOT NULL,
    PRIMARY KEY (`email_user`)
);

-- Tabla MARKET_RATES (cambios de tipos de datos)
CREATE TABLE `MARKET_RATES` (
    `id_quote` INT NOT NULL AUTO_INCREMENT,
    `number_quote` VARCHAR(30) NULL,
    `date_quote` DATE NOT NULL,
    `subtotal_quote` DECIMAL(18, 2) NOT NULL,
    `total_quote` DECIMAL(18, 2) NOT NULL,
    `status_quote` VARCHAR(2) NOT NULL,
    `id_customer` INT NOT NULL,
    PRIMARY KEY (`id_quote`),
    FOREIGN KEY (`id_customer`) REFERENCES `CUSTOMER` (`id_customer`)
);

-- Tabla WORKSHOP (cambios de tipos de datos)
CREATE TABLE `WORKSHOP` (
    `id_workshop` INT NOT NULL AUTO_INCREMENT,
    `name_workshop` VARCHAR(100) NOT NULL,
    `description_workshop` VARCHAR(500) NULL,
    `price_workshop` DECIMAL(18, 2) NULL,
    `capacity_workshop` INT NULL,
    `date_workshop` DATE NOT NULL,
    `status_workshop` VARCHAR(2) NOT NULL,
    `user_email` VARCHAR(60) NULL,
    PRIMARY KEY (`id_workshop`),
    FOREIGN KEY (`user_email`) REFERENCES `MY_USER` (`email_user`)
);

-- Tabla ADDED_PRODUCTS (cambios de tipos de datos y nombres de las restricciones)
CREATE TABLE `ADDED_PRODUCTS` (
    `quantity_products` INT NOT NULL,
    `id_quote` INT NOT NULL,
    `id_product` INT NOT NULL,
    `id_workshop` INT NULL,
    FOREIGN KEY (`id_quote`) REFERENCES `MARKET_RATES` (`id_quote`),
    FOREIGN KEY (`id_product`) REFERENCES `PRODUCT` (`id_product`),
    FOREIGN KEY (`id_workshop`) REFERENCES `WORKSHOP` (`id_workshop`)
);

-- Configurar el esquema recién creado para que sea de lectura/escritura (equivalente a READ_WRITE)
USE `tdr-cotization-manager`;
