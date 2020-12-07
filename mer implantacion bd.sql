-- MySQL Script generated by MySQL Workbench
-- Mon Dec  7 00:32:11 2020
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
-- Table `mydb`.`table1`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`table1` (
)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Admin. Sistema`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Admin. Sistema` (
  `ID Admin` VARCHAR(255) NULL,
  `nombre` VARCHAR(255) NOT NULL,
  `password` VARCHAR(32) NOT NULL,
  `usuario` VARCHAR(255) NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Status` VARCHAR(255) NOT NULL,
  PRIMARY KEY (`ID Admin`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Estadisticas`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Estadisticas` (
  `ID Estadisticas` VARCHAR(255) NULL,
  `fecha` DATE NOT NULL,
  `n° goles` INT NOT NULL,
  `n° asistencias` INT NOT NULL,
  `n° pases` INT NOT NULL,
  `tarjetas A` INT NOT NULL,
  `tarjetas R` INT NOT NULL,
  `habilidad` INT NOT NULL,
  `resistencia` INT NOT NULL,
  `fuerza` INT NOT NULL,
  `velocidad` INT NOT NULL,
  `status` VARCHAR(255) NOT NULL,
  PRIMARY KEY (`ID Estadisticas`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Estd. Socio Economico`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Estd. Socio Economico` (
  `ID SocioEconomico` VARCHAR(255) NULL,
  `Salud` INT NOT NULL,
  `Alimentacion` INT NOT NULL,
  `Vivienda` INT NOT NULL,
  `status` VARCHAR(255) NOT NULL,
  PRIMARY KEY (`ID SocioEconomico`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Usuario`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Usuario` (
  `ID Usuario` VARCHAR(255) NULL,
  `nombre` VARCHAR(255) NOT NULL,
  `apellido` VARCHAR(255) NOT NULL,
  `direccion` VARCHAR(255) NOT NULL,
  `c.i` VARCHAR(255) NOT NULL,
  `telefono` VARCHAR(255) NOT NULL,
  `statusJ` VARCHAR(255) NOT NULL,
  `statusE` VARCHAR(255) NOT NULL,
  `statusA` VARCHAR(255) NOT NULL,
  `statusP` VARCHAR(255) NOT NULL,
  `status` VARCHAR(255) NOT NULL,
  `Admin. Sistema_ID Admin` VARCHAR(255) NOT NULL,
  `Estadisticas_ID Estadisticas` VARCHAR(255) NOT NULL,
  `Estd. Socio Economico_ID SocioEconomico` VARCHAR(255) NOT NULL,
  PRIMARY KEY (`ID Usuario`),
  INDEX `fk_Usuario_Admin. Sistema_idx` (`Admin. Sistema_ID Admin` ASC) VISIBLE,
  INDEX `fk_Usuario_Estadisticas1_idx` (`Estadisticas_ID Estadisticas` ASC) VISIBLE,
  INDEX `fk_Usuario_Estd. Socio Economico1_idx` (`Estd. Socio Economico_ID SocioEconomico` ASC) VISIBLE,
  CONSTRAINT `fk_Usuario_Admin. Sistema`
    FOREIGN KEY (`Admin. Sistema_ID Admin`)
    REFERENCES `mydb`.`Admin. Sistema` (`ID Admin`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Usuario_Estadisticas1`
    FOREIGN KEY (`Estadisticas_ID Estadisticas`)
    REFERENCES `mydb`.`Estadisticas` (`ID Estadisticas`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Usuario_Estd. Socio Economico1`
    FOREIGN KEY (`Estd. Socio Economico_ID SocioEconomico`)
    REFERENCES `mydb`.`Estd. Socio Economico` (`ID SocioEconomico`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Categorias`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Categorias` (
  `ID Categorias` INT NULL,
  `nombre` VARCHAR(255) NOT NULL,
  `status` VARCHAR(255) NOT NULL,
  `Usuario_ID Usuario` VARCHAR(255) NOT NULL,
  PRIMARY KEY (`ID Categorias`),
  INDEX `fk_Categorias_Usuario1_idx` (`Usuario_ID Usuario` ASC) VISIBLE,
  CONSTRAINT `fk_Categorias_Usuario1`
    FOREIGN KEY (`Usuario_ID Usuario`)
    REFERENCES `mydb`.`Usuario` (`ID Usuario`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Stats`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Stats` (
  `ID Stats` VARCHAR(255) NOT NULL,
  `status` VARCHAR(255) NOT NULL,
  `Usuario_ID Usuario` VARCHAR(255) NOT NULL,
  INDEX `fk_Stats_Usuario1_idx` (`Usuario_ID Usuario` ASC) VISIBLE,
  PRIMARY KEY (`ID Stats`),
  CONSTRAINT `fk_Stats_Usuario1`
    FOREIGN KEY (`Usuario_ID Usuario`)
    REFERENCES `mydb`.`Usuario` (`ID Usuario`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Ligas`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Ligas` (
  `ID Ligas` VARCHAR(255) NULL,
  `n° equipos` INT NOT NULL,
  `status` VARCHAR(255) NOT NULL,
  `Categorias_ID Categorias` INT NOT NULL,
  PRIMARY KEY (`ID Ligas`),
  INDEX `fk_Ligas_Categorias1_idx` (`Categorias_ID Categorias` ASC) VISIBLE,
  CONSTRAINT `fk_Ligas_Categorias1`
    FOREIGN KEY (`Categorias_ID Categorias`)
    REFERENCES `mydb`.`Categorias` (`ID Categorias`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Juegos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Juegos` (
  `ID Juegos` VARCHAR(255) NOT NULL,
  `Sanciones` INT NOT NULL,
  `tarjetas A` INT NOT NULL,
  `resultado` INT NOT NULL,
  `status` VARCHAR(255) NOT NULL,
  `Categorias_ID Categorias` INT NOT NULL,
  `Ligas_ID Ligas` VARCHAR(255) NOT NULL,
  PRIMARY KEY (`ID Juegos`),
  INDEX `fk_Juegos_Categorias1_idx` (`Categorias_ID Categorias` ASC) VISIBLE,
  INDEX `fk_Juegos_Ligas1_idx` (`Ligas_ID Ligas` ASC) VISIBLE,
  CONSTRAINT `fk_Juegos_Categorias1`
    FOREIGN KEY (`Categorias_ID Categorias`)
    REFERENCES `mydb`.`Categorias` (`ID Categorias`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Juegos_Ligas1`
    FOREIGN KEY (`Ligas_ID Ligas`)
    REFERENCES `mydb`.`Ligas` (`ID Ligas`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;