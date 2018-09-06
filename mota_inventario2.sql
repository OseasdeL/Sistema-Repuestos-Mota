-- MySQL Script generated by MySQL Workbench
-- Thu Sep  6 08:22:33 2018
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8 ;
USE `mydb` ;

-- -----------------------------------------------------
-- Table `mydb`.`Usuarios`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Usuarios` (
  `id_usuario` INT NOT NULL AUTO_INCREMENT,
  `usuario` VARCHAR(255) NULL,
  `contrasena` VARCHAR(255) NULL,
  PRIMARY KEY (`id_usuario`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Proveedor`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Proveedor` (
  `id_proveedor` INT NOT NULL AUTO_INCREMENT,
  `nombres` VARCHAR(255) NULL,
  `apellidos` VARCHAR(255) NULL,
  `direccion` VARCHAR(255) NULL,
  `telefono` VARCHAR(255) NULL,
  `email` VARCHAR(255) NULL,
  PRIMARY KEY (`id_proveedor`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Vehiculos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Vehiculos` (
  `id_vehiculo` INT NOT NULL AUTO_INCREMENT,
  `marca` VARCHAR(255) NULL,
  `modelo` INT NULL,
  `linea` VARCHAR(255) NULL,
  PRIMARY KEY (`id_vehiculo`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Productos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Productos` (
  `id_producto` INT NOT NULL AUTO_INCREMENT,
  `descripcion` VARCHAR(255) NULL,
  `marca` VARCHAR(255) NULL,
  `modelo` VARCHAR(255) NULL,
  `precio_unitario` FLOAT(5,2) NULL,
  `Proveedor_id_proveedor` INT NOT NULL,
  `Vehiculos_id_vehiculo` INT NOT NULL,
  PRIMARY KEY (`id_producto`),
  INDEX `fk_Productos_Proveedor_idx` (`Proveedor_id_proveedor` ASC),
  INDEX `fk_Productos_Vehiculos1_idx` (`Vehiculos_id_vehiculo` ASC),
  CONSTRAINT `fk_Productos_Proveedor`
    FOREIGN KEY (`Proveedor_id_proveedor`)
    REFERENCES `mydb`.`Proveedor` (`id_proveedor`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Productos_Vehiculos`
    FOREIGN KEY (`Vehiculos_id_vehiculo`)
    REFERENCES `mydb`.`Vehiculos` (`id_vehiculo`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Cliente`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Cliente` (
  `id_cliente` INT NOT NULL AUTO_INCREMENT,
  `nombres` VARCHAR(255) NULL,
  `apellidos` VARCHAR(255) NULL,
  `direccion` VARCHAR(255) NULL,
  `telefono` VARCHAR(255) NULL,
  `email` VARCHAR(255) NULL,
  PRIMARY KEY (`id_cliente`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Inventario`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Inventario` (
  `id_inventario` INT NOT NULL AUTO_INCREMENT,
  `existencia` INT NULL,
  `Productos_id_producto` INT NOT NULL,
  PRIMARY KEY (`id_inventario`),
  INDEX `fk_Inventario_Productos1_idx` (`Productos_id_producto` ASC),
  CONSTRAINT `fk_Inventario_Productos`
    FOREIGN KEY (`Productos_id_producto`)
    REFERENCES `mydb`.`Productos` (`id_producto`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Ventas`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Ventas` (
  `id_venta` INT NOT NULL AUTO_INCREMENT,
  `fecha` DATE NULL,
  `hora_entrega` VARCHAR(255) NULL,
  `cantidad_venta` INT NULL,
  `tipo_pago` VARCHAR(255) NULL,
  `Inventario_id_inventario` INT NOT NULL,
  `Productos_id_producto` INT NOT NULL,
  `Cliente_id_cliente` INT NOT NULL,
  PRIMARY KEY (`id_venta`),
  INDEX `fk_Ventas_Inventario1_idx` (`Inventario_id_inventario` ASC),
  INDEX `fk_Ventas_Productos1_idx` (`Productos_id_producto` ASC),
  INDEX `Cliente_id_cliente_idx` (`Cliente_id_cliente` ASC),
  CONSTRAINT `fk_Ventas_Inventario`
    FOREIGN KEY (`Inventario_id_inventario`)
    REFERENCES `mydb`.`Inventario` (`id_inventario`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Ventas_Productos`
    FOREIGN KEY (`Productos_id_producto`)
    REFERENCES `mydb`.`Productos` (`id_producto`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `Cliente_id_cliente`
    FOREIGN KEY (`Cliente_id_cliente`)
    REFERENCES `mydb`.`Cliente` (`id_cliente`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Bitacoras`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Bitacoras` (
  `id_bitacora` INT NOT NULL AUTO_INCREMENT,
  `fecha` DATE NULL,
  `hora` VARCHAR(255) NULL,
  `accion` VARCHAR(255) NULL,
  `Usuarios_id_usuario` INT NOT NULL,
  PRIMARY KEY (`id_bitacora`),
  INDEX `fk_Bitacoras_Usuarios1_idx` (`Usuarios_id_usuario` ASC),
  CONSTRAINT `fk_Bitacoras_Usuarios`
    FOREIGN KEY (`Usuarios_id_usuario`)
    REFERENCES `mydb`.`Usuarios` (`id_usuario`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
