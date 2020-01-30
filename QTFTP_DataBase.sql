-- MySQL Script generated by MySQL Workbench
-- Mon Sep 30 14:09:24 2019
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema qtftp
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema qtftp
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `qtftp` DEFAULT CHARACTER SET utf8 ;
USE `qtftp` ;

-- -----------------------------------------------------
-- Table `qtftp`.`cliente`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `qtftp`.`cliente` (
  `idcliente` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(50) NOT NULL,
  `cpf` VARCHAR(20) NOT NULL,
  `endereco` VARCHAR(60) NOT NULL,
  `email` VARCHAR(30) NOT NULL,
  `telefone` VARCHAR(15) NOT NULL,
  `senha` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idcliente`),
  UNIQUE INDEX `cpf_UNIQUE` (`cpf` ASC),
  UNIQUE INDEX `email_UNIQUE` (`email` ASC))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `qtftp`.`pedido`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `qtftp`.`pedido` (
  `idpedido` INT NOT NULL AUTO_INCREMENT,
  `pratos` VARCHAR(45) NOT NULL,
  `tipopagamento` INT NOT NULL,
  `valortotal` DOUBLE NOT NULL,
  `endereco` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idpedido`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `qtftp`.`prato`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `qtftp`.`prato` (
  `idprato` INT NOT NULL AUTO_INCREMENT,
  `nomeprato` VARCHAR(30) NOT NULL,
  `valorprato` DOUBLE NOT NULL,
  `descricaoprato` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idprato`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `qtftp`.`restaurante`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `qtftp`.`restaurante` (
  `idrestaurantes` INT NOT NULL AUTO_INCREMENT,
  `razaosocial` VARCHAR(30) NOT NULL,
  `cnpj` VARCHAR(20) NOT NULL,
  `endereco` VARCHAR(45) NOT NULL,
  `opcaopagamento` VARCHAR(45) NOT NULL,
  `senha` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idrestaurantes`),
  UNIQUE INDEX `cnpj_UNIQUE` (`cnpj` ASC),
  UNIQUE INDEX `razaosocial_UNIQUE` (`razaosocial` ASC))
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
