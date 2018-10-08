-- MySQL Script generated by MySQL Workbench
-- Sun Oct  7 22:06:36 2018
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema proyinf4
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema proyinf4
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `proyinf4` DEFAULT CHARACTER SET utf8 ;
-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
USE `proyinf4` ;

-- -----------------------------------------------------
-- Table `proyinf4`.`arbitros`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `proyinf4`.`arbitros` (
  `id` INT(10) UNSIGNED NOT NULL,
  `nombre` VARCHAR(45) NULL DEFAULT NULL,
  `carrera` VARCHAR(45) NULL DEFAULT NULL,
  `fecha_ingreso` DATE NULL DEFAULT NULL,
  `deleted_at` TIMESTAMP NULL DEFAULT NULL,
  `created_at` TIMESTAMP NULL DEFAULT NULL,
  `updated_at` TIMESTAMP NULL DEFAULT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `proyinf4`.`deportes`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `proyinf4`.`deportes` (
  `id` INT(10) UNSIGNED NOT NULL,
  `nombre` VARCHAR(100) NULL DEFAULT NULL,
  `deleted_at` TIMESTAMP NULL DEFAULT NULL,
  `created_at` TIMESTAMP NULL DEFAULT NULL,
  `updated_at` TIMESTAMP NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `deporteid_UNIQUE` (`id` ASC))
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `proyinf4`.`divisiones`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `proyinf4`.`divisiones` (
  `id` INT(10) UNSIGNED NOT NULL,
  `deporteid` INT(10) UNSIGNED NULL DEFAULT NULL,
  `nombre` VARCHAR(200) NULL DEFAULT NULL,
  `deleted_at` TIMESTAMP NULL DEFAULT NULL,
  `created_at` TIMESTAMP NULL DEFAULT NULL,
  `updated_at` TIMESTAMP NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  INDEX `deporteid_idx` (`deporteid` ASC),
  CONSTRAINT `deporteid`
    FOREIGN KEY (`deporteid`)
    REFERENCES `proyinf4`.`deportes` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `proyinf4`.`equipos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `proyinf4`.`equipos` (
  `id` INT(10) UNSIGNED NOT NULL,
  `divisionid` INT(10) UNSIGNED NULL DEFAULT NULL,
  `nombre` VARCHAR(100) NULL DEFAULT NULL,
  `carrera` VARCHAR(120) NULL DEFAULT NULL,
  `facultad` VARCHAR(120) NULL DEFAULT NULL,
  `deleted_at` TIMESTAMP NULL DEFAULT NULL,
  `created_at` TIMESTAMP NULL DEFAULT NULL,
  `updated_at` TIMESTAMP NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `equipoid_UNIQUE` (`id` ASC),
  INDEX `divisionid_idx` (`divisionid` ASC),
  CONSTRAINT `divisionid`
    FOREIGN KEY (`divisionid`)
    REFERENCES `proyinf4`.`divisiones` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `proyinf4`.`lugares`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `proyinf4`.`lugares` (
  `id` INT(10) UNSIGNED NOT NULL,
  `nombre` VARCHAR(120) NULL DEFAULT NULL,
  `ubicacion` VARCHAR(120) NULL DEFAULT NULL,
  `capacidad` VARCHAR(45) NULL DEFAULT NULL,
  `deleted_at` TIMESTAMP NULL DEFAULT NULL,
  `created_at` TIMESTAMP NULL DEFAULT NULL,
  `updated_at` TIMESTAMP NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `lugarid_UNIQUE` (`id` ASC))
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `proyinf4`.`partidos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `proyinf4`.`partidos` (
  `id` INT(10) UNSIGNED NOT NULL,
  `equipo_1` INT(10) UNSIGNED NULL DEFAULT NULL,
  `equipo_2` INT(10) UNSIGNED NULL DEFAULT NULL,
  `divisionid` INT(10) UNSIGNED NULL DEFAULT NULL,
  `lugarid` INT(10) UNSIGNED NULL DEFAULT NULL,
  `ganador` INT(10) UNSIGNED NULL DEFAULT NULL,
  `fecha` DATE NULL DEFAULT NULL,
  `hora` VARCHAR(45) NULL DEFAULT NULL,
  `deleted_at` TIMESTAMP NULL DEFAULT NULL,
  `created_at` TIMESTAMP NULL DEFAULT NULL,
  `updated_at` TIMESTAMP NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `partidoid_UNIQUE` (`id` ASC),
  INDEX `lugar_idx` (`lugarid` ASC),
  INDEX `ganador_idx` (`ganador` ASC),
  INDEX `divisionid_idx` (`divisionid` ASC),
  INDEX `equipo1_idx` (`equipo_1` ASC),
  INDEX `equipo2_idx` (`equipo_2` ASC),
  CONSTRAINT `divisionid1`
    FOREIGN KEY (`divisionid`)
    REFERENCES `proyinf4`.`divisiones` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `equipo1`
    FOREIGN KEY (`equipo_1`)
    REFERENCES `proyinf4`.`equipos` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `equipo2`
    FOREIGN KEY (`equipo_2`)
    REFERENCES `proyinf4`.`equipos` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `ganador`
    FOREIGN KEY (`ganador`)
    REFERENCES `proyinf4`.`equipos` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `lugarid`
    FOREIGN KEY (`lugarid`)
    REFERENCES `proyinf4`.`lugares` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `proyinf4`.`arbitrajes`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `proyinf4`.`arbitrajes` (
  `partidoid` INT(10) UNSIGNED NOT NULL,
  `arbitroid` INT(10) UNSIGNED NOT NULL,
  `tipo` VARCHAR(80) NULL DEFAULT NULL,
  `deleted_at` TIMESTAMP NULL DEFAULT NULL,
  `created_at` TIMESTAMP NULL DEFAULT NULL,
  `updated_at` TIMESTAMP NULL DEFAULT NULL,
  PRIMARY KEY (`arbitroid`, `partidoid`),
  INDEX `partidoid_idx` (`partidoid` ASC),
  CONSTRAINT `arbitroid`
    FOREIGN KEY (`arbitroid`)
    REFERENCES `proyinf4`.`arbitros` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `partidoid`
    FOREIGN KEY (`partidoid`)
    REFERENCES `proyinf4`.`partidos` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `proyinf4`.`blog_posts`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `proyinf4`.`blog_posts` (
  `id` INT(10) UNSIGNED NOT NULL,
  `author_id` INT(11) NOT NULL,
  `category_id` INT(11) NULL DEFAULT NULL,
  `title` VARCHAR(255) CHARACTER SET 'utf8mb4' COLLATE 'utf8mb4_unicode_ci' NOT NULL,
  `seo_title` VARCHAR(255) CHARACTER SET 'utf8mb4' COLLATE 'utf8mb4_unicode_ci' NULL DEFAULT NULL,
  `excerpt` TEXT CHARACTER SET 'utf8mb4' COLLATE 'utf8mb4_unicode_ci' NOT NULL,
  `body` TEXT CHARACTER SET 'utf8mb4' COLLATE 'utf8mb4_unicode_ci' NOT NULL,
  `image` VARCHAR(255) CHARACTER SET 'utf8mb4' COLLATE 'utf8mb4_unicode_ci' NULL DEFAULT NULL,
  `slug` VARCHAR(255) CHARACTER SET 'utf8mb4' COLLATE 'utf8mb4_unicode_ci' NOT NULL,
  `meta_description` TEXT CHARACTER SET 'utf8mb4' COLLATE 'utf8mb4_unicode_ci' NOT NULL,
  `status` ENUM('PUBLISHED', 'DRAFT', 'PENDING') CHARACTER SET 'utf8mb4' COLLATE 'utf8mb4_unicode_ci' NOT NULL DEFAULT 'DRAFT',
  `featured` TINYINT(1) NOT NULL DEFAULT '0',
  `created_at` TIMESTAMP NULL DEFAULT NULL,
  `updated_at` TIMESTAMP NULL DEFAULT NULL,
  `tags` TEXT CHARACTER SET 'utf8mb4' COLLATE 'utf8mb4_unicode_ci' NULL DEFAULT NULL,
  `published_date` TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `blog_posts_slug_unique` (`slug` ASC))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci;


-- -----------------------------------------------------
-- Table `proyinf4`.`campeonatos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `proyinf4`.`campeonatos` (
  `id` INT(10) UNSIGNED NOT NULL,
  `divisionid` INT(10) UNSIGNED NULL DEFAULT NULL,
  `ano` INT(11) NULL DEFAULT NULL,
  `nombre` VARCHAR(120) NULL DEFAULT NULL,
  `semestre` VARCHAR(45) NULL DEFAULT NULL,
  `campeon` INT(10) UNSIGNED NULL DEFAULT NULL,
  `fecha_inicio` DATE NULL DEFAULT NULL,
  `fecha_termino` DATE NULL DEFAULT NULL,
  `reglamento` VARCHAR(120) NULL DEFAULT NULL,
  `deleted_at` TIMESTAMP NULL DEFAULT NULL,
  `created_at` TIMESTAMP NULL DEFAULT NULL,
  `updated_at` TIMESTAMP NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `ligaid_UNIQUE` (`id` ASC),
  INDEX `campeon_idx` (`campeon` ASC),
  INDEX `divisionid_idx` (`divisionid` ASC),
  CONSTRAINT `campeon`
    FOREIGN KEY (`campeon`)
    REFERENCES `proyinf4`.`equipos` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `divisionid2`
    FOREIGN KEY (`divisionid`)
    REFERENCES `proyinf4`.`divisiones` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `proyinf4`.`categories`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `proyinf4`.`categories` (
  `id` INT(10) UNSIGNED NOT NULL,
  `parent_id` INT(10) UNSIGNED NULL DEFAULT NULL,
  `order` INT(11) NOT NULL DEFAULT '1',
  `name` VARCHAR(255) CHARACTER SET 'utf8mb4' COLLATE 'utf8mb4_unicode_ci' NOT NULL,
  `slug` VARCHAR(255) CHARACTER SET 'utf8mb4' COLLATE 'utf8mb4_unicode_ci' NOT NULL,
  `created_at` TIMESTAMP NULL DEFAULT NULL,
  `updated_at` TIMESTAMP NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `categories_slug_unique` (`slug` ASC),
  INDEX `categories_parent_id_foreign` (`parent_id` ASC),
  CONSTRAINT `categories_parent_id_foreign`
    FOREIGN KEY (`parent_id`)
    REFERENCES `proyinf4`.`categories` (`id`)
    ON DELETE SET NULL
    ON UPDATE CASCADE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci;


-- -----------------------------------------------------
-- Table `proyinf4`.`data_types`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `proyinf4`.`data_types` (
  `id` INT(10) UNSIGNED NOT NULL,
  `name` VARCHAR(255) CHARACTER SET 'utf8mb4' COLLATE 'utf8mb4_unicode_ci' NOT NULL,
  `slug` VARCHAR(255) CHARACTER SET 'utf8mb4' COLLATE 'utf8mb4_unicode_ci' NOT NULL,
  `display_name_singular` VARCHAR(255) CHARACTER SET 'utf8mb4' COLLATE 'utf8mb4_unicode_ci' NOT NULL,
  `display_name_plural` VARCHAR(255) CHARACTER SET 'utf8mb4' COLLATE 'utf8mb4_unicode_ci' NOT NULL,
  `icon` VARCHAR(255) CHARACTER SET 'utf8mb4' COLLATE 'utf8mb4_unicode_ci' NULL DEFAULT NULL,
  `model_name` VARCHAR(255) CHARACTER SET 'utf8mb4' COLLATE 'utf8mb4_unicode_ci' NULL DEFAULT NULL,
  `policy_name` VARCHAR(255) CHARACTER SET 'utf8mb4' COLLATE 'utf8mb4_unicode_ci' NULL DEFAULT NULL,
  `controller` VARCHAR(255) CHARACTER SET 'utf8mb4' COLLATE 'utf8mb4_unicode_ci' NULL DEFAULT NULL,
  `description` VARCHAR(255) CHARACTER SET 'utf8mb4' COLLATE 'utf8mb4_unicode_ci' NULL DEFAULT NULL,
  `generate_permissions` TINYINT(1) NOT NULL DEFAULT '0',
  `server_side` TINYINT(4) NOT NULL DEFAULT '0',
  `details` TEXT CHARACTER SET 'utf8mb4' COLLATE 'utf8mb4_unicode_ci' NULL DEFAULT NULL,
  `created_at` TIMESTAMP NULL DEFAULT NULL,
  `updated_at` TIMESTAMP NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `data_types_name_unique` (`name` ASC),
  UNIQUE INDEX `data_types_slug_unique` (`slug` ASC))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci;


-- -----------------------------------------------------
-- Table `proyinf4`.`data_rows`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `proyinf4`.`data_rows` (
  `id` INT(10) UNSIGNED NOT NULL,
  `data_type_id` INT(10) UNSIGNED NOT NULL,
  `field` VARCHAR(255) CHARACTER SET 'utf8mb4' COLLATE 'utf8mb4_unicode_ci' NOT NULL,
  `type` VARCHAR(255) CHARACTER SET 'utf8mb4' COLLATE 'utf8mb4_unicode_ci' NOT NULL,
  `display_name` VARCHAR(255) CHARACTER SET 'utf8mb4' COLLATE 'utf8mb4_unicode_ci' NOT NULL,
  `required` TINYINT(1) NOT NULL DEFAULT '0',
  `browse` TINYINT(1) NOT NULL DEFAULT '1',
  `read` TINYINT(1) NOT NULL DEFAULT '1',
  `edit` TINYINT(1) NOT NULL DEFAULT '1',
  `add` TINYINT(1) NOT NULL DEFAULT '1',
  `delete` TINYINT(1) NOT NULL DEFAULT '1',
  `details` TEXT CHARACTER SET 'utf8mb4' COLLATE 'utf8mb4_unicode_ci' NULL DEFAULT NULL,
  `order` INT(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  INDEX `data_rows_data_type_id_foreign` (`data_type_id` ASC),
  CONSTRAINT `data_rows_data_type_id_foreign`
    FOREIGN KEY (`data_type_id`)
    REFERENCES `proyinf4`.`data_types` (`id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci;


-- -----------------------------------------------------
-- Table `proyinf4`.`noticias`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `proyinf4`.`noticias` (
  `id` INT(10) UNSIGNED NOT NULL,
  `deporteid` INT(10) UNSIGNED NULL DEFAULT NULL,
  `texto` VARCHAR(2000) NULL DEFAULT NULL,
  `deleted_at` TIMESTAMP NULL DEFAULT NULL,
  `created_at` TIMESTAMP NULL DEFAULT NULL,
  `updated_at` TIMESTAMP NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  INDEX `deporteid_idx` (`deporteid` ASC),
  CONSTRAINT `deporteid1`
    FOREIGN KEY (`deporteid`)
    REFERENCES `proyinf4`.`deportes` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `proyinf4`.`imagenes`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `proyinf4`.`imagenes` (
  `id` INT(11) NOT NULL,
  `noticiaid` INT(10) UNSIGNED NOT NULL,
  `url` VARCHAR(150) NULL DEFAULT NULL,
  `deleted_at` TIMESTAMP NULL DEFAULT NULL,
  `created_at` TIMESTAMP NULL DEFAULT NULL,
  `updated_at` TIMESTAMP NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  INDEX `noticiaid_idx` (`noticiaid` ASC),
  CONSTRAINT `noticiaid`
    FOREIGN KEY (`noticiaid`)
    REFERENCES `proyinf4`.`noticias` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `proyinf4`.`jugadores`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `proyinf4`.`jugadores` (
  `id` INT(10) UNSIGNED NOT NULL,
  `equipoid` INT(10) UNSIGNED NOT NULL,
  `nombre` VARCHAR(160) NULL DEFAULT NULL,
  `edad` INT(11) NULL DEFAULT NULL,
  `ano_ingreso` INT(11) NULL DEFAULT NULL,
  `deleted_at` TIMESTAMP NULL DEFAULT NULL,
  `created_at` TIMESTAMP NULL DEFAULT NULL,
  `updated_at` TIMESTAMP NULL DEFAULT NULL,
  PRIMARY KEY (`id`, `equipoid`),
  UNIQUE INDEX `jugadorid_UNIQUE` (`id` ASC),
  INDEX `equipoid_idx` (`equipoid` ASC),
  CONSTRAINT `equipoid`
    FOREIGN KEY (`equipoid`)
    REFERENCES `proyinf4`.`equipos` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `proyinf4`.`menus`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `proyinf4`.`menus` (
  `id` INT(10) UNSIGNED NOT NULL,
  `name` VARCHAR(255) CHARACTER SET 'utf8mb4' COLLATE 'utf8mb4_unicode_ci' NOT NULL,
  `created_at` TIMESTAMP NULL DEFAULT NULL,
  `updated_at` TIMESTAMP NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `menus_name_unique` (`name` ASC))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci;


-- -----------------------------------------------------
-- Table `proyinf4`.`menu_items`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `proyinf4`.`menu_items` (
  `id` INT(10) UNSIGNED NOT NULL,
  `menu_id` INT(10) UNSIGNED NULL DEFAULT NULL,
  `title` VARCHAR(255) CHARACTER SET 'utf8mb4' COLLATE 'utf8mb4_unicode_ci' NOT NULL,
  `url` VARCHAR(255) CHARACTER SET 'utf8mb4' COLLATE 'utf8mb4_unicode_ci' NOT NULL,
  `target` VARCHAR(255) CHARACTER SET 'utf8mb4' COLLATE 'utf8mb4_unicode_ci' NOT NULL DEFAULT '_self',
  `icon_class` VARCHAR(255) CHARACTER SET 'utf8mb4' COLLATE 'utf8mb4_unicode_ci' NULL DEFAULT NULL,
  `color` VARCHAR(255) CHARACTER SET 'utf8mb4' COLLATE 'utf8mb4_unicode_ci' NULL DEFAULT NULL,
  `parent_id` INT(11) NULL DEFAULT NULL,
  `order` INT(11) NOT NULL,
  `created_at` TIMESTAMP NULL DEFAULT NULL,
  `updated_at` TIMESTAMP NULL DEFAULT NULL,
  `route` VARCHAR(255) CHARACTER SET 'utf8mb4' COLLATE 'utf8mb4_unicode_ci' NULL DEFAULT NULL,
  `parameters` TEXT CHARACTER SET 'utf8mb4' COLLATE 'utf8mb4_unicode_ci' NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  INDEX `menu_items_menu_id_foreign` (`menu_id` ASC),
  CONSTRAINT `menu_items_menu_id_foreign`
    FOREIGN KEY (`menu_id`)
    REFERENCES `proyinf4`.`menus` (`id`)
    ON DELETE CASCADE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci;


-- -----------------------------------------------------
-- Table `proyinf4`.`migrations`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `proyinf4`.`migrations` (
  `id` INT(10) UNSIGNED NOT NULL,
  `migration` VARCHAR(255) CHARACTER SET 'utf8mb4' COLLATE 'utf8mb4_unicode_ci' NOT NULL,
  `batch` INT(11) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci;


-- -----------------------------------------------------
-- Table `proyinf4`.`pages`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `proyinf4`.`pages` (
  `id` INT(10) UNSIGNED NOT NULL,
  `author_id` INT(11) NOT NULL,
  `title` VARCHAR(255) CHARACTER SET 'utf8mb4' COLLATE 'utf8mb4_unicode_ci' NOT NULL,
  `excerpt` TEXT CHARACTER SET 'utf8mb4' COLLATE 'utf8mb4_unicode_ci' NULL DEFAULT NULL,
  `body` TEXT CHARACTER SET 'utf8mb4' COLLATE 'utf8mb4_unicode_ci' NULL DEFAULT NULL,
  `image` VARCHAR(255) CHARACTER SET 'utf8mb4' COLLATE 'utf8mb4_unicode_ci' NULL DEFAULT NULL,
  `slug` VARCHAR(255) CHARACTER SET 'utf8mb4' COLLATE 'utf8mb4_unicode_ci' NOT NULL,
  `meta_description` TEXT CHARACTER SET 'utf8mb4' COLLATE 'utf8mb4_unicode_ci' NULL DEFAULT NULL,
  `status` ENUM('ACTIVE', 'INACTIVE') CHARACTER SET 'utf8mb4' COLLATE 'utf8mb4_unicode_ci' NOT NULL DEFAULT 'INACTIVE',
  `created_at` TIMESTAMP NULL DEFAULT NULL,
  `updated_at` TIMESTAMP NULL DEFAULT NULL,
  `layout` TEXT CHARACTER SET 'utf8mb4' COLLATE 'utf8mb4_unicode_ci' NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `pages_slug_unique` (`slug` ASC))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci;


-- -----------------------------------------------------
-- Table `proyinf4`.`partido_jugadors`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `proyinf4`.`partido_jugadors` (
  `partidoid` INT(10) UNSIGNED NOT NULL,
  `jugadorid` INT(10) UNSIGNED NOT NULL,
  `puntos` INT(11) NULL DEFAULT '0',
  `triples` INT(11) NULL DEFAULT '0',
  `amarilla` TINYINT(4) NULL DEFAULT '0',
  `roja` TINYINT(4) NULL DEFAULT '0',
  `faltas_b` INT(11) NULL DEFAULT '0' COMMENT 'faltas basquetball',
  `deleted_at` TIMESTAMP NULL DEFAULT NULL,
  `created_at` TIMESTAMP NULL DEFAULT NULL,
  `updated_at` TIMESTAMP NULL DEFAULT NULL,
  PRIMARY KEY (`partidoid`, `jugadorid`),
  INDEX `jugadorid_idx` (`jugadorid` ASC),
  CONSTRAINT `jugadorid1`
    FOREIGN KEY (`jugadorid`)
    REFERENCES `proyinf4`.`jugadores` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `partidoid0`
    FOREIGN KEY (`partidoid`)
    REFERENCES `proyinf4`.`partidos` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `proyinf4`.`password_resets`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `proyinf4`.`password_resets` (
  `email` VARCHAR(255) CHARACTER SET 'utf8mb4' COLLATE 'utf8mb4_unicode_ci' NOT NULL,
  `token` VARCHAR(255) CHARACTER SET 'utf8mb4' COLLATE 'utf8mb4_unicode_ci' NOT NULL,
  `created_at` TIMESTAMP NULL DEFAULT NULL,
  INDEX `password_resets_email_index` (`email` ASC))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci;


-- -----------------------------------------------------
-- Table `proyinf4`.`permissions`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `proyinf4`.`permissions` (
  `id` INT(10) UNSIGNED NOT NULL,
  `key` VARCHAR(255) CHARACTER SET 'utf8mb4' COLLATE 'utf8mb4_unicode_ci' NOT NULL,
  `table_name` VARCHAR(255) CHARACTER SET 'utf8mb4' COLLATE 'utf8mb4_unicode_ci' NULL DEFAULT NULL,
  `created_at` TIMESTAMP NULL DEFAULT NULL,
  `updated_at` TIMESTAMP NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  INDEX `permissions_key_index` (`key` ASC))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci;


-- -----------------------------------------------------
-- Table `proyinf4`.`roles`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `proyinf4`.`roles` (
  `id` INT(10) UNSIGNED NOT NULL,
  `name` VARCHAR(255) CHARACTER SET 'utf8mb4' COLLATE 'utf8mb4_unicode_ci' NOT NULL,
  `display_name` VARCHAR(255) CHARACTER SET 'utf8mb4' COLLATE 'utf8mb4_unicode_ci' NOT NULL,
  `created_at` TIMESTAMP NULL DEFAULT NULL,
  `updated_at` TIMESTAMP NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `roles_name_unique` (`name` ASC))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci;


-- -----------------------------------------------------
-- Table `proyinf4`.`permission_role`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `proyinf4`.`permission_role` (
  `permission_id` INT(10) UNSIGNED NOT NULL,
  `role_id` INT(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`permission_id`, `role_id`),
  INDEX `permission_role_permission_id_index` (`permission_id` ASC),
  INDEX `permission_role_role_id_index` (`role_id` ASC),
  CONSTRAINT `permission_role_permission_id_foreign`
    FOREIGN KEY (`permission_id`)
    REFERENCES `proyinf4`.`permissions` (`id`)
    ON DELETE CASCADE,
  CONSTRAINT `permission_role_role_id_foreign`
    FOREIGN KEY (`role_id`)
    REFERENCES `proyinf4`.`roles` (`id`)
    ON DELETE CASCADE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci;


-- -----------------------------------------------------
-- Table `proyinf4`.`sanciones`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `proyinf4`.`sanciones` (
  `id` INT(10) UNSIGNED NOT NULL,
  `jugadorid` INT(10) UNSIGNED NOT NULL,
  `tiempo` VARCHAR(45) NULL DEFAULT NULL,
  `comentario` VARCHAR(200) NULL DEFAULT NULL,
  `deleted_at` TIMESTAMP NULL DEFAULT NULL,
  `created_at` TIMESTAMP NULL DEFAULT NULL,
  `updated_at` TIMESTAMP NULL DEFAULT NULL,
  PRIMARY KEY (`id`, `jugadorid`),
  INDEX `jugadorid_idx` (`jugadorid` ASC),
  CONSTRAINT `jugadorid0`
    FOREIGN KEY (`jugadorid`)
    REFERENCES `proyinf4`.`jugadores` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `proyinf4`.`settings`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `proyinf4`.`settings` (
  `id` INT(10) UNSIGNED NOT NULL,
  `key` VARCHAR(255) CHARACTER SET 'utf8mb4' COLLATE 'utf8mb4_unicode_ci' NOT NULL,
  `display_name` VARCHAR(255) CHARACTER SET 'utf8mb4' COLLATE 'utf8mb4_unicode_ci' NOT NULL,
  `value` TEXT CHARACTER SET 'utf8mb4' COLLATE 'utf8mb4_unicode_ci' NULL DEFAULT NULL,
  `details` TEXT CHARACTER SET 'utf8mb4' COLLATE 'utf8mb4_unicode_ci' NULL DEFAULT NULL,
  `type` VARCHAR(255) CHARACTER SET 'utf8mb4' COLLATE 'utf8mb4_unicode_ci' NOT NULL,
  `order` INT(11) NOT NULL DEFAULT '1',
  `group` VARCHAR(255) CHARACTER SET 'utf8mb4' COLLATE 'utf8mb4_unicode_ci' NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `settings_key_unique` (`key` ASC))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci;


-- -----------------------------------------------------
-- Table `proyinf4`.`usuarios`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `proyinf4`.`usuarios` (
  `id` INT(10) UNSIGNED NOT NULL,
  `nombre` VARCHAR(200) NULL DEFAULT NULL,
  `correo` VARCHAR(200) NULL DEFAULT NULL,
  `password` VARCHAR(200) NULL DEFAULT NULL,
  `admin` TINYINT(4) NULL DEFAULT NULL,
  `deleted_at` TIMESTAMP NULL DEFAULT NULL,
  `created_at` TIMESTAMP NULL DEFAULT NULL,
  `updated_at` TIMESTAMP NULL DEFAULT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `proyinf4`.`subscripciones`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `proyinf4`.`subscripciones` (
  `id` INT(10) UNSIGNED NOT NULL,
  `usuarioid` INT(10) UNSIGNED NULL DEFAULT NULL,
  `equipoid` INT(10) UNSIGNED NULL DEFAULT NULL,
  `fecha` DATE NULL DEFAULT NULL,
  `deleted_at` TIMESTAMP NULL DEFAULT NULL,
  `created_at` TIMESTAMP NULL DEFAULT NULL,
  `updated_at` TIMESTAMP NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  INDEX `usuarioid_idx` (`usuarioid` ASC),
  INDEX `equipoid_idx` (`equipoid` ASC),
  CONSTRAINT `equipoid3`
    FOREIGN KEY (`equipoid`)
    REFERENCES `proyinf4`.`equipos` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `usuarioid1`
    FOREIGN KEY (`usuarioid`)
    REFERENCES `proyinf4`.`usuarios` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `proyinf4`.`translations`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `proyinf4`.`translations` (
  `id` INT(10) UNSIGNED NOT NULL,
  `table_name` VARCHAR(255) CHARACTER SET 'utf8mb4' COLLATE 'utf8mb4_unicode_ci' NOT NULL,
  `column_name` VARCHAR(255) CHARACTER SET 'utf8mb4' COLLATE 'utf8mb4_unicode_ci' NOT NULL,
  `foreign_key` INT(10) UNSIGNED NOT NULL,
  `locale` VARCHAR(255) CHARACTER SET 'utf8mb4' COLLATE 'utf8mb4_unicode_ci' NOT NULL,
  `value` TEXT CHARACTER SET 'utf8mb4' COLLATE 'utf8mb4_unicode_ci' NOT NULL,
  `created_at` TIMESTAMP NULL DEFAULT NULL,
  `updated_at` TIMESTAMP NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `translations_table_name_column_name_foreign_key_locale_unique` (`table_name` ASC, `column_name` ASC, `foreign_key` ASC, `locale` ASC))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci;


-- -----------------------------------------------------
-- Table `proyinf4`.`users`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `proyinf4`.`users` (
  `id` INT(10) UNSIGNED NOT NULL,
  `role_id` INT(10) UNSIGNED NULL DEFAULT NULL,
  `name` VARCHAR(255) CHARACTER SET 'utf8mb4' COLLATE 'utf8mb4_unicode_ci' NOT NULL,
  `email` VARCHAR(255) CHARACTER SET 'utf8mb4' COLLATE 'utf8mb4_unicode_ci' NOT NULL,
  `avatar` VARCHAR(255) CHARACTER SET 'utf8mb4' COLLATE 'utf8mb4_unicode_ci' NULL DEFAULT 'users/default.png',
  `email_verified_at` TIMESTAMP NULL DEFAULT NULL,
  `password` VARCHAR(255) CHARACTER SET 'utf8mb4' COLLATE 'utf8mb4_unicode_ci' NOT NULL,
  `remember_token` VARCHAR(100) CHARACTER SET 'utf8mb4' COLLATE 'utf8mb4_unicode_ci' NULL DEFAULT NULL,
  `settings` TEXT CHARACTER SET 'utf8mb4' COLLATE 'utf8mb4_unicode_ci' NULL DEFAULT NULL,
  `created_at` TIMESTAMP NULL DEFAULT NULL,
  `updated_at` TIMESTAMP NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `users_email_unique` (`email` ASC),
  INDEX `users_role_id_foreign` (`role_id` ASC),
  CONSTRAINT `users_role_id_foreign`
    FOREIGN KEY (`role_id`)
    REFERENCES `proyinf4`.`roles` (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci;


-- -----------------------------------------------------
-- Table `proyinf4`.`user_roles`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `proyinf4`.`user_roles` (
  `user_id` INT(10) UNSIGNED NOT NULL,
  `role_id` INT(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`user_id`, `role_id`),
  INDEX `user_roles_user_id_index` (`user_id` ASC),
  INDEX `user_roles_role_id_index` (`role_id` ASC),
  CONSTRAINT `user_roles_role_id_foreign`
    FOREIGN KEY (`role_id`)
    REFERENCES `proyinf4`.`roles` (`id`)
    ON DELETE CASCADE,
  CONSTRAINT `user_roles_user_id_foreign`
    FOREIGN KEY (`user_id`)
    REFERENCES `proyinf4`.`users` (`id`)
    ON DELETE CASCADE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
