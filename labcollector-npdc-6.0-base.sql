-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: db
-- Generation Time: Jul 22, 2022 at 04:46 PM
-- Server version: 8.0.29
-- PHP Version: 8.0.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `labcollector`
--

-- --------------------------------------------------------

--
-- Table structure for table `abook`
--

CREATE TABLE `abook` (
  `count` int UNSIGNED NOT NULL,
  `abook_cat` mediumint UNSIGNED DEFAULT NULL,
  `name` mediumtext,
  `email` mediumtext,
  `phone` varchar(25) DEFAULT NULL,
  `fax` varchar(25) DEFAULT NULL,
  `mobile` varchar(25) DEFAULT NULL,
  `company` varchar(50) DEFAULT NULL,
  `address` mediumtext,
  `state` varchar(50) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `postcode` varchar(25) DEFAULT NULL,
  `country` varchar(50) DEFAULT NULL,
  `web` mediumtext,
  `comments` longtext,
  `file` mediumtext,
  `date_created` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `wait` tinyint UNSIGNED DEFAULT NULL,
  `secret` tinyint UNSIGNED DEFAULT NULL,
  `extra1` varchar(100) DEFAULT NULL,
  `extra2` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int NOT NULL,
  `admin` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `user_type` tinyint UNSIGNED DEFAULT '0',
  `contact_id` int UNSIGNED DEFAULT NULL,
  `group_type` int UNSIGNED DEFAULT NULL,
  `count_failed` tinyint UNSIGNED DEFAULT '0',
  `ip_restriction` int DEFAULT NULL,
  `main_group_limit` int DEFAULT NULL,
  `suspended` tinyint DEFAULT NULL,
  `temporary_pass` tinyint DEFAULT NULL,
  `archived` tinyint DEFAULT NULL,
  `pass_date` datetime DEFAULT NULL,
  `badge_number` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `admin`, `password`, `user_type`, `contact_id`, `group_type`, `count_failed`, `ip_restriction`, `main_group_limit`, `suspended`, `temporary_pass`, `archived`, `pass_date`, `badge_number`) VALUES
(1, 'admin', 'M:&FENZ|AW', 1, 1, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `alerts_email_setup`
--

CREATE TABLE `alerts_email_setup` (
  `id` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `status` tinyint UNSIGNED DEFAULT '0',
  `email_freq` tinyint UNSIGNED DEFAULT NULL,
  `email_from` varchar(100) DEFAULT NULL,
  `email_to` mediumtext,
  `email_smtp` varchar(100) DEFAULT NULL,
  `email_port` varchar(5) DEFAULT '25',
  `email_username` varchar(100) DEFAULT NULL,
  `email_password_encrypted` varchar(1024) DEFAULT NULL,
  `email_secure` varchar(100) DEFAULT NULL,
  `last_alert_sent` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `alerts_email_setup`
--

INSERT INTO `alerts_email_setup` (`id`, `status`, `email_freq`, `email_from`, `email_to`, `email_smtp`, `email_port`, `email_username`, `email_password_encrypted`, `email_secure`, `last_alert_sent`) VALUES
(1, 0, NULL, NULL, NULL, NULL, '25', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `animals`
--

CREATE TABLE `animals` (
  `count` int UNSIGNED NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `description` longtext,
  `an_genotype` varchar(150) DEFAULT NULL,
  `animal_cat` mediumint UNSIGNED DEFAULT NULL,
  `date_birth` date DEFAULT NULL,
  `date_arrival` date DEFAULT NULL,
  `date_usage` date DEFAULT NULL,
  `date_death` date DEFAULT NULL,
  `date_cage_deleted` date DEFAULT NULL,
  `quantity` int UNSIGNED DEFAULT NULL,
  `status` mediumint UNSIGNED DEFAULT NULL,
  `keeper` int UNSIGNED DEFAULT NULL,
  `experimentator` int UNSIGNED DEFAULT NULL,
  `comments` longtext,
  `date_created` datetime DEFAULT NULL,
  `date_updated` datetime DEFAULT NULL,
  `wait` tinyint UNSIGNED DEFAULT NULL,
  `secret` tinyint UNSIGNED DEFAULT NULL,
  `unique_code` varchar(50) DEFAULT NULL,
  `chem_id_child` int UNSIGNED DEFAULT NULL,
  `extra1` varchar(150) DEFAULT NULL,
  `extra2` varchar(150) DEFAULT NULL,
  `extra3` varchar(150) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `animals_cages`
--

CREATE TABLE `animals_cages` (
  `cage_id` int UNSIGNED NOT NULL,
  `animal_id` int UNSIGNED DEFAULT NULL,
  `local_id` smallint UNSIGNED DEFAULT NULL,
  `shelf` smallint UNSIGNED DEFAULT NULL,
  `row` smallint UNSIGNED DEFAULT NULL,
  `cage` smallint UNSIGNED DEFAULT NULL,
  `cmodule` varchar(10) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `animals_cages_def`
--

CREATE TABLE `animals_cages_def` (
  `count` smallint UNSIGNED NOT NULL,
  `room` varchar(100) DEFAULT NULL,
  `shelfs` smallint UNSIGNED DEFAULT NULL,
  `rows` smallint UNSIGNED DEFAULT NULL,
  `places` smallint UNSIGNED DEFAULT NULL,
  `group_id` int DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `animals_crossbreed`
--

CREATE TABLE `animals_crossbreed` (
  `cross_id` int NOT NULL,
  `animal_1` int NOT NULL,
  `module_1` varchar(50) NOT NULL,
  `animal_2` int NOT NULL,
  `module_2` varchar(50) NOT NULL,
  `cross_date` timestamp NULL DEFAULT NULL,
  `operator` int NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `animals_crossbreed_descendants`
--

CREATE TABLE `animals_crossbreed_descendants` (
  `id` int NOT NULL,
  `descendant` int NOT NULL,
  `descendant_module` varchar(50) NOT NULL,
  `cross_id` int NOT NULL,
  `operator` int NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `antibodies`
--

CREATE TABLE `antibodies` (
  `count` int UNSIGNED NOT NULL,
  `name` varchar(125) DEFAULT NULL,
  `specificity` varchar(100) DEFAULT NULL,
  `concentration` varchar(20) DEFAULT NULL,
  `host_id` int UNSIGNED DEFAULT NULL,
  `species_reactive` varchar(25) DEFAULT NULL,
  `isotype_id` int UNSIGNED DEFAULT NULL,
  `purity_id` int UNSIGNED DEFAULT NULL,
  `type` varchar(35) DEFAULT NULL,
  `marker_id` int UNSIGNED DEFAULT NULL,
  `applications_id` varchar(10) DEFAULT NULL,
  `description` longtext,
  `box_id` int UNSIGNED DEFAULT NULL,
  `box_details` text,
  `box_status` tinyint DEFAULT NULL,
  `box_status_data` text,
  `st_counter` int DEFAULT NULL,
  `st_date_limit` date DEFAULT NULL,
  `st_days_before_limit` tinyint UNSIGNED DEFAULT NULL,
  `st_defrost_counter` int UNSIGNED DEFAULT NULL,
  `volume` varchar(50) DEFAULT NULL,
  `volume_unit` varchar(25) DEFAULT NULL,
  `date_created` datetime DEFAULT NULL,
  `date_updated` datetime DEFAULT NULL,
  `keeper` int UNSIGNED DEFAULT NULL,
  `wait` tinyint UNSIGNED DEFAULT '0',
  `secret` tinyint UNSIGNED DEFAULT '0',
  `unique_code` varchar(50) DEFAULT NULL,
  `chem_id_child` int UNSIGNED DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `antibodies_options`
--

CREATE TABLE `antibodies_options` (
  `option_id` tinyint UNSIGNED NOT NULL,
  `option_name` varchar(45) DEFAULT NULL,
  `option_type` varchar(25) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `antibodies_options`
--

INSERT INTO `antibodies_options` (`option_id`, `option_name`, `option_type`) VALUES
(1, 'IgG', 'isotype'),
(2, 'IgM', 'isotype'),
(3, 'IgE', 'isotype'),
(4, 'Human', 'host'),
(5, 'Mouse', 'host'),
(6, 'Rabbit', 'host'),
(7, 'Goat', 'host'),
(8, 'Serum', 'purity'),
(9, 'Purified', 'purity'),
(10, 'FITC', 'marker'),
(11, 'Cy3', 'marker'),
(12, 'Cy5', 'marker'),
(13, 'Texas Red', 'marker'),
(14, 'Streptavidin', 'marker'),
(15, 'Immunocytochemistry', 'app'),
(16, 'Western Blot', 'app'),
(17, 'Rat', 'host'),
(18, 'Flow Cytometry', 'app');

-- --------------------------------------------------------

--
-- Table structure for table `associated_owners`
--

CREATE TABLE `associated_owners` (
  `id` int NOT NULL,
  `owner` int DEFAULT NULL,
  `group_id` int DEFAULT NULL,
  `record_id` int DEFAULT NULL,
  `record_module` varchar(10) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `bookmarks`
--

CREATE TABLE `bookmarks` (
  `count` int UNSIGNED NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `url` varchar(200) DEFAULT NULL,
  `description` varchar(150) DEFAULT NULL,
  `cat` smallint UNSIGNED DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `boxes_def`
--

CREATE TABLE `boxes_def` (
  `box_id` int UNSIGNED NOT NULL,
  `master_box_id` int UNSIGNED DEFAULT NULL,
  `box_name` varchar(100) DEFAULT NULL,
  `box_features` varchar(125) DEFAULT NULL,
  `size` varchar(10) DEFAULT NULL,
  `viso_size` int UNSIGNED DEFAULT NULL,
  `box_type` varchar(25) DEFAULT NULL,
  `location` int UNSIGNED DEFAULT NULL,
  `rack` varchar(150) DEFAULT NULL,
  `rack_position` varchar(10) DEFAULT NULL,
  `keeper` int UNSIGNED DEFAULT NULL,
  `box_min` int DEFAULT NULL,
  `box_max` int DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `boxes_def_model`
--

CREATE TABLE `boxes_def_model` (
  `box_id` int UNSIGNED NOT NULL,
  `box_name` varchar(100) DEFAULT NULL,
  `size` varchar(10) DEFAULT NULL,
  `viso_size` int UNSIGNED DEFAULT NULL,
  `box_type` varchar(25) DEFAULT NULL,
  `keeper` int UNSIGNED DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `boxes_def_model`
--

INSERT INTO `boxes_def_model` (`box_id`, `box_name`, `size`, `viso_size`, `box_type`, `keeper`) VALUES
(1, 'Plate 96 well', 'A:1.H:12', NULL, 'plate', NULL),
(2, 'Box 96 tubes', 'A:1.H:12', NULL, 'box', NULL),
(3, 'Box 100 tubes', 'A:1.J:10', NULL, 'box', NULL),
(4, 'Box 81 tubes', 'A:1.I:9', NULL, 'box', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `boxes_def_owners`
--

CREATE TABLE `boxes_def_owners` (
  `bdo_id` int UNSIGNED NOT NULL,
  `box_id` int UNSIGNED NOT NULL,
  `keeper_id` int UNSIGNED NOT NULL,
  `group_id` int UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `boxes_grid_def`
--

CREATE TABLE `boxes_grid_def` (
  `count` int UNSIGNED NOT NULL,
  `box_id` int UNSIGNED DEFAULT NULL,
  `grid_xy` varchar(4) DEFAULT NULL,
  `grid_extra` varchar(15) DEFAULT NULL,
  `grid_user` int UNSIGNED DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `boxes_grid_def_model`
--

CREATE TABLE `boxes_grid_def_model` (
  `count` int UNSIGNED NOT NULL,
  `box_id` int UNSIGNED DEFAULT NULL,
  `grid_xy` varchar(4) DEFAULT NULL,
  `grid_extra` varchar(15) DEFAULT NULL,
  `grid_user` int UNSIGNED DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `boxes_local_def`
--

CREATE TABLE `boxes_local_def` (
  `id` int UNSIGNED NOT NULL,
  `facility` varchar(105) DEFAULT NULL,
  `notes` varchar(200) DEFAULT NULL,
  `storage_temperature` tinyint UNSIGNED DEFAULT NULL,
  `equipment_id` int UNSIGNED DEFAULT NULL,
  `racks_nbr` int UNSIGNED DEFAULT NULL,
  `rack_pos` int UNSIGNED DEFAULT NULL,
  `facility_id` int UNSIGNED DEFAULT NULL,
  `storage_type` varchar(25) DEFAULT NULL,
  `store_mode` tinyint DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `boxes_secondary_def`
--

CREATE TABLE `boxes_secondary_def` (
  `id` int UNSIGNED NOT NULL,
  `box_id` int UNSIGNED NOT NULL DEFAULT '0',
  `record_id` varchar(150) DEFAULT NULL,
  `box_details` text,
  `keeper` int UNSIGNED DEFAULT NULL,
  `unique_code` varchar(50) DEFAULT NULL,
  `volume` varchar(50) DEFAULT NULL,
  `volume_unit` varchar(25) DEFAULT NULL,
  `sec_status` tinyint DEFAULT NULL,
  `sec_status_data` text,
  `st_counter` int DEFAULT NULL,
  `st_date_limit` date DEFAULT NULL,
  `st_days_before_limit` tinyint UNSIGNED DEFAULT NULL,
  `st_defrost_counter` int UNSIGNED DEFAULT '0',
  `min` int DEFAULT NULL,
  `max` int DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `boxes_storage_colors`
--

CREATE TABLE `boxes_storage_colors` (
  `color_grid_id` int UNSIGNED NOT NULL,
  `color` varchar(15) DEFAULT NULL,
  `box_id` int UNSIGNED NOT NULL DEFAULT '0',
  `grid_position` text NOT NULL,
  `record_id` int UNSIGNED NOT NULL DEFAULT '0',
  `module` varchar(10) NOT NULL DEFAULT '0',
  `sec_id` int DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `boxes_storage_comments`
--

CREATE TABLE `boxes_storage_comments` (
  `comment_id` int UNSIGNED NOT NULL,
  `storage_id_sec` int UNSIGNED DEFAULT NULL,
  `record_id_main` varchar(15) DEFAULT NULL,
  `comments` varchar(150) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `boxes_straws_def`
--

CREATE TABLE `boxes_straws_def` (
  `straw_id` int UNSIGNED NOT NULL,
  `straw_ref` varchar(50) DEFAULT NULL,
  `straw_color` varchar(10) DEFAULT NULL,
  `record_id` int UNSIGNED DEFAULT NULL,
  `module_ref` varchar(10) DEFAULT NULL,
  `box_id` int UNSIGNED DEFAULT NULL,
  `sec_id` int UNSIGNED DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `boxes_temp_def`
--

CREATE TABLE `boxes_temp_def` (
  `id` int UNSIGNED NOT NULL,
  `temperature` varchar(10) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `boxes_temp_def`
--

INSERT INTO `boxes_temp_def` (`id`, `temperature`) VALUES
(1, '+25ºC'),
(2, '+4ºC'),
(3, '-20ºC'),
(4, '-80ºC'),
(5, '-168ºC');

-- --------------------------------------------------------

--
-- Table structure for table `budgets_money`
--

CREATE TABLE `budgets_money` (
  `b_id` int UNSIGNED NOT NULL,
  `budget_id` int UNSIGNED NOT NULL DEFAULT '0',
  `money_start` double UNSIGNED NOT NULL DEFAULT '0',
  `budget_date_start` date DEFAULT NULL,
  `budget_date_end` date DEFAULT NULL,
  `keeper` int UNSIGNED NOT NULL DEFAULT '0',
  `group_id` int DEFAULT NULL,
  `valid_user` int DEFAULT NULL,
  `valid_threshold1` double DEFAULT NULL,
  `valid_threshold2` double DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `budgets_spread`
--

CREATE TABLE `budgets_spread` (
  `budget_scheduling_count` int NOT NULL,
  `b_id` int DEFAULT '0',
  `budget_scheduling_month` date DEFAULT NULL,
  `budget_scheduling_money` decimal(10,2) DEFAULT '0.00'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `certificates`
--

CREATE TABLE `certificates` (
  `certif_id` int UNSIGNED NOT NULL,
  `user_id` int UNSIGNED DEFAULT NULL,
  `date_created` datetime DEFAULT NULL,
  `date_renew` datetime DEFAULT NULL,
  `days_valid` int UNSIGNED DEFAULT NULL,
  `certif_password` varchar(50) DEFAULT NULL,
  `certif_country_code` varchar(10) DEFAULT NULL,
  `certif_state` varchar(50) DEFAULT NULL,
  `certif_city` varchar(50) DEFAULT NULL,
  `certif_company` varchar(75) DEFAULT NULL,
  `certif_company_dep` varchar(50) DEFAULT NULL,
  `certif_owner_name` varchar(100) DEFAULT NULL,
  `certif_owner_email` varchar(150) DEFAULT NULL,
  `private_key` text,
  `public_key` text,
  `csr` text,
  `current` tinyint UNSIGNED DEFAULT NULL,
  `signature_image` blob
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `chemicals`
--

CREATE TABLE `chemicals` (
  `count` int UNSIGNED NOT NULL,
  `name` varchar(125) DEFAULT NULL,
  `cat_id` int UNSIGNED DEFAULT NULL,
  `brand` int UNSIGNED DEFAULT NULL,
  `brand_ref` varchar(50) DEFAULT NULL,
  `seller_id` int UNSIGNED DEFAULT NULL,
  `seller_ref` varchar(50) DEFAULT NULL,
  `codebar_ori` varchar(50) DEFAULT NULL,
  `price` varchar(20) DEFAULT NULL,
  `packsize` varchar(75) DEFAULT NULL,
  `storage_id` int UNSIGNED DEFAULT NULL,
  `comments` longtext,
  `cas` varchar(20) DEFAULT NULL,
  `sigma_msds_link` varchar(100) DEFAULT NULL,
  `keeper` int DEFAULT NULL,
  `days_before_expiration_val` int UNSIGNED DEFAULT NULL,
  `date_created` datetime DEFAULT NULL,
  `date_updated` datetime DEFAULT NULL,
  `wait` tinyint UNSIGNED DEFAULT '0',
  `secret` tinyint UNSIGNED DEFAULT '0',
  `shop` int UNSIGNED DEFAULT '0',
  `parent` varchar(15) DEFAULT NULL,
  `chem_special_code` varchar(250) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `chemicals_lots`
--

CREATE TABLE `chemicals_lots` (
  `count` int UNSIGNED NOT NULL,
  `chem_id` int UNSIGNED DEFAULT NULL,
  `date` date DEFAULT NULL,
  `validity` date DEFAULT NULL,
  `number` varchar(50) DEFAULT NULL,
  `comments` text,
  `quantity` decimal(9,2) UNSIGNED DEFAULT NULL,
  `original_quantity` decimal(9,2) UNSIGNED DEFAULT NULL,
  `unit_id` int UNSIGNED DEFAULT NULL,
  `storage_id_simple` int DEFAULT NULL,
  `storage_id_main` int DEFAULT NULL,
  `file_name` varchar(150) DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL,
  `derived_by` int DEFAULT NULL,
  `derived_date` date DEFAULT NULL,
  `d_req_by` int DEFAULT NULL,
  `d_req_date` date DEFAULT NULL,
  `d_val_by` int DEFAULT NULL,
  `d_val_date` date DEFAULT NULL,
  `d_trash_by` int DEFAULT NULL,
  `d_trash_date` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `chem_cat`
--

CREATE TABLE `chem_cat` (
  `cat_id` int UNSIGNED NOT NULL,
  `cat_name` varchar(75) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `chem_lots_conso`
--

CREATE TABLE `chem_lots_conso` (
  `conso_id` int NOT NULL,
  `contact_id` int UNSIGNED NOT NULL,
  `lot_id` int UNSIGNED NOT NULL,
  `chem_id` int UNSIGNED NOT NULL,
  `action` varchar(50) DEFAULT NULL,
  `orderby_id` int DEFAULT NULL,
  `qty_before` float(9,2) NOT NULL DEFAULT '0.00',
  `qty` float(9,2) NOT NULL DEFAULT '0.00',
  `qty_after` float(9,2) NOT NULL DEFAULT '0.00',
  `unit_price` float(9,2) NOT NULL DEFAULT '0.00',
  `date_taken` date NOT NULL,
  `budget_conso` int NOT NULL,
  `budget_recredit` int NOT NULL,
  `date_recredit` date NOT NULL,
  `user_recredit` int NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `chem_risk_icons`
--

CREATE TABLE `chem_risk_icons` (
  `count` int UNSIGNED NOT NULL,
  `chem_id` int UNSIGNED DEFAULT NULL,
  `risk_icon` varchar(50) DEFAULT NULL,
  `module` varchar(25) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `chem_risk_info`
--

CREATE TABLE `chem_risk_info` (
  `count` int NOT NULL,
  `chem_id` int DEFAULT NULL,
  `module` varchar(25) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `chem_risk_link`
--

CREATE TABLE `chem_risk_link` (
  `count` int UNSIGNED NOT NULL,
  `chem_id` int UNSIGNED DEFAULT NULL,
  `risk_id` int UNSIGNED DEFAULT NULL,
  `complement` blob,
  `module` varchar(25) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `chem_storage`
--

CREATE TABLE `chem_storage` (
  `storage_id` int UNSIGNED NOT NULL,
  `storage_desc` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `count` int UNSIGNED NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `lab` varchar(100) DEFAULT NULL,
  `address` varchar(150) DEFAULT NULL,
  `city` varchar(75) DEFAULT NULL,
  `zip` varchar(20) DEFAULT NULL,
  `country` varchar(50) DEFAULT NULL,
  `tel` varchar(30) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `organisms` varchar(50) DEFAULT NULL,
  `dummyimage` blob,
  `dummyimage_text` varchar(10) DEFAULT NULL,
  `dummyimage_background` varchar(10) DEFAULT NULL,
  `language` varchar(4) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`count`, `name`, `lab`, `address`, `city`, `zip`, `country`, `tel`, `email`, `organisms`, `dummyimage`, `dummyimage_text`, `dummyimage_background`, `language`) VALUES
(1, 'Super Admin', '', '', '', '', '', '', 'dong.yang@ufl.edu', NULL, 0x89504e470d0a1a0a0000000d49484452000000500000005004030000007c3fef9e0000001b504c54454a0bbaffffff6029c27748cb8d66d3d1c2ede8e0f6bba3e5a485dc7e96511a000000097048597300000ec400000ec401952b0e1b0000016e494441544889ed944d6bc2401086375f35c7bed6448f9152e8d150a957457bd77f604aa13d1a283d27d0427f7677f64356d911af857d0f71575f66e69999284450505090d4fdfca9bac6f702a0fc34d601d031be07284df46d0aecfdbeb8d1c6b1beae803bbf51e61aaf375fd6b83bc63ed7142595f7f8aee3a340e937ae4caa443d538c7698798d3d6e9d5b86e10a07c6b83f29643b65b04f23f6e86e18ec1a23e7b64395db069c2982537c2c9113063b871332a726360cb66cf14765ceaabe96c1cee4fc8aa53e2be2fa04cf514fdb3333c70355cd4c3bee8f3bd16049d3f7630bbd915bf9990082c608ce28163a648e8232004bd629d7b022e8e257aa61b0854ed711af1183ad31b6d441a3116f6ca9838d3516978d892a544db5ba987a60d621f162a7f6b74e424f9c82cf15bdd1f39996adb6b36b31f41831fe9effa8fa5bfb12d43eecc880be0a01dbe8c8879d9986540e43e6c55e34662107c76548fdff54f17cb3f67c1d1414f4dff407a21d326b8b5ae7ef0000000049454e44ae426082, 'FFF', '4a0bba', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `contacts_home_blocks`
--

CREATE TABLE `contacts_home_blocks` (
  `block_id` int NOT NULL,
  `contact_id` int NOT NULL,
  `block_name` varchar(512) NOT NULL,
  `block_configuration` text,
  `display_order` int NOT NULL,
  `nb_columns` tinyint(1) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `docs`
--

CREATE TABLE `docs` (
  `count` int UNSIGNED NOT NULL,
  `title` varchar(150) DEFAULT NULL,
  `description` longtext,
  `file_type` varchar(100) DEFAULT NULL,
  `file` varchar(200) DEFAULT NULL,
  `original_file_name` varchar(150) DEFAULT NULL,
  `editor` tinyint UNSIGNED DEFAULT '0',
  `date_created` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `cat` int UNSIGNED DEFAULT NULL,
  `author` int UNSIGNED DEFAULT NULL,
  `wait` tinyint UNSIGNED DEFAULT '0',
  `secret` tinyint UNSIGNED DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `docs_cat`
--

CREATE TABLE `docs_cat` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `parent` int UNSIGNED DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `docs_cat`
--

INSERT INTO `docs_cat` (`id`, `name`, `parent`) VALUES
(1, 'Protocols', 0),
(2, 'Papers', 0),
(3, 'Documents', 0),
(4, 'Presentations', 0),
(5, 'Spreadsheets', 0),
(6, 'Images', 0),
(7, 'Projects', 0),
(8, 'Molecular Biology', 1),
(9, 'Cell Culture', 1),
(10, 'DNA', 1),
(11, 'RNA', 1),
(12, 'Confocal Microscopy', 6),
(13, 'Electron Microscopy', 6),
(14, 'Western Blots', 6),
(15, 'Budgets', 5),
(16, 'Meetings', 4),
(17, 'Lab Meetings', 4);

-- --------------------------------------------------------

--
-- Table structure for table `equipments`
--

CREATE TABLE `equipments` (
  `count` int UNSIGNED NOT NULL,
  `name` varchar(150) DEFAULT NULL,
  `brand` varchar(150) DEFAULT NULL,
  `seller_id` int UNSIGNED DEFAULT NULL,
  `serial` varchar(50) DEFAULT NULL,
  `inv_ref` varchar(50) DEFAULT NULL,
  `comments` longtext,
  `location` varchar(200) DEFAULT NULL,
  `keeper` int UNSIGNED DEFAULT NULL,
  `date_aquisition` varchar(50) DEFAULT NULL,
  `warranty` tinyint UNSIGNED DEFAULT '1',
  `warranty_end` varchar(75) DEFAULT NULL,
  `contract` tinyint UNSIGNED DEFAULT '2',
  `contract_end` varchar(75) DEFAULT NULL,
  `contract_ref` varchar(150) DEFAULT NULL,
  `maintenance_interval` int UNSIGNED DEFAULT NULL,
  `cat` mediumint UNSIGNED DEFAULT NULL,
  `date_created` datetime DEFAULT NULL,
  `date_updated` datetime DEFAULT NULL,
  `wait` tinyint UNSIGNED DEFAULT '0',
  `secret` tinyint UNSIGNED DEFAULT '0',
  `chem_id_child` int UNSIGNED DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `export_models`
--

CREATE TABLE `export_models` (
  `count` int UNSIGNED NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `type` varchar(10) DEFAULT NULL,
  `export_system` varchar(10) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `export_models_fields`
--

CREATE TABLE `export_models_fields` (
  `count` int UNSIGNED NOT NULL,
  `module` varchar(10) DEFAULT NULL,
  `fields` text,
  `model_id` int NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `field_masks`
--

CREATE TABLE `field_masks` (
  `id` int UNSIGNED NOT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `module_table` varchar(50) DEFAULT NULL,
  `mask_val` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `field_masks`
--

INSERT INTO `field_masks` (`id`, `field_name`, `module_table`, `mask_val`) VALUES
(1, 'name', 'npdc_strains', 'NPDC000000'),
(2, 'name', 'npdc_gdnas', 'Category_Plate_Well'),
(3, 'name', 'npdc_sequencing_batches', 'project_batch');

-- --------------------------------------------------------

--
-- Table structure for table `file_types`
--

CREATE TABLE `file_types` (
  `count` tinyint UNSIGNED NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `file_logo` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `file_types`
--

INSERT INTO `file_types` (`count`, `name`, `file_logo`) VALUES
(1, 'Document', 'icon_doc.gif'),
(2, 'Image', 'icon_image.gif'),
(3, 'PDF', 'icon_pdf.gif'),
(4, 'Presentation', 'icon_ppt.gif'),
(5, 'Text', 'icon_txt.gif'),
(6, 'Spreadsheet', 'icon_xls.gif'),
(7, 'Compressed Archive', 'icon_zip.gif');

-- --------------------------------------------------------

--
-- Table structure for table `history`
--

CREATE TABLE `history` (
  `count` int UNSIGNED NOT NULL,
  `user` varchar(50) DEFAULT NULL,
  `user_action` mediumtext,
  `user_module` varchar(25) DEFAULT NULL,
  `user_record` int UNSIGNED DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `contact_id` int DEFAULT NULL,
  `contact_name` varchar(100) DEFAULT NULL,
  `action_reason` mediumtext,
  `checksum` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `history`
--

INSERT INTO `history` (`count`, `user`, `user_action`, `user_module`, `user_record`, `date`, `contact_id`, `contact_name`, `action_reason`, `checksum`) VALUES
(1, 'admin', '172.22.0.1', 'LOGIN', 0, '2022-07-22 16:43:20', 0, '', NULL, '088b710f11a5d6ddcd799c12a1a2b2c1953c42a8'),
(2, 'admin', 'save new contact', 'contacts', 1, '2022-07-22 16:43:45', 0, '', NULL, 'cfb145e1f8ee8e0cfc8d08d1cd9481a2ebc86ea1'),
(3, 'admin', 'Super Admin Update | Login User: admin | Password Change: Yes | Real Person: Super Admin (contactID: 1)', 'admin', 1, '2022-07-22 16:44:15', 1, 'Super Admin', NULL, '962427c31ce6f5821c9802170ee4276ea1062a7f'),
(4, 'admin', 'Insert Import Storage Verification Status | Status: OFF', 'admin', 66, '2022-07-22 16:44:56', 1, 'Super Admin', NULL, 'e1fd8c94929196330929b6e5ee4af9706cafa56c'),
(5, 'admin', 'Modules Preferences EDITION | Module ID: 1 | Module:  | Alternate Name:  | Previous Alternate Name:  | Status: Inactive | Previous Status: Active', 'admin', 1, '2022-07-22 16:44:56', 1, 'Super Admin', NULL, '0183eda2d90d37ab0aa353b9dbba5bc22a7769f1'),
(6, 'admin', 'Modules Preferences EDITION | Module ID: 2 | Module:  | Alternate Name:  | Previous Alternate Name:  | Status: Inactive | Previous Status: Active', 'admin', 1, '2022-07-22 16:44:56', 1, 'Super Admin', NULL, '481a86e701325e076a4419913c7c2a5d8836ae57'),
(7, 'admin', 'Modules Preferences EDITION | Module ID: 3 | Module:  | Alternate Name:  | Previous Alternate Name:  | Status: Inactive | Previous Status: Active', 'admin', 1, '2022-07-22 16:44:56', 1, 'Super Admin', NULL, '01d18be8a7f2f3a3eecfab2bbd1b12b9a10f02d9'),
(8, 'admin', 'Modules Preferences EDITION | Module ID: 4 | Module:  | Alternate Name:  | Previous Alternate Name:  | Status: Inactive | Previous Status: Active', 'admin', 1, '2022-07-22 16:44:56', 1, 'Super Admin', NULL, '52099106c41101d5d79630660f6372cddd28526d'),
(9, 'admin', 'Modules Preferences EDITION | Module ID: 5 | Module:  | Alternate Name:  | Previous Alternate Name:  | Status: Inactive | Previous Status: Active', 'admin', 1, '2022-07-22 16:44:56', 1, 'Super Admin', NULL, '4a9f28246558da2130b315938c2b639eb8039d76'),
(10, 'admin', 'Modules Preferences EDITION | Module ID: 6 | Module:  | Alternate Name:  | Previous Alternate Name:  | Status: Inactive | Previous Status: Active', 'admin', 1, '2022-07-22 16:44:56', 1, 'Super Admin', NULL, '79bf2491ff23db1ff6b5c1d334d2d09f9703a47e'),
(11, 'admin', 'Modules Preferences EDITION | Module ID: 7 | Module:  | Alternate Name:  | Previous Alternate Name:  | Status: Inactive | Previous Status: Active', 'admin', 1, '2022-07-22 16:44:56', 1, 'Super Admin', NULL, '2532d2a28af6e77ba221729ab3eceabd759757ac'),
(12, 'admin', 'Modules Preferences EDITION | Module ID: 8 | Module:  | Alternate Name:  | Previous Alternate Name:  | Status: Inactive | Previous Status: Active', 'admin', 1, '2022-07-22 16:44:56', 1, 'Super Admin', NULL, 'ce4b51904bbdc3070745df59b501fa6b382afd81'),
(13, 'admin', 'Modules Preferences EDITION | Module ID: 9 | Module:  | Alternate Name:  | Previous Alternate Name:  | Status: Inactive | Previous Status: Active', 'admin', 1, '2022-07-22 16:44:56', 1, 'Super Admin', NULL, '35435f3002664cdb4cfc7cedf50736426a8cd00b'),
(14, 'admin', 'Modules Preferences EDITION | Module ID: 10 | Module:  | Alternate Name:  | Previous Alternate Name:  | Status: Inactive | Previous Status: Active', 'admin', 1, '2022-07-22 16:44:56', 1, 'Super Admin', NULL, '5e48cdecf2935c29d9dd4c9a00aa88d0e08c1487'),
(15, 'admin', 'Modules Preferences EDITION | Module ID: 11 | Module:  | Alternate Name:  | Previous Alternate Name:  | Status: Inactive | Previous Status: Active', 'admin', 1, '2022-07-22 16:44:56', 1, 'Super Admin', NULL, '4e0dfad830dd5ee2848326b5a96c46e9a8ee11e8'),
(16, 'admin', 'Modules Preferences EDITION | Module ID: 12 | Module:  | Alternate Name:  | Previous Alternate Name:  | Status: Inactive | Previous Status: Active', 'admin', 1, '2022-07-22 16:44:56', 1, 'Super Admin', NULL, '68cd440654500b4cb97b3f1558d468f7d11f3d47'),
(17, 'admin', 'Modules Preferences EDITION | Module ID: 13 | Module:  | Alternate Name:  | Previous Alternate Name:  | Status: Inactive | Previous Status: Active', 'admin', 1, '2022-07-22 16:44:56', 1, 'Super Admin', NULL, 'b4538ebae4245067d4887a91d31e95ca25b1bb74'),
(18, 'admin', 'Multi-Language Default Language EDITION | Default Language: EN | Previous Default Language: ', 'admin', 1, '2022-07-22 16:44:56', 1, 'Super Admin', NULL, '521015b72ef527ce61a434ab7c31a191edc11a6c'),
(19, 'admin', 'lc_custom_date_format OPTION CREATED | Date Format: Default (Y-m-d)', 'admin', 74, '2022-07-22 16:44:56', 1, 'Super Admin', NULL, '9d62c34c4c778e40d3e1d6a4b9770d0b4b6caef4'),
(20, 'admin', 'lc_timezone OPTION CREATED | UTC', 'admin', 75, '2022-07-22 16:44:56', 1, 'Super Admin', NULL, '15aaf5371a361aa3b49e43bdb526d8ad4bed7683'),
(21, 'admin', 'Admin Level Users Permissions To Access Admin Setup Area MODIFICATION | Value: ', 'admin', 76, '2022-07-22 16:44:56', 1, 'Super Admin', NULL, '4b6116e0136f4e70ac9a6eb2e115707939b43d1e'),
(22, 'admin', 'updated license', 'licence', 1, '2022-07-22 16:45:49', 1, 'Super Admin', NULL, 'd6a16d315e534c9ee9155f0f0e6c0c9e2db5ea3b');

-- --------------------------------------------------------

--
-- Table structure for table `licence`
--

CREATE TABLE `licence` (
  `count` tinyint UNSIGNED NOT NULL,
  `keyvalue` varchar(250) DEFAULT NULL,
  `lc_version` varchar(10) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `licence`
--

INSERT INTO `licence` (`count`, `keyvalue`, `lc_version`) VALUES
(1, 'ME.%PIPML1rcBHeOaXoBLVPupRSbkckVTxjskeJLvQMlHavZFh.&vEPlKYvLRh0.vDTl%MvHOhD%vnkgj:5AxQVj3%87zBvz9x2ev', '6.05');

-- --------------------------------------------------------

--
-- Table structure for table `locked_records`
--

CREATE TABLE `locked_records` (
  `record_id` int NOT NULL,
  `module_short_name` varchar(2) NOT NULL,
  `user_id` int NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `fields` text,
  `custom_fields` text
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `maintenance`
--

CREATE TABLE `maintenance` (
  `count` int UNSIGNED NOT NULL,
  `equipment_id` int UNSIGNED DEFAULT NULL,
  `maintenance_date` varchar(50) DEFAULT NULL,
  `comments` blob,
  `operator` varchar(150) DEFAULT NULL,
  `mt_cat_id` int UNSIGNED DEFAULT NULL,
  `status` tinyint UNSIGNED DEFAULT NULL,
  `file_name` varchar(150) DEFAULT NULL,
  `alert` tinyint UNSIGNED DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `count` int UNSIGNED NOT NULL,
  `title` varchar(150) DEFAULT NULL,
  `message` text,
  `icon` varchar(50) DEFAULT NULL,
  `duration` tinyint UNSIGNED DEFAULT NULL,
  `linked_records` varchar(150) DEFAULT NULL,
  `status` tinyint UNSIGNED DEFAULT NULL,
  `post_date` datetime DEFAULT NULL,
  `keeper` int UNSIGNED DEFAULT NULL,
  `cat` int UNSIGNED DEFAULT NULL,
  `comments` text,
  `extra1` varchar(150) DEFAULT NULL,
  `extra2` varchar(150) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `microarrays`
--

CREATE TABLE `microarrays` (
  `count` int UNSIGNED NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `bio_question` longtext,
  `description` longtext,
  `exp_design` longtext,
  `platform` int UNSIGNED DEFAULT NULL,
  `location` varchar(100) DEFAULT NULL,
  `array_data` longtext,
  `array_image` longblob,
  `experiment_date` date DEFAULT NULL,
  `organism` int DEFAULT NULL,
  `keeper` int UNSIGNED DEFAULT NULL,
  `wait` tinyint UNSIGNED DEFAULT '0',
  `secret` tinyint UNSIGNED DEFAULT '0',
  `date_created` datetime DEFAULT NULL,
  `date_updated` datetime DEFAULT NULL,
  `chem_id_child` int UNSIGNED DEFAULT NULL,
  `extra1` varchar(100) DEFAULT NULL,
  `extra2` varchar(100) DEFAULT NULL,
  `extra3` varchar(250) DEFAULT NULL,
  `gpr` varchar(50) DEFAULT NULL,
  `cel` varchar(50) DEFAULT NULL,
  `yTAT` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `microarrays_genes`
--

CREATE TABLE `microarrays_genes` (
  `id` int NOT NULL,
  `gene_id` varchar(100) DEFAULT NULL,
  `gene_name` varchar(100) DEFAULT NULL,
  `array_ref` int NOT NULL DEFAULT '0',
  `filetype` varchar(30) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `modules`
--

CREATE TABLE `modules` (
  `id` tinyint UNSIGNED NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `short_name` varchar(5) DEFAULT NULL,
  `alternate_name` varchar(50) DEFAULT NULL,
  `table_name` varchar(50) DEFAULT NULL,
  `page` varchar(25) DEFAULT NULL,
  `icon` varchar(25) DEFAULT NULL,
  `sort_order` tinyint UNSIGNED DEFAULT NULL,
  `home` tinyint UNSIGNED DEFAULT NULL,
  `remote` tinyint UNSIGNED DEFAULT NULL,
  `remote_keeper` int UNSIGNED DEFAULT NULL,
  `remote_show_userlist` tinyint UNSIGNED DEFAULT NULL,
  `remote_protect` tinyint UNSIGNED DEFAULT NULL,
  `remote_captcha` tinyint UNSIGNED DEFAULT NULL,
  `nofity` tinyint UNSIGNED DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `modules`
--

INSERT INTO `modules` (`id`, `name`, `short_name`, `alternate_name`, `table_name`, `page`, `icon`, `sort_order`, `home`, `remote`, `remote_keeper`, `remote_show_userlist`, `remote_protect`, `remote_captcha`, `nofity`) VALUES
(1, 'Strains & Cells', 'ST', '', 'strains', 'strains.php', '1.png', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 'Plasmids', 'PL', '', 'plasmids', 'plasmids.php', '2.png', 2, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 'Primers', 'PR', '', 'primers', 'primers.php', '3.png', 3, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(4, 'Reagents & Supplies', 'CH', '', 'chemicals', 'chemicals.php', '6.png', 4, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(5, 'Samples', 'SP', '', 'samples', 'samples.php', '5.png', 5, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(6, 'Antibodies', 'AB', '', 'antibodies', 'antibodies.php', '7.png', 6, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(7, 'Sequences', 'SQ', '', 'sequences', 'sequences.php', '4.png', 7, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(8, 'Animals', 'AN', '', 'animals', 'animals.php', '11.png', 8, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(9, 'Equipment', 'EQ', '', 'equipments', 'equipments.php', '10.png', 9, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(10, 'Chemical Structures', 'CS', '', 'structures', 'chem_structures.php', '8.png', 10, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(11, 'Documents', 'DC', '', 'docs', 'documents.php', '9.png', 11, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(12, 'Address Book', 'AD', '', 'abook', 'abook.php', '12.png', 12, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(13, 'Microarrays', 'MA', '', 'microarrays', 'microarrays.php', '16.png', 13, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(14, 'NPDC: Strains', 'XS', '', 'npdc_strains', 'cmodule.php?cmodule=XS', '1green.png', 14, 1, NULL, NULL, NULL, NULL, NULL, NULL),
(15, 'NPDC: Liquid Growth', 'XL', '', 'npdc_liquid_growth', 'cmodule.php?cmodule=XL', '5green.png', 15, 1, NULL, NULL, NULL, NULL, NULL, NULL),
(16, 'NPDC: gDNAs', 'XG', '', 'npdc_gdnas', 'cmodule.php?cmodule=XG', '3green.png', 16, 1, NULL, NULL, NULL, NULL, NULL, NULL),
(18, 'NPDC: Sequencing Batches', 'X2', '', 'npdc_sequencing_batches', 'cmodule.php?cmodule=X2', '108.png', 18, 1, NULL, NULL, NULL, NULL, NULL, NULL),
(19, 'NPDC: Sequencing Samples', 'X3', '', 'npdc_sequencing_samples', 'cmodule.php?cmodule=X3', '108.png', 19, 1, NULL, NULL, NULL, NULL, NULL, NULL),
(20, 'NPDC: Genome Sequences', 'XX', '', 'npdc_genome_sequences', 'cmodule.php?cmodule=XX', '124.png', 20, 1, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `modules_custom`
--

CREATE TABLE `modules_custom` (
  `field_id` int UNSIGNED NOT NULL,
  `field_name` varchar(75) DEFAULT NULL,
  `size` varchar(15) DEFAULT NULL,
  `field_type` varchar(20) DEFAULT NULL,
  `module_table` varchar(50) DEFAULT NULL,
  `searchable` tinyint UNSIGNED DEFAULT NULL,
  `filter` tinyint UNSIGNED DEFAULT NULL,
  `sort_order` int UNSIGNED DEFAULT NULL,
  `field_cat` tinyint(1) DEFAULT NULL,
  `field_cat_val` int UNSIGNED DEFAULT NULL,
  `analysis_tab` tinyint UNSIGNED DEFAULT NULL,
  `link_limit` varchar(5) DEFAULT NULL,
  `mandatory` tinyint UNSIGNED DEFAULT NULL,
  `field_color` varchar(25) DEFAULT NULL,
  `search_head` tinyint DEFAULT NULL,
  `helper_text` varchar(250) DEFAULT NULL,
  `validation` varchar(250) DEFAULT NULL,
  `tolerance` int DEFAULT NULL,
  `validation_ref_field` int DEFAULT NULL,
  `postfix` varchar(50) DEFAULT NULL,
  `alert_active` int DEFAULT NULL,
  `alert_start` int DEFAULT NULL,
  `alert_end` int DEFAULT NULL,
  `alert_value` int DEFAULT NULL,
  `min` varchar(50) DEFAULT NULL,
  `max` varchar(50) DEFAULT NULL,
  `min2` varchar(50) DEFAULT NULL,
  `max2` varchar(50) DEFAULT NULL,
  `readonly` tinyint UNSIGNED DEFAULT NULL,
  `encrypted` tinyint UNSIGNED DEFAULT NULL,
  `visible` char(10) DEFAULT NULL,
  `uniqueness` tinyint UNSIGNED DEFAULT NULL,
  `associated_module_table` varchar(50) DEFAULT NULL,
  `summary_line_width` tinyint UNSIGNED DEFAULT NULL,
  `field_sec_cat_val` varchar(220) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `modules_custom`
--

INSERT INTO `modules_custom` (`field_id`, `field_name`, `size`, `field_type`, `module_table`, `searchable`, `filter`, `sort_order`, `field_cat`, `field_cat_val`, `analysis_tab`, `link_limit`, `mandatory`, `field_color`, `search_head`, `helper_text`, `validation`, `tolerance`, `validation_ref_field`, `postfix`, `alert_active`, `alert_start`, `alert_end`, `alert_value`, `min`, `max`, `min2`, `max2`, `readonly`, `encrypted`, `visible`, `uniqueness`, `associated_module_table`, `summary_line_width`, `field_sec_cat_val`) VALUES
(3, 'collection', '50', 'field', 'npdc_strains', 1, 1, 4, 0, 0, 0, NULL, 0, '', 0, 'original collection library name', NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 'Y', 0, NULL, NULL, NULL),
(4, 'alt_id', '50', 'field', 'npdc_strains', 1, 0, 5, 0, 0, 0, NULL, 0, '', 0, 'original collection id', NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 'Y', 0, NULL, NULL, NULL),
(5, 'isolation_date', NULL, 'date', 'npdc_strains', 1, 0, 6, 0, 0, 0, NULL, 0, '', 0, 'original isolation date (if known, or collection date)', NULL, NULL, NULL, '', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Y', NULL, NULL, NULL, NULL),
(6, 'isolation_country', '50', 'field', 'npdc_strains', 1, 0, 7, 0, 0, 0, NULL, 0, '', 0, 'country where the strain is isolated (or in some cases, library\'s location)', NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 'Y', 0, NULL, NULL, NULL),
(7, 'category', '50', 'field', 'npdc_strains', 0, 0, 3, 0, 0, 0, NULL, 0, '', 0, 'strain category', NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 'Y', 0, NULL, NULL, NULL),
(8, 'genus', '50', 'field', 'npdc_strains', 1, 0, 9, 0, 0, 0, NULL, 0, '', 0, 'genus information as in the historical metadata (empirically derived)', NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 'Y', 0, NULL, NULL, NULL),
(9, 'species', '50', 'field', 'npdc_strains', 1, 0, 10, 0, 0, 0, NULL, 0, '', 0, 'species information as in the historical metadata (empirically derived)', NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 'Y', 0, NULL, NULL, NULL),
(10, 'comment_type_strain', '50', 'field', 'npdc_strains', 1, 0, 11, 0, 0, 0, NULL, 0, '', 0, 'if there is any type strain identifier, list here with commas', NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 'Y', 0, NULL, NULL, NULL),
(11, 'comment_original', '50', 'field', 'npdc_strains', 0, 0, 12, 0, 0, 0, NULL, 0, '', 0, 'original comments from the historical metadata', NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 'Y', 0, NULL, NULL, NULL),
(12, 'npdc_id', '100', 'autocomplete', 'npdc_liquid_growth', 1, 0, 3, 0, 0, 0, NULL, 0, '', 0, '', 'RECORD_LOCKED', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 'Y', 0, NULL, NULL, NULL),
(13, 'media', '50', 'field', 'npdc_liquid_growth', 1, 0, 5, 0, 0, 0, NULL, 0, '', 0, 'media used for liquid growth', NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 'Y', 0, NULL, NULL, NULL),
(14, 'antibiotics', '50', 'field', 'npdc_liquid_growth', 1, 0, 6, 0, 0, 0, NULL, 0, '', 0, 'antibiotics used for liquid growth', NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 'Y', 0, NULL, NULL, NULL),
(15, 'inoculation_date', NULL, 'date', 'npdc_liquid_growth', 1, 0, 7, 0, 0, 0, NULL, 0, '', 0, 'date inoculated', NULL, NULL, NULL, '', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Y', NULL, NULL, NULL, NULL),
(16, 'inoculation_time', '50', 'select', 'npdc_liquid_growth', 1, 0, 8, 0, 0, 0, NULL, 0, '', 0, 'time inoculated (AM/PM)', NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 'Y', 0, NULL, NULL, NULL),
(17, 'harvest_date', NULL, 'date', 'npdc_liquid_growth', 1, 0, 9, 0, 0, 0, NULL, 0, '', 0, 'date harvested', NULL, NULL, NULL, '', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Y', NULL, NULL, NULL, NULL),
(18, 'harvest_time', NULL, 'select', 'npdc_liquid_growth', 1, 0, 10, 0, 0, 0, NULL, 0, '', 0, 'time harvested (AM/PM)', NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 'Y', 0, NULL, NULL, NULL),
(19, 'growth', '50', 'select', 'npdc_liquid_growth', 0, 0, 4, 0, 0, 0, NULL, 1, '', 0, 'growth rate (0/1/2/3), C for contamination, F for fungal, X for others (put in comment)', NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 'Y', 0, NULL, NULL, NULL),
(20, 'picture', '50', 'field', 'npdc_liquid_growth', 0, 0, 11, 0, 0, 0, NULL, 0, '', 0, 'picture number in dropbox (you can use only number e.g., \"1\" or with specific order of tubes e.g., \"1-1\")', NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 'Y', 0, NULL, NULL, NULL),
(21, 'npdc_id', '100', 'autocomplete', 'npdc_gdnas', 1, 0, 3, 0, 0, 0, NULL, 1, '', 0, '', 'RECORD_LOCKED', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Y', NULL, NULL, NULL, NULL),
(22, 'category', '50', 'select', 'npdc_gdnas', 1, 0, 4, 0, 0, 0, NULL, 0, '', 0, 'default category = NPDC', NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 'Y', 0, NULL, NULL, NULL),
(23, 'plate', '5,0', 'decimal', 'npdc_gdnas', 0, 0, 5, 0, 0, 0, NULL, 0, '', 0, 'plate number (numeric)', NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 'Y', 0, NULL, NULL, NULL),
(24, 'well', '50', 'field', 'npdc_gdnas', 1, 0, 6, 0, 0, 0, NULL, 0, '', 0, 'well id', NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 'Y', 0, NULL, NULL, NULL),
(25, 'isolation_date', NULL, 'date', 'npdc_gdnas', 1, 0, 7, 0, 0, 0, NULL, 0, '', 0, 'date isolated', NULL, NULL, NULL, '', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Y', NULL, NULL, NULL, NULL),
(26, 'nanodrop_concentration', '6,2', 'decimal', 'npdc_gdnas', 0, 0, 8, 0, 0, 0, NULL, 0, '', 0, 'in ng/ul', NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 'Y', 0, NULL, NULL, NULL),
(27, 'nanodrop_a260280', '6,2', 'decimal', 'npdc_gdnas', 0, 0, 9, 0, 0, 0, NULL, 0, '', 0, 'in ratio', NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 'Y', 0, NULL, NULL, NULL),
(28, 'nanodrop_a260230', '6,2', 'decimal', 'npdc_gdnas', 0, 0, 10, 0, 0, 0, NULL, 0, '', 0, 'in ratio', NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 'Y', 0, NULL, NULL, NULL),
(29, 'quantus_concentration', '6,2', 'decimal', 'npdc_gdnas', 0, 0, 11, 0, 0, 0, NULL, 0, '', 0, 'in ng/ul', NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 'Y', 0, NULL, NULL, NULL),
(30, 'person_in_charge', '50', 'field', 'npdc_gdnas', 1, 0, 12, 0, 0, 0, NULL, 0, '', 0, 'name of person doing the isolation', NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 'Y', 0, NULL, NULL, NULL),
(31, 'project_name', '50', 'select', 'npdc_sequencing_batches', 1, 0, 3, 0, 0, 0, NULL, 1, '', 0, 'project name', NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 'Y', 0, NULL, NULL, NULL),
(32, 'batch_name', '50', 'field', 'npdc_sequencing_batches', 1, 0, 4, 0, 0, 0, NULL, 1, '', 0, '', NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 'Y', 0, NULL, NULL, NULL),
(33, 'person_in_charge', '50', 'field', 'npdc_sequencing_batches', 0, 0, 5, 0, 0, 0, NULL, 1, '', 0, 'name of the person in charge for the submission of the batch', NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 'Y', 0, NULL, NULL, NULL),
(34, 'submission_date', NULL, 'date', 'npdc_sequencing_batches', 0, 0, 6, 0, 0, 0, NULL, 1, '', 0, 'date samples submitted for sequencing', NULL, NULL, NULL, '', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 'Y', 0, NULL, NULL, NULL),
(35, 'finished', '50', 'yes_no', 'npdc_sequencing_batches', 0, 0, 7, 0, 0, 0, NULL, 1, '', 0, 'mark finished when all sequencing is done', NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Y', NULL, NULL, NULL, NULL),
(36, 'sequencing_batch', '100', 'autocomplete', 'npdc_sequencing_samples', 0, 0, 3, 0, 0, 0, NULL, 1, '', 0, '', 'RECORD_LOCKED', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Y', NULL, NULL, NULL, NULL),
(37, 'gdna', '100', 'autocomplete', 'npdc_sequencing_samples', 0, 0, 4, 0, 0, 0, NULL, 1, '', 0, 'gdna identifier', 'RECORD_LOCKED', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Y', NULL, NULL, NULL, NULL),
(38, 'quantus_concentration', '6,2', 'decimal', 'npdc_sequencing_samples', 0, 0, 5, 0, 0, 0, NULL, 0, '', 0, 'in ng/ul', NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 'Y', 0, NULL, NULL, NULL),
(39, 'gdna_used_up', '50', 'yes_no', 'npdc_sequencing_samples', 0, 0, 6, 0, 0, 0, NULL, 1, '', 0, 'is all gDNA being used up?', NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Y', NULL, NULL, NULL, NULL),
(40, 'sample_name', '100', 'autocomplete', 'npdc_genome_sequences', 0, 0, 3, 0, 0, 0, NULL, 1, '', 0, '', 'RECORD_LOCKED', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Y', NULL, NULL, NULL, NULL),
(41, 'assembly_status', '50', 'select', 'npdc_genome_sequences', 0, 0, 4, 0, 0, 0, NULL, 1, '', 0, '-1 = failed; 0 = pending; 1 = assembled', NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 'Y', 0, NULL, NULL, NULL),
(42, 'qc_status', '50', 'select', 'npdc_genome_sequences', 0, 0, 5, 0, 0, 0, NULL, 1, '', 0, '-1 = failed; 0 = pending; 1 = passed', NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 'Y', 0, NULL, NULL, NULL),
(43, 'annotation_status', '50', 'select', 'npdc_genome_sequences', 0, 0, 6, 0, 0, 0, NULL, 1, '', 0, '-1 = failed; 0 = pending; 1 = annotated', NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Y', NULL, NULL, NULL, NULL),
(44, 'gtdb_phylum', '50', 'field', 'npdc_genome_sequences', 1, 0, 7, 0, 0, 0, NULL, 0, '', 0, 'phylum based on GTDB analysis', NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 'Y', 0, NULL, NULL, NULL),
(45, 'gtdb_genus', '50', 'field', 'npdc_genome_sequences', 0, 0, 8, 0, 0, 0, NULL, 0, '', 0, 'genus based on GTDB analysis', NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 'Y', 0, NULL, NULL, NULL),
(46, 'gtdb_species', '50', 'field', 'npdc_genome_sequences', 0, 0, 9, 0, 0, 0, NULL, 0, '', 0, 'species based on gtdb analysis', NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 'Y', 0, NULL, NULL, NULL),
(47, 'num_contigs', '7,0', 'decimal', 'npdc_genome_sequences', 0, 0, 10, 0, 0, 0, NULL, 0, '', 0, 'number of contigs in the assembly', NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 'Y', 0, NULL, NULL, NULL),
(48, 'size', '12,0', 'decimal', 'npdc_genome_sequences', 0, 0, 11, 0, 0, 0, NULL, 0, '', 0, 'total genome size in bp', NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 'Y', 0, NULL, NULL, NULL),
(49, 'n50', '4,4', 'decimal', 'npdc_genome_sequences', 0, 0, 12, 0, 0, 0, NULL, 0, '', 0, 'genomes N50', NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 'Y', 0, NULL, NULL, NULL),
(50, 'reads_count', '12,0', 'decimal', 'npdc_genome_sequences', 0, 0, 13, 0, 0, 0, NULL, 0, '', 0, 'number of reads', NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 'Y', 0, NULL, NULL, NULL),
(51, 'reads_size', '20,0', 'decimal', 'npdc_genome_sequences', 0, 0, 14, 0, 0, 0, NULL, 0, '', 0, 'total reads size in bp', NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 'Y', 0, NULL, NULL, NULL),
(52, 'isolation_region', '50', 'field', 'npdc_strains', 0, 0, 8, 0, 0, 0, NULL, 0, '', 0, '', NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 'Y', 0, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `modules_custom_field_legends`
--

CREATE TABLE `modules_custom_field_legends` (
  `id` int NOT NULL,
  `custom_legend` varchar(250) NOT NULL,
  `custom_field_id` int NOT NULL,
  `lang` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `modules_custom_field_legends`
--

INSERT INTO `modules_custom_field_legends` (`id`, `custom_legend`, `custom_field_id`, `lang`) VALUES
(1, 'npdc_id', 1, 'EN'),
(2, 'test', 2, 'EN'),
(3, 'Collection', 3, 'EN'),
(4, 'Alt ID', 4, 'EN'),
(5, 'Isolation Date', 5, 'EN'),
(6, 'Isolation Country', 6, 'EN'),
(7, 'Category', 7, 'EN'),
(8, 'Genus', 8, 'EN'),
(9, 'Species', 9, 'EN'),
(10, 'Comment Type Strain', 10, 'EN'),
(11, 'Comment Original', 11, 'EN'),
(12, 'NPDC ID', 12, 'EN'),
(13, 'Media', 13, 'EN'),
(14, 'Antibiotics', 14, 'EN'),
(15, 'Inoculation Date', 15, 'EN'),
(16, 'Inoculation Time', 16, 'EN'),
(17, 'Harvest Date', 17, 'EN'),
(18, 'Harvest Time', 18, 'EN'),
(19, 'Growth', 19, 'EN'),
(20, 'Picture', 20, 'EN'),
(21, 'NPDC ID', 21, 'EN'),
(22, 'Category', 22, 'EN'),
(23, 'Plate', 23, 'EN'),
(24, 'Well', 24, 'EN'),
(25, 'Isolation Date', 25, 'EN'),
(26, 'Nanodrop Concentration', 26, 'EN'),
(27, 'Nanodrop A260/280', 27, 'EN'),
(28, 'Nanodrop A260/230', 28, 'EN'),
(29, 'Quantus Concentration', 29, 'EN'),
(30, 'Person in Charge', 30, 'EN'),
(31, 'Project Name', 31, 'EN'),
(32, 'Batch Name', 32, 'EN'),
(33, 'Person in Charge', 33, 'EN'),
(34, 'Submission Date', 34, 'EN'),
(35, 'Finished', 35, 'EN'),
(36, 'Sequencing Batch', 36, 'EN'),
(37, 'gDNA', 37, 'EN'),
(38, 'Quantus Concentration', 38, 'EN'),
(39, 'gDNA used up', 39, 'EN'),
(40, 'Sample Name', 40, 'EN'),
(41, 'Assembly Status', 41, 'EN'),
(42, 'QC Status', 42, 'EN'),
(43, 'Annotation Status', 43, 'EN'),
(44, 'GTDB Phylum', 44, 'EN'),
(45, 'GTDB Genus', 45, 'EN'),
(46, 'GTDB species', 46, 'EN'),
(47, 'Num Contigs', 47, 'EN'),
(48, 'Size', 48, 'EN'),
(49, 'N50', 49, 'EN'),
(50, 'Reads Count', 50, 'EN'),
(51, 'Reads Size', 51, 'EN'),
(52, 'Isolation Region', 52, 'EN');

-- --------------------------------------------------------

--
-- Table structure for table `modules_custom_files`
--

CREATE TABLE `modules_custom_files` (
  `file_id` int UNSIGNED NOT NULL,
  `file_name` varchar(100) DEFAULT NULL,
  `file_type` varchar(35) DEFAULT NULL,
  `file_size` int UNSIGNED DEFAULT NULL,
  `file_content` longblob
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `modules_custom_options`
--

CREATE TABLE `modules_custom_options` (
  `option_id` int UNSIGNED NOT NULL,
  `module_id` int UNSIGNED DEFAULT NULL,
  `module_short_name` varchar(4) DEFAULT NULL,
  `cmodule_log` tinyint UNSIGNED DEFAULT '0',
  `cmodule_storage` tinyint UNSIGNED DEFAULT '0',
  `cmodule_animals_storage` tinyint UNSIGNED DEFAULT '0',
  `cmodule_sampleconv` tinyint UNSIGNED DEFAULT '0',
  `cmodule_reagent_link` tinyint UNSIGNED DEFAULT '0',
  `cmodule_analysistab` tinyint UNSIGNED DEFAULT NULL,
  `cmodule_registrybook` tinyint UNSIGNED DEFAULT '0',
  `cmodule_process` tinyint UNSIGNED DEFAULT '0',
  `cmodule_molecule` tinyint UNSIGNED DEFAULT '0',
  `cmodule_seq` tinyint UNSIGNED DEFAULT '0',
  `cmodule_risks` tinyint UNSIGNED DEFAULT '0',
  `extra1` varchar(50) DEFAULT NULL,
  `extra2` varchar(50) DEFAULT NULL,
  `extra3` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `modules_custom_values`
--

CREATE TABLE `modules_custom_values` (
  `val_id` int UNSIGNED NOT NULL,
  `value` varchar(100) DEFAULT NULL,
  `field_id_link` int UNSIGNED DEFAULT NULL,
  `default_val` tinyint DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `value_color` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `modules_custom_values`
--

INSERT INTO `modules_custom_values` (`val_id`, `value`, `field_id_link`, `default_val`, `active`, `value_color`) VALUES
(1, 'npdc_strains', 12, NULL, 1, NULL),
(2, 'AM', 16, NULL, 1, NULL),
(3, 'PM', 16, NULL, 1, NULL),
(4, 'npdc_strains', 21, NULL, 1, NULL),
(5, 'NPDC', 22, NULL, 1, NULL),
(6, 'TSRI', 22, NULL, 1, NULL),
(7, 'Dummy', 22, NULL, 1, NULL),
(8, 'Yes', 35, NULL, 1, NULL),
(9, 'No', 35, NULL, 1, NULL),
(10, 'npdc_sequencing_batches', 36, NULL, 1, NULL),
(11, 'npdc_gdnas', 37, NULL, 1, NULL),
(12, 'Yes', 39, NULL, 1, NULL),
(13, 'No', 39, NULL, 1, NULL),
(14, 'npdc_sequencing_samples', 40, NULL, 1, NULL),
(15, '1', 19, NULL, 1, NULL),
(16, '2', 19, NULL, 1, NULL),
(17, '3', 19, NULL, 1, NULL),
(18, 'F', 19, NULL, 1, NULL),
(19, 'X', 19, NULL, 1, NULL),
(20, 'AM', 18, NULL, 1, NULL),
(21, 'PM', 18, NULL, 1, NULL),
(22, 'assembled', 41, NULL, 1, NULL),
(23, 'pending', 41, NULL, 1, NULL),
(24, 'failed', 41, NULL, 1, NULL),
(25, 'passed', 42, NULL, 1, NULL),
(26, 'pending', 42, NULL, 1, NULL),
(27, 'failed', 42, NULL, 1, NULL),
(28, 'annotated', 43, NULL, 1, NULL),
(29, 'pending', 43, NULL, 1, NULL),
(30, 'failed', 43, NULL, 1, NULL),
(31, '0', 19, NULL, 1, NULL),
(32, 'C', 19, NULL, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `modules_field`
--

CREATE TABLE `modules_field` (
  `field_id` int NOT NULL,
  `name` varchar(50) NOT NULL,
  `type` varchar(50) NOT NULL,
  `form_name_ref` varchar(50) DEFAULT NULL,
  `form_name` varchar(50) DEFAULT NULL,
  `form_type` varchar(50) DEFAULT NULL,
  `form_order` int DEFAULT NULL,
  `visible` char(50) NOT NULL,
  `mandatory` int NOT NULL DEFAULT '0',
  `summary_line` int NOT NULL DEFAULT '0',
  `module_table` varchar(50) NOT NULL,
  `summary_line_width` tinyint UNSIGNED DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `modules_field`
--

INSERT INTO `modules_field` (`field_id`, `name`, `type`, `form_name_ref`, `form_name`, `form_type`, `form_order`, `visible`, `mandatory`, `summary_line`, `module_table`, `summary_line_width`) VALUES
(1, 'count', 'int', 'newid', NULL, NULL, NULL, 'N', 0, 0, 'strains', NULL),
(2, 'number', 'varchar', 'newnumber', 'optional_reference', 'text', 2, 'Y', 0, 0, 'strains', NULL),
(3, 'name', 'varchar', 'newname', 'name', 'text', 1, 'Y', 1, 0, 'strains', NULL),
(4, 'genotype', 'tinytext', 'newgeno', 'genotype', 'text', 5, 'Y', 0, 1, 'strains', NULL),
(5, 'origin', 'text', 'neworigin', 'comments', 'textarea', 4, 'Y', 0, 0, 'strains', NULL),
(6, 'org', 'int', '', 'org', 'select', 6, 'Y', 0, 1, 'strains', NULL),
(7, 'org2', 'int', '', 'org2', 'select', 7, 'Y', 0, 1, 'strains', NULL),
(8, 'box_id', 'int', '', NULL, NULL, NULL, 'Y', 0, 0, 'strains', NULL),
(9, 'box_details', 'text', '', NULL, NULL, NULL, 'Y', 0, 0, 'strains', NULL),
(10, 'box_status', 'tinyint', '', NULL, NULL, NULL, 'N', 0, 0, 'strains', NULL),
(11, 'box_status_data', 'text', '', NULL, NULL, NULL, 'N', 0, 0, 'strains', NULL),
(12, 'st_counter', 'int', '', NULL, NULL, NULL, 'N', 0, 0, 'strains', NULL),
(13, 'st_date_limit', 'date', '', NULL, NULL, NULL, 'N', 0, 0, 'strains', NULL),
(14, 'st_days_before_limit', 'tinyint', '', NULL, NULL, NULL, 'N', 0, 0, 'strains', NULL),
(15, 'st_defrost_counter', 'int', '', NULL, NULL, NULL, 'N', 0, 0, 'strains', NULL),
(16, 'date_created', 'datetime', '', NULL, NULL, 9, 'N', 0, 0, 'strains', NULL),
(17, 'date_updated', 'datetime', '', NULL, NULL, 10, 'N', 0, 0, 'strains', NULL),
(18, 'keeper', 'int', 'contact', 'keeper', 'select', 8, 'Y', 1, 1, 'strains', NULL),
(19, 'unique_code', 'varchar', '', 'unique_code', 'text', 3, 'Y', 0, 0, 'strains', NULL),
(20, 'wait', 'tinyint', 'query_wait', NULL, NULL, NULL, 'N', 0, 0, 'strains', NULL),
(21, 'secret', 'tinyint', '', NULL, NULL, NULL, 'N', 0, 0, 'strains', NULL),
(22, 'volume', 'varchar', '', NULL, NULL, NULL, 'N', 0, 0, 'strains', NULL),
(23, 'volume_unit', 'varchar', '', NULL, NULL, NULL, 'N', 0, 0, 'strains', NULL),
(24, 'chem_id_child', 'int', '', NULL, NULL, NULL, 'N', 0, 0, 'strains', NULL),
(25, 'count', 'int', 'newid', NULL, NULL, NULL, 'N', 0, 0, 'plasmids', NULL),
(26, 'name', 'varchar', 'newname', 'name', 'text', 1, 'Y', 1, 0, 'plasmids', NULL),
(27, 'alternate_ref', 'varchar', 'new_alt_ref', 'alternate_ref', 'text', 2, 'Y', 0, 0, 'plasmids', NULL),
(28, 'features', 'text', 'newfeature', 'comments', 'textarea', 5, 'Y', 0, 1, 'plasmids', NULL),
(29, 'strain', 'varchar', 'newstrain', 'strain', 'text', 6, 'Y', 0, 1, 'plasmids', NULL),
(30, 'ref', 'text', 'newref', 'comments', 'textarea', 4, 'Y', 0, 1, 'plasmids', NULL),
(31, 'mapimage', 'varchar', 'file_name', NULL, NULL, NULL, 'N', 0, 0, 'plasmids', NULL),
(32, 'keeper', 'int', 'contact', 'keeper', 'select', 7, 'Y', 1, 1, 'plasmids', NULL),
(33, 'box_id', 'int', '', NULL, NULL, NULL, 'Y', 0, 0, 'plasmids', NULL),
(34, 'box_details', 'text', '', NULL, NULL, NULL, 'Y', 0, 0, 'plasmids', NULL),
(35, 'box_status', 'tinyint', '', NULL, NULL, NULL, 'N', 0, 0, 'plasmids', NULL),
(36, 'box_status_data', 'text', '', NULL, NULL, NULL, 'N', 0, 0, 'plasmids', NULL),
(37, 'st_counter', 'int', '', NULL, NULL, NULL, 'N', 0, 0, 'plasmids', NULL),
(38, 'st_date_limit', 'date', '', NULL, NULL, NULL, 'N', 0, 0, 'plasmids', NULL),
(39, 'st_days_before_limit', 'tinyint', '', NULL, NULL, NULL, 'N', 0, 0, 'plasmids', NULL),
(40, 'st_defrost_counter', 'int', '', NULL, NULL, NULL, 'N', 0, 0, 'plasmids', NULL),
(41, 'date_created', 'datetime', '', NULL, NULL, 8, 'N', 0, 0, 'plasmids', NULL),
(42, 'date_updated', 'datetime', '', NULL, NULL, 9, 'N', 0, 0, 'plasmids', NULL),
(43, 'wait', 'tinyint', 'query_wait', NULL, NULL, NULL, 'N', 0, 0, 'plasmids', NULL),
(44, 'secret', 'tinyint', '', NULL, NULL, NULL, 'N', 0, 0, 'plasmids', NULL),
(45, 'unique_code', 'varchar', '', 'unique_code', 'text', 3, 'Y', 0, 0, 'plasmids', NULL),
(46, 'volume', 'varchar', '', NULL, NULL, NULL, 'N', 0, 0, 'plasmids', NULL),
(47, 'volume_unit', 'varchar', '', NULL, NULL, NULL, 'N', 0, 0, 'plasmids', NULL),
(48, 'chem_id_child', 'int', '', NULL, NULL, NULL, 'N', 0, 0, 'plasmids', NULL),
(49, 'count', 'int', 'newid', NULL, NULL, NULL, 'N', 0, 0, 'primers', NULL),
(50, 'name', 'varchar', 'newname', 'name', 'text', 2, 'Y', 1, 0, 'primers', NULL),
(51, 'features', 'text', 'newfeatures', 'comments', 'textarea', 3, 'Y', 0, 1, 'primers', NULL),
(52, 'orientation', 'tinyint', '', 'orientation', 'radio', 4, 'Y', 0, 1, 'primers', NULL),
(53, 'conc', 'varchar', 'newconc', 'conc', 'text', 7, 'Y', 0, 0, 'primers', NULL),
(54, 'label5', 'tinyint', '', 'label5', 'select', 9, 'Y', 0, 0, 'primers', NULL),
(55, 'label3', 'tinyint', '', 'label3', 'select', 10, 'Y', 0, 0, 'primers', NULL),
(56, 'quality', 'varchar', 'qual', 'quality', 'select', 5, 'Y', 0, 0, 'primers', NULL),
(57, 'quality_id', 'tinyint', '', NULL, NULL, NULL, 'N', 0, 0, 'primers', NULL),
(58, 'stock', 'tinyint', '', 'stock', 'radio', 6, 'Y', 0, 1, 'primers', NULL),
(59, 'sequence', 'text', '', 'sequence', 'text', 8, 'Y', 0, 0, 'primers', NULL),
(60, 'relatedseq', 'varchar', '', NULL, NULL, NULL, 'N', 0, 0, 'primers', NULL),
(61, 'box_id', 'int', '', NULL, NULL, NULL, 'Y', 0, 0, 'primers', NULL),
(62, 'box_details', 'text', '', NULL, NULL, NULL, 'Y', 0, 0, 'primers', NULL),
(63, 'box_status', 'tinyint', '', NULL, NULL, NULL, 'N', 0, 0, 'primers', NULL),
(64, 'box_status_data', 'text', '', NULL, NULL, NULL, 'N', 0, 0, 'primers', NULL),
(65, 'st_counter', 'int', '', NULL, NULL, NULL, 'N', 0, 0, 'primers', NULL),
(66, 'st_date_limit', 'date', '', NULL, NULL, NULL, 'N', 0, 0, 'primers', NULL),
(67, 'st_days_before_limit', 'tinyint', '', NULL, NULL, NULL, 'N', 0, 0, 'primers', NULL),
(68, 'st_defrost_counter', 'int', '', NULL, NULL, NULL, 'N', 0, 0, 'primers', NULL),
(69, 'date_created', 'datetime', '', NULL, NULL, 12, 'N', 0, 0, 'primers', NULL),
(70, 'date_updated', 'datetime', '', NULL, NULL, 13, 'N', 0, 0, 'primers', NULL),
(71, 'keeper', 'int', 'contact', 'keeper', 'select', 11, 'Y', 1, 1, 'primers', NULL),
(72, 'wait', 'int', 'query_wait', NULL, NULL, NULL, 'N', 0, 0, 'primers', NULL),
(73, 'secret', 'int', '', NULL, NULL, NULL, 'N', 0, 0, 'primers', NULL),
(74, 'unique_code', 'varchar', '', 'unique_code', 'text', 1, 'Y', 0, 0, 'primers', NULL),
(75, 'volume', 'varchar', '', NULL, NULL, NULL, 'N', 0, 0, 'primers', NULL),
(76, 'volume_unit', 'varchar', '', NULL, NULL, NULL, 'N', 0, 0, 'primers', NULL),
(77, 'chem_id_child', 'int', '', NULL, NULL, NULL, 'N', 0, 0, 'primers', NULL),
(78, 'count', 'int', 'newid', NULL, NULL, NULL, 'N', 0, 0, 'chemicals', NULL),
(79, 'name', 'varchar', 'chem_name', 'name', 'text', 1, 'Y', 1, 0, 'chemicals', NULL),
(80, 'cat_id', 'int', 'chem_cat', 'cat', 'select', 4, 'Y', 1, 1, 'chemicals', NULL),
(81, 'brand', 'int', 'chem_brand', 'brand', 'select', 8, 'Y', 0, 0, 'chemicals', NULL),
(82, 'brand_ref', 'varchar', 'chem_brand_ref', 'brand_ref', 'text', 9, 'Y', 0, 0, 'chemicals', NULL),
(83, 'seller_id', 'int', 'chem_seller', 'seller', 'select', 5, 'Y', 0, 1, 'chemicals', NULL),
(84, 'seller_ref', 'varchar', 'chem_seller_ref', 'seller_ref', 'text', 6, 'Y', 0, 0, 'chemicals', NULL),
(85, 'codebar_ori', 'varchar', 'chem_codebar_ori', 'codebar_ori', 'text', 14, 'Y', 0, 0, 'chemicals', NULL),
(86, 'price', 'varchar', 'chem_seller_price', 'number', 'text', 7, 'Y', 0, 0, 'chemicals', NULL),
(87, 'packsize', 'varchar', '', 'packsize', 'select', 10, 'Y', 0, 0, 'chemicals', NULL),
(88, 'storage_id', 'int', 'cham_storage', 'storage_id', 'select', 3, 'Y', 0, 0, 'chemicals', NULL),
(89, 'comments', 'text', 'chem_desc', 'comments', 'textarea', 2, 'Y', 0, 1, 'chemicals', NULL),
(90, 'date_created', 'datetime', '', NULL, NULL, 16, 'N', 0, 0, 'chemicals', NULL),
(91, 'date_updated', 'datetime', '', NULL, NULL, 17, 'N', 0, 0, 'chemicals', NULL),
(92, 'wait', 'tinyint', 'query_wait', NULL, NULL, NULL, 'N', 0, 0, 'chemicals', NULL),
(93, 'secret', 'tinyint', '', NULL, NULL, NULL, 'N', 0, 0, 'chemicals', NULL),
(94, 'shop', 'tinyint', 'chem_shop', 'units', 'text', 13, 'Y', 0, 0, 'chemicals', NULL),
(95, 'parent', 'varchar', '', NULL, NULL, NULL, 'N', 0, 0, 'chemicals', NULL),
(96, 'cas', 'varchar', '', 'number', 'text', 11, 'Y', 0, 1, 'chemicals', NULL),
(97, 'sigma_msds_link', 'varchar', '', NULL, NULL, NULL, 'N', 0, 0, 'chemicals', NULL),
(98, 'days_before_expiration_val', 'int', '', 'units', 'text', 12, 'Y', 0, 0, 'chemicals', NULL),
(99, 'keeper', 'int', 'contact', 'keeper', 'select', 15, 'Y', 0, 0, 'chemicals', NULL),
(100, 'count', 'int', 'newid', NULL, NULL, NULL, 'N', 0, 0, 'samples', NULL),
(101, 'label', 'varchar', 'sample_name_new', 'name', 'text', 2, 'Y', 1, 0, 'samples', NULL),
(102, 'comments', 'text', 'sample_comments_new', 'comments', 'textarea', 4, 'Y', 0, 1, 'samples', NULL),
(103, 'date_created', 'datetime', '', NULL, NULL, 8, 'N', 0, 0, 'samples', NULL),
(104, 'date_updated', 'datetime', '', NULL, NULL, 9, 'N', 0, 0, 'samples', NULL),
(105, 'sample_type', 'tinyint', 'sample_type_new', 'sample_type', 'select', 3, 'Y', 0, 1, 'samples', NULL),
(106, 'origin', 'varchar', 'origin_new', 'origin', 'text', 5, 'Y', 0, 0, 'samples', NULL),
(107, 'org', 'int', '', 'org', 'select', 6, 'Y', 0, 1, 'samples', NULL),
(108, 'volume', 'varchar', '', NULL, NULL, NULL, 'N', 0, 0, 'samples', NULL),
(109, 'volume_unit', 'varchar', '', NULL, NULL, NULL, 'N', 0, 0, 'samples', NULL),
(110, 'unique_code', 'varchar', 'sample_unique_code', 'unique_code', 'text', 1, 'Y', 0, 0, 'samples', NULL),
(111, 'main_operator', 'int', 'contact', 'keeper', 'select', 7, 'Y', 1, 1, 'samples', NULL),
(112, 'box_id', 'int', '', NULL, NULL, NULL, 'Y', 0, 0, 'samples', NULL),
(113, 'box_details', 'text', '', NULL, NULL, NULL, 'Y', 0, 0, 'samples', NULL),
(114, 'box_status', 'tinyint', '', NULL, NULL, NULL, 'N', 0, 0, 'samples', NULL),
(115, 'box_status_data', 'text', '', NULL, NULL, NULL, 'N', 0, 0, 'samples', NULL),
(116, 'st_counter', 'int', '', NULL, NULL, NULL, 'N', 0, 0, 'samples', NULL),
(117, 'st_date_limit', 'date', '', NULL, NULL, NULL, 'N', 0, 0, 'samples', NULL),
(118, 'st_days_before_limit', 'tinyint', '', NULL, NULL, NULL, 'N', 0, 0, 'samples', NULL),
(119, 'st_defrost_counter', 'int', '', NULL, NULL, NULL, 'N', 0, 0, 'samples', NULL),
(120, 'wait', 'tinyint', 'query_wait', NULL, NULL, NULL, 'N', 0, 0, 'samples', NULL),
(121, 'secret', 'tinyint', '', NULL, NULL, NULL, 'N', 0, 0, 'samples', NULL),
(122, 'count', 'int', 'newid', NULL, NULL, NULL, 'N', 0, 0, 'antibodies', NULL),
(123, 'name', 'varchar', 'newname', 'name', 'text', 1, 'Y', 1, 0, 'antibodies', NULL),
(124, 'specificity', 'varchar', 'newspecificity', 'specificity', 'text', 3, 'Y', 0, 1, 'antibodies', NULL),
(125, 'concentration', 'varchar', 'newconc', 'concentration', 'text', 4, 'Y', 0, 0, 'antibodies', NULL),
(126, 'host_id', 'tinyint', 'newhost', 'host_id', 'select', 6, 'Y', 0, 1, 'antibodies', NULL),
(127, 'species_reactive', 'varchar', 'newreactivity_list', 'species_reactive', 'multiselect', 7, 'Y', 0, 0, 'antibodies', NULL),
(128, 'isotype_id', 'tinyint', 'newisotype', 'isotype_id', 'select', 9, 'Y', 0, 0, 'antibodies', NULL),
(129, 'purity_id', 'tinyint', 'newpurity', 'purity_id', 'select', 5, 'Y', 0, 0, 'antibodies', NULL),
(130, 'type', 'varchar', 'newtype', 'type', 'select', 8, 'Y', 0, 1, 'antibodies', NULL),
(131, 'marker_id', 'tinyint', 'newmarker', 'marker_id', 'select', 10, 'Y', 0, 1, 'antibodies', NULL),
(132, 'applications_id', 'varchar', 'newapp_list', 'applications_id', 'multiselect', 11, 'Y', 0, 0, 'antibodies', NULL),
(133, 'description', 'text', 'newfeatures', 'comments', 'textarea', 12, 'Y', 0, 0, 'antibodies', NULL),
(134, 'box_id', 'int', '', NULL, NULL, NULL, 'Y', 0, 0, 'antibodies', NULL),
(135, 'box_details', 'text', '', NULL, NULL, NULL, 'Y', 0, 0, 'antibodies', NULL),
(136, 'box_status', 'tinyint', '', NULL, NULL, NULL, 'N', 0, 0, 'antibodies', NULL),
(137, 'box_status_data', 'text', '', NULL, NULL, NULL, 'N', 0, 0, 'antibodies', NULL),
(138, 'st_counter', 'int', '', NULL, NULL, NULL, 'N', 0, 0, 'antibodies', NULL),
(139, 'st_date_limit', 'date', '', NULL, NULL, NULL, 'N', 0, 0, 'antibodies', NULL),
(140, 'st_days_before_limit', 'tinyint', '', NULL, NULL, NULL, 'N', 0, 0, 'antibodies', NULL),
(141, 'st_defrost_counter', 'int', '', NULL, NULL, NULL, 'N', 0, 0, 'antibodies', NULL),
(142, 'date_created', 'datetime', '', NULL, NULL, 14, 'N', 0, 0, 'antibodies', NULL),
(143, 'date_updated', 'datetime', '', NULL, NULL, 15, 'N', 0, 0, 'antibodies', NULL),
(144, 'keeper', 'int', 'contact', 'keeper', 'select', 13, 'Y', 1, 0, 'antibodies', NULL),
(145, 'wait', 'tinyint', 'query_wait', NULL, NULL, NULL, 'N', 0, 0, 'antibodies', NULL),
(146, 'secret', 'tinyint', '', NULL, NULL, NULL, 'N', 0, 0, 'antibodies', NULL),
(147, 'unique_code', 'varchar', '', 'unique_code', 'text', 2, 'Y', 0, 0, 'antibodies', NULL),
(148, 'volume', 'varchar', '', NULL, NULL, NULL, 'N', 0, 0, 'antibodies', NULL),
(149, 'volume_unit', 'varchar', '', NULL, NULL, NULL, 'N', 0, 0, 'antibodies', NULL),
(150, 'chem_id_child', 'int', '', NULL, NULL, NULL, 'N', 0, 0, 'antibodies', NULL),
(151, 'count', 'int', 'newid', NULL, NULL, NULL, 'N', 0, 0, 'sequences', NULL),
(152, 'label', 'varchar', 'newname', 'name', 'text', 1, 'Y', 1, 0, 'sequences', NULL),
(153, 'features', 'mediumtext', 'newfeatures', 'comments', 'textarea', 2, 'Y', 0, 1, 'sequences', NULL),
(154, 'sequence', 'longtext', 'newseq', 'sequence', 'textarea', 4, 'Y', 0, 1, 'sequences', NULL),
(155, 'type', 'varchar', '', 'type', 'radio', 3, 'Y', 0, 1, 'sequences', NULL),
(156, 'date_created', 'datetime', '', NULL, NULL, 6, 'N', 0, 0, 'sequences', NULL),
(157, 'date_updated', 'datetime', '', NULL, NULL, 7, 'N', 0, 0, 'sequences', NULL),
(158, 'keeper', 'int', 'contact', 'keeper', 'select', 5, 'Y', 1, 1, 'sequences', NULL),
(159, 'wait', 'tinyint', 'query_wait', NULL, NULL, NULL, 'N', 0, 0, 'sequences', NULL),
(160, 'secret', 'tinyint', '', NULL, NULL, NULL, 'N', 0, 0, 'sequences', NULL),
(161, 'count', 'int', 'newid', NULL, NULL, NULL, 'N', 0, 0, 'animals', NULL),
(162, 'name', 'varchar', 'newname', 'name', 'text', 1, 'Y', 1, 0, 'animals', NULL),
(163, 'description', 'mediumtext', 'newdesc', 'comments', 'textarea', 3, 'Y', 0, 1, 'animals', NULL),
(164, 'animal_cat', 'medium', 'cat', 'cat', 'select', 11, 'Y', 0, 1, 'animals', NULL),
(165, 'an_genotype', 'varchar', 'newgeno', 'genotype', 'text', 4, 'Y', 0, 0, 'animals', NULL),
(166, 'date_birth', 'date', '', 'date_birth', 'date', 6, 'Y', 0, 0, 'animals', NULL),
(167, 'date_arrival', 'date', '', 'date_arrival', 'date', 7, 'Y', 0, 0, 'animals', NULL),
(168, 'date_usage', 'date', 'date_exp', 'date_usage', 'date', 8, 'Y', 0, 0, 'animals', NULL),
(169, 'date_death', 'date', '', 'date_death', 'date', 9, 'Y', 0, 0, 'animals', NULL),
(170, 'date_cage_deleted', 'date', '', NULL, NULL, NULL, 'N', 0, 0, 'animals', NULL),
(171, 'quantity', 'tinyint', 'newquant', 'units', 'text', 10, 'Y', 0, 0, 'animals', NULL),
(172, 'status', 'medium', '', 'status', 'select', 12, 'Y', 0, 1, 'animals', NULL),
(173, 'keeper', 'int', '', 'keeper', 'select', 13, 'Y', 1, 1, 'animals', NULL),
(174, 'experimentator', 'int', '', 'experimentator', 'select', 14, 'Y', 0, 0, 'animals', NULL),
(175, 'comments', 'text', 'newcomments', 'comments', 'textarea', 15, 'Y', 0, 0, 'animals', NULL),
(176, 'date_created', 'datetime', '', NULL, NULL, 16, 'N', 0, 0, 'animals', NULL),
(177, 'date_updated', 'datetime', '', NULL, NULL, 17, 'N', 0, 0, 'animals', NULL),
(178, 'wait', 'tinyint', 'query_wait', NULL, NULL, NULL, 'N', 0, 0, 'animals', NULL),
(179, 'secret', 'tinyint', '', NULL, NULL, NULL, 'N', 0, 0, 'animals', NULL),
(180, 'unique_code', 'varchar', '', 'unique_code', 'text', 2, 'Y', 0, 0, 'animals', NULL),
(181, 'chem_id_child', 'int', '', NULL, NULL, NULL, 'N', 0, 0, 'animals', NULL),
(182, 'extra1', 'varchar', 'an_sex', 'sex', 'radio', 5, 'Y', 0, 0, 'animals', NULL),
(183, 'extra2', 'varchar', '', NULL, NULL, NULL, 'N', 0, 0, 'animals', NULL),
(184, 'extra3', 'varchar', '', NULL, NULL, NULL, 'N', 0, 0, 'animals', NULL),
(185, 'count', 'int', 'newid', NULL, NULL, NULL, 'N', 0, 0, 'equipments', NULL),
(186, 'name', 'varchar', 'equipment_name', 'name', 'text', 1, 'Y', 1, 0, 'equipments', NULL),
(187, 'brand', 'varchar', 'equipment_brand', 'brand', 'text', 5, 'Y', 0, 1, 'equipments', NULL),
(188, 'seller_id', 'int', 'equipment_seller', 'seller', 'select', 4, 'Y', 0, 0, 'equipments', NULL),
(189, 'serial', 'varchar', 'equipment_srn', 'serial', 'text', 6, 'Y', 0, 0, 'equipments', NULL),
(190, 'inv_ref', 'varchar', 'equipment_inv', 'inv_ref', 'text', 7, 'Y', 0, 0, 'equipments', NULL),
(191, 'comments', 'text', 'equipment_comments', 'comments', 'textarea', 2, 'Y', 0, 0, 'equipments', NULL),
(192, 'location', 'varchar', 'equipment_location', 'location', 'text', 12, 'Y', 0, 1, 'equipments', NULL),
(193, 'keeper', 'int', 'contact', 'keeper', 'select', 13, 'Y', 1, 1, 'equipments', NULL),
(194, 'date_aquisition', 'varchar', 'equipment_date_created', 'date_aquisition', 'date', 8, 'Y', 0, 0, 'equipments', NULL),
(195, 'warranty', 'tinyint', 'equipment_warranty', 'warranty', 'radio', 9, 'Y', 0, 0, 'equipments', NULL),
(196, 'warranty_end', 'varchar', 'equipment_warranty_end', NULL, NULL, NULL, 'N', 0, 0, 'equipments', NULL),
(197, 'contract', 'tinyint', 'equipment_contract', 'contract', 'radio', 10, 'Y', 0, 0, 'equipments', NULL),
(198, 'contract_end', 'varchar', 'equipment_contract_end', NULL, NULL, NULL, 'N', 0, 0, 'equipments', NULL),
(199, 'contract_ref', 'varchar', 'equipment_contract_ref', NULL, NULL, NULL, 'N', 0, 0, 'equipments', NULL),
(200, 'maintenance_interval', 'int', 'interval_new', 'units', 'text', 11, 'Y', 0, 0, 'equipments', NULL),
(201, 'cat', 'medium', '', 'cat', 'select', 3, 'Y', 0, 1, 'equipments', NULL),
(202, 'date_created', 'datetime', '', NULL, NULL, 14, 'N', 0, 0, 'equipments', NULL),
(203, 'date_updated', 'datetime', '', NULL, NULL, 15, 'N', 0, 0, 'equipments', NULL),
(204, 'wait', 'tinyint', 'query_wait', NULL, NULL, NULL, 'N', 0, 0, 'equipments', NULL),
(205, 'secret', 'tinyint', '', NULL, NULL, NULL, 'N', 0, 0, 'equipments', NULL),
(206, 'chem_id_child', 'int', '', NULL, NULL, NULL, 'N', 0, 0, 'equipments', NULL),
(207, 'count', 'int', '', NULL, NULL, NULL, 'N', 0, 0, 'structures', NULL),
(208, 'name', 'varchar', 'newname', 'name', 'text', 2, 'Y', 1, 0, 'structures', NULL),
(209, 'formula', 'varchar', 'newformula', NULL, NULL, NULL, 'N', 0, 1, 'structures', NULL),
(210, 'smiles', 'varchar', 'newsmiles', NULL, NULL, NULL, 'N', 0, 0, 'structures', NULL),
(211, 'cas', 'varchar', 'newcas', 'number', 'text', 6, 'Y', 0, 1, 'structures', NULL),
(212, 'alternate_names', 'text', 'newname2', 'comments', 'textarea', 3, 'Y', 0, 0, 'structures', NULL),
(213, 'synonyms', 'text', 'newsynonyms', 'comments', 'textarea', 4, 'Y', 0, 0, 'structures', NULL),
(214, 'solubility', 'varchar', 'newsolubility', 'number', 'text', 8, 'Y', 0, 0, 'structures', NULL),
(215, 'purity', 'float', 'newpurity', 'number', 'text', 7, 'Y', 0, 0, 'structures', NULL),
(216, 'form', 'varchar', 'newform', 'form', 'select', 9, 'Y', 0, 1, 'structures', NULL),
(217, 'logp', 'varchar', 'newlogp', 'number', 'text', 12, 'Y', 0, 1, 'structures', NULL),
(218, 'pka', 'varchar', 'newpka', 'number', 'text', 13, 'Y', 0, 0, 'structures', NULL),
(219, 'density', 'float', '', 'number', 'text', 14, 'Y', 0, 0, 'structures', NULL),
(220, 'mw', 'float', 'newmw', NULL, NULL, NULL, 'N', 0, 1, 'structures', NULL),
(221, 'mp', 'varchar', 'newmp', 'number', 'text', 10, 'Y', 0, 0, 'structures', NULL),
(222, 'bp', 'varchar', 'newbp', 'number', 'text', 11, 'Y', 0, 0, 'structures', NULL),
(223, 'hd', 'varchar', 'newhd', 'number', 'text', 15, 'Y', 0, 0, 'structures', NULL),
(224, 'ha', 'varchar', 'newha', 'number', 'text', 16, 'Y', 0, 0, 'structures', NULL),
(225, 'psa', 'varchar', 'newpsa', 'number', 'text', 17, 'Y', 0, 0, 'structures', NULL),
(226, 'description', 'text', 'newfeatures', 'comments', 'textarea', 5, 'Y', 0, 0, 'structures', NULL),
(227, 'mol_file', 'longblob', 'molfile_content', NULL, NULL, NULL, 'N', 0, 0, 'structures', NULL),
(228, 'spectrum_file', 'longblob', 'jdxfile_content', NULL, NULL, NULL, 'N', 0, 0, 'structures', NULL),
(229, 'box_id', 'int', '', NULL, NULL, NULL, 'Y', 0, 0, 'structures', NULL),
(230, 'box_details', 'text', '', NULL, NULL, NULL, 'Y', 0, 0, 'structures', NULL),
(231, 'box_status', 'tinyint', '', NULL, NULL, NULL, 'N', 0, 0, 'structures', NULL),
(232, 'box_status_data', 'text', '', NULL, NULL, NULL, 'N', 0, 0, 'structures', NULL),
(233, 'st_counter', 'int', '', NULL, NULL, NULL, 'N', 0, 0, 'structures', NULL),
(234, 'st_date_limit', 'date', '', NULL, NULL, NULL, 'N', 0, 0, 'structures', NULL),
(235, 'st_days_before_limit', 'tinyint', '', NULL, NULL, NULL, 'N', 0, 0, 'structures', NULL),
(236, 'st_defrost_counter', 'int', '', NULL, NULL, NULL, 'N', 0, 0, 'structures', NULL),
(237, 'date_created', 'datetime', '', NULL, NULL, 19, 'N', 0, 0, 'structures', NULL),
(238, 'date_updated', 'datetime', '', NULL, NULL, 20, 'N', 0, 0, 'structures', NULL),
(239, 'extra1', 'varchar', 'file_extention', NULL, NULL, NULL, 'N', 0, 0, 'structures', NULL),
(240, 'extra2', 'varchar', '', NULL, NULL, NULL, 'N', 0, 0, 'structures', NULL),
(241, 'extra3', 'varchar', '', NULL, NULL, NULL, 'N', 0, 0, 'structures', NULL),
(242, 'keeper', 'int', 'contact', 'keeper', 'select', 18, 'Y', 1, 0, 'structures', NULL),
(243, 'wait', 'tinyint', 'query_wait', NULL, NULL, NULL, 'N', 0, 0, 'structures', NULL),
(244, 'secret', 'tinyint', '', NULL, NULL, NULL, 'N', 0, 0, 'structures', NULL),
(245, 'unique_code', 'varchar', '', 'unique_code', 'text', 1, 'Y', 0, 0, 'structures', NULL),
(246, 'volume', 'varchar', '', NULL, NULL, NULL, 'N', 0, 0, 'structures', NULL),
(247, 'volume_unit', 'varchar', '', NULL, NULL, NULL, 'N', 0, 0, 'structures', NULL),
(248, 'inchi', 'varchar', '', NULL, NULL, NULL, 'N', 0, 0, 'structures', NULL),
(249, 'chem_id_child', 'int', '', NULL, NULL, NULL, 'N', 0, 0, 'structures', NULL),
(250, 'count', 'int', '', NULL, NULL, NULL, 'N', 0, 0, 'docs', NULL),
(251, 'title', 'varchar', 'doc_title', 'name', 'text', 1, 'Y', 1, 0, 'docs', NULL),
(252, 'description', 'text', 'doc_desc', 'comments', 'textarea', 2, 'Y', 0, 1, 'docs', NULL),
(253, 'file_type', 'varchar', '', NULL, NULL, 7, 'N', 0, 0, 'docs', NULL),
(254, 'file', 'varchar', '', 'file', 'upload', 6, 'Y', 0, 0, 'docs', NULL),
(255, 'original_file_name', 'varchar', '', NULL, NULL, NULL, 'N', 0, 0, 'docs', NULL),
(256, 'editor', 'tinyint', '', NULL, NULL, NULL, 'N', 0, 0, 'docs', NULL),
(257, 'date_created', 'datetime', '', NULL, NULL, 8, 'N', 0, 0, 'docs', NULL),
(258, 'date_modified', 'datetime', '', NULL, NULL, 9, 'N', 0, 0, 'docs', NULL),
(259, 'cat', 'tinyint', 'doc_cat', 'cat', 'select', 4, 'Y', 0, 1, 'docs', NULL),
(260, 'author', 'tinyint', 'contact', 'keeper', 'select', 3, 'Y', 1, 1, 'docs', NULL),
(261, 'wait', 'tinyint', 'query_wait', NULL, NULL, NULL, 'N', 0, 0, 'docs', NULL),
(262, 'secret', 'tinyint', '', NULL, NULL, NULL, 'N', 0, 0, 'docs', NULL),
(263, 'count', 'int', '', NULL, NULL, NULL, 'N', 0, 0, 'abook', NULL),
(264, 'abook_cat', 'mediumint', 'cat', 'cat', 'select', 13, 'Y', 0, 1, 'abook', NULL),
(265, 'name', 'mediumtext', 'newname', 'name', 'text', 1, 'Y', 1, 0, 'abook', NULL),
(266, 'email', 'mediumtext', 'newemail', 'email', 'text', 11, 'Y', 0, 1, 'abook', NULL),
(267, 'phone', 'varchar', 'newphone', 'number', 'text', 8, 'Y', 0, 1, 'abook', NULL),
(268, 'fax', 'varchar', 'newfax', 'number', 'text', 10, 'Y', 0, 0, 'abook', NULL),
(269, 'mobile', 'varchar', 'newmob', 'number', 'text', 9, 'Y', 0, 0, 'abook', NULL),
(270, 'company', 'varchar', 'newcomp', 'company', 'text', 2, 'Y', 0, 1, 'abook', NULL),
(271, 'address', 'medimtext', 'newad', 'address', 'text', 3, 'Y', 0, 0, 'abook', NULL),
(272, 'state', 'varchar', 'newstate', 'city', 'text', 6, 'Y', 0, 0, 'abook', NULL),
(273, 'city', 'varchar', 'newcity', 'city', 'text', 4, 'Y', 0, 0, 'abook', NULL),
(274, 'postcode', 'varchar', 'newzip', 'city', 'text', 5, 'Y', 0, 0, 'abook', NULL),
(275, 'country', 'varchar', 'newcountry', 'city', 'text', 7, 'Y', 0, 0, 'abook', NULL),
(276, 'web', 'mediumtext', 'newurl', 'web', 'text', 12, 'Y', 0, 0, 'abook', NULL),
(277, 'comments', 'text', 'newcomments', 'comments', 'textarea', 14, 'Y', 0, 0, 'abook', NULL),
(278, 'file', 'mediumtext', '', NULL, NULL, NULL, 'N', 0, 0, 'abook', NULL),
(279, 'date_created', 'datetime', '', NULL, NULL, 15, 'N', 0, 0, 'abook', NULL),
(280, 'date_modified', 'datetime', '', NULL, NULL, 16, 'N', 0, 0, 'abook', NULL),
(281, 'wait', 'tinyint', 'query_wait', NULL, NULL, NULL, 'N', 0, 0, 'abook', NULL),
(282, 'secret', 'tinyint', '', NULL, NULL, NULL, 'N', 0, 0, 'abook', NULL),
(283, 'extra1', 'varchar', '', NULL, NULL, NULL, 'N', 0, 0, 'abook', NULL),
(284, 'extra2', 'varchar', '', NULL, NULL, NULL, 'N', 0, 0, 'abook', NULL),
(285, 'count', 'int', '', NULL, NULL, NULL, 'N', 0, 0, 'microarrays', NULL),
(286, 'name', 'varchar', 'newname', 'name', 'text', 1, 'Y', 1, 0, 'microarrays', NULL),
(287, 'bio_question', 'text', '', 'comments', 'textarea', 2, 'Y', 0, 0, 'microarrays', NULL),
(288, 'description', 'text', '', 'comments', 'textarea', 4, 'Y', 0, 1, 'microarrays', NULL),
(289, 'exp_design', 'text', '', 'comments', 'textarea', 3, 'Y', 0, 0, 'microarrays', NULL),
(290, 'platform', 'int', '', 'platform', 'select', 9, 'Y', 0, 1, 'microarrays', NULL),
(291, 'location', 'varchar', '', NULL, NULL, NULL, 'N', 0, 0, 'microarrays', NULL),
(292, 'array_data', 'longtext', '', 'array_data', 'textarea', 5, 'Y', 0, 0, 'microarrays', NULL),
(293, 'array_image', 'longblob', 'image_file_data', 'array_image', 'upload', 7, 'Y', 0, 0, 'microarrays', NULL),
(294, 'experiment_date', 'date', '', 'date', 'date', 6, 'Y', 0, 0, 'microarrays', NULL),
(295, 'organism', 'int', 'org', 'org', 'select', 8, 'Y', 0, 1, 'microarrays', NULL),
(296, 'keeper', 'int', 'contact', 'keeper', 'select', 10, 'Y', 1, 1, 'microarrays', NULL),
(297, 'wait', 'tinyint', 'query_wait', NULL, NULL, NULL, 'N', 0, 0, 'microarrays', NULL),
(298, 'secret', 'tinyint', '', NULL, NULL, NULL, 'N', 0, 0, 'microarrays', NULL),
(299, 'date_created', 'datetime', '', NULL, NULL, 11, 'N', 0, 0, 'microarrays', NULL),
(300, 'date_updated', 'datetime', '', NULL, NULL, 12, 'N', 0, 0, 'microarrays', NULL),
(301, 'chem_id_child', 'int', '', NULL, NULL, NULL, 'N', 0, 0, 'microarrays', NULL),
(302, 'extra1', 'varchar', '', NULL, NULL, NULL, 'N', 0, 0, 'microarrays', NULL),
(303, 'extra2', 'varchar', '', NULL, NULL, NULL, 'N', 0, 0, 'microarrays', NULL),
(304, 'extra3', 'varchar', '', NULL, NULL, NULL, 'N', 0, 0, 'microarrays', NULL),
(305, 'gpr', 'varchar', '', NULL, NULL, NULL, 'N', 0, 0, 'microarrays', NULL),
(306, 'cel', 'varchar', '', NULL, NULL, NULL, 'N', 0, 0, 'microarrays', NULL),
(307, 'yTAT', 'varchar', '', NULL, NULL, NULL, 'N', 0, 0, 'microarrays', NULL),
(308, 'count', 'int', NULL, NULL, NULL, NULL, 'N', 0, 0, 'npdc_strains', NULL),
(309, 'name', 'varchar', 'newname', 'name', 'text', 2, 'Y', 1, 0, 'npdc_strains', NULL),
(310, 'comment_log', 'longtext', 'newdesc', 'comment_log', 'textarea', 13, 'Y', 0, 0, 'npdc_strains', NULL),
(311, 'keeper', 'int', 'contact', 'keeper', 'select', 14, 'Y', 1, 0, 'npdc_strains', NULL),
(312, 'box_id', 'int', NULL, NULL, NULL, NULL, 'N', 0, 0, 'npdc_strains', NULL),
(313, 'box_details', 'text', NULL, NULL, NULL, NULL, 'N', 0, 0, 'npdc_strains', NULL),
(314, 'box_status', 'tinyint', NULL, NULL, NULL, NULL, 'N', 0, 0, 'npdc_strains', NULL),
(315, 'box_status_data', 'text', NULL, NULL, NULL, NULL, 'N', 0, 0, 'npdc_strains', NULL),
(316, 'st_counter', 'int', NULL, NULL, NULL, NULL, 'N', 0, 0, 'npdc_strains', NULL),
(317, 'st_date_limit', 'date', NULL, NULL, NULL, NULL, 'N', 0, 0, 'npdc_strains', NULL),
(318, 'st_days_before_limit', 'tinyint', NULL, NULL, NULL, NULL, 'N', 0, 0, 'npdc_strains', NULL),
(319, 'volume', 'varchar', NULL, NULL, NULL, NULL, 'N', 0, 0, 'npdc_strains', NULL),
(320, 'volume_unit', 'varchar', NULL, NULL, NULL, NULL, 'N', 0, 0, 'npdc_strains', NULL),
(321, 'st_defrost_counter', 'int', NULL, NULL, NULL, NULL, 'N', 0, 0, 'npdc_strains', NULL),
(322, 'date_created', 'datetime', NULL, NULL, NULL, 5, 'N', 0, 0, 'npdc_strains', NULL),
(323, 'date_updated', 'datetime', NULL, NULL, NULL, 6, 'N', 0, 0, 'npdc_strains', NULL),
(324, 'wait', 'tinyint', NULL, NULL, NULL, NULL, 'N', 0, 0, 'npdc_strains', NULL),
(325, 'secret', 'tinyint', NULL, NULL, NULL, NULL, 'N', 0, 0, 'npdc_strains', NULL),
(326, 'unique_code', 'varchar', 'sample_unique_code', 'unique_code', 'text', 1, 'N', 0, 0, 'npdc_strains', NULL),
(327, 'chem_id_child', 'int', NULL, NULL, NULL, NULL, 'N', 0, 0, 'npdc_strains', NULL),
(328, 'extra1', 'varchar', NULL, NULL, NULL, NULL, 'N', 0, 0, 'npdc_strains', NULL),
(329, 'extra2', 'varchar', NULL, NULL, NULL, NULL, 'N', 0, 0, 'npdc_strains', NULL),
(331, 'count', 'int', NULL, NULL, NULL, NULL, 'N', 0, 0, 'npdc_liquid_growth', NULL),
(332, 'name', 'varchar', 'newname', 'name', 'text', 2, 'Y', 1, 0, 'npdc_liquid_growth', NULL),
(333, 'comment_log', 'longtext', 'newdesc', 'comment_log', 'textarea', 12, 'Y', 0, 0, 'npdc_liquid_growth', NULL),
(334, 'keeper', 'int', 'contact', 'keeper', 'select', 13, 'Y', 1, 0, 'npdc_liquid_growth', NULL),
(335, 'box_id', 'int', NULL, NULL, NULL, NULL, 'N', 0, 0, 'npdc_liquid_growth', NULL),
(336, 'box_details', 'text', NULL, NULL, NULL, NULL, 'N', 0, 0, 'npdc_liquid_growth', NULL),
(337, 'box_status', 'tinyint', NULL, NULL, NULL, NULL, 'N', 0, 0, 'npdc_liquid_growth', NULL),
(338, 'box_status_data', 'text', NULL, NULL, NULL, NULL, 'N', 0, 0, 'npdc_liquid_growth', NULL),
(339, 'st_counter', 'int', NULL, NULL, NULL, NULL, 'N', 0, 0, 'npdc_liquid_growth', NULL),
(340, 'st_date_limit', 'date', NULL, NULL, NULL, NULL, 'N', 0, 0, 'npdc_liquid_growth', NULL),
(341, 'st_days_before_limit', 'tinyint', NULL, NULL, NULL, NULL, 'N', 0, 0, 'npdc_liquid_growth', NULL),
(342, 'volume', 'varchar', NULL, NULL, NULL, NULL, 'N', 0, 0, 'npdc_liquid_growth', NULL),
(343, 'volume_unit', 'varchar', NULL, NULL, NULL, NULL, 'N', 0, 0, 'npdc_liquid_growth', NULL),
(344, 'st_defrost_counter', 'int', NULL, NULL, NULL, NULL, 'N', 0, 0, 'npdc_liquid_growth', NULL),
(345, 'date_created', 'datetime', NULL, NULL, NULL, 5, 'N', 0, 0, 'npdc_liquid_growth', NULL),
(346, 'date_updated', 'datetime', NULL, NULL, NULL, 6, 'N', 0, 0, 'npdc_liquid_growth', NULL),
(347, 'wait', 'tinyint', NULL, NULL, NULL, NULL, 'N', 0, 0, 'npdc_liquid_growth', NULL),
(348, 'secret', 'tinyint', NULL, NULL, NULL, NULL, 'N', 0, 0, 'npdc_liquid_growth', NULL),
(349, 'unique_code', 'varchar', 'sample_unique_code', 'unique_code', 'text', 1, 'N', 0, 0, 'npdc_liquid_growth', NULL),
(350, 'chem_id_child', 'int', NULL, NULL, NULL, NULL, 'N', 0, 0, 'npdc_liquid_growth', NULL),
(351, 'extra1', 'varchar', NULL, NULL, NULL, NULL, 'N', 0, 0, 'npdc_liquid_growth', NULL),
(352, 'extra2', 'varchar', NULL, NULL, NULL, NULL, 'N', 0, 0, 'npdc_liquid_growth', NULL),
(353, 'extra3', 'varchar', NULL, NULL, NULL, NULL, 'N', 0, 0, 'npdc_liquid_growth', NULL),
(354, 'count', 'int', NULL, NULL, NULL, NULL, 'N', 0, 0, 'npdc_gdnas', NULL),
(355, 'name', 'varchar', 'newname', 'name', 'text', 2, 'Y', 1, 0, 'npdc_gdnas', NULL),
(356, 'comment_log', 'longtext', 'newdesc', 'comment_log', 'textarea', 13, 'Y', 0, 0, 'npdc_gdnas', NULL),
(357, 'keeper', 'int', 'contact', 'keeper', 'select', 14, 'Y', 1, 0, 'npdc_gdnas', NULL),
(358, 'box_id', 'int', NULL, NULL, NULL, NULL, 'N', 0, 0, 'npdc_gdnas', NULL),
(359, 'box_details', 'text', NULL, NULL, NULL, NULL, 'N', 0, 0, 'npdc_gdnas', NULL),
(360, 'box_status', 'tinyint', NULL, NULL, NULL, NULL, 'N', 0, 0, 'npdc_gdnas', NULL),
(361, 'box_status_data', 'text', NULL, NULL, NULL, NULL, 'N', 0, 0, 'npdc_gdnas', NULL),
(362, 'st_counter', 'int', NULL, NULL, NULL, NULL, 'N', 0, 0, 'npdc_gdnas', NULL),
(363, 'st_date_limit', 'date', NULL, NULL, NULL, NULL, 'N', 0, 0, 'npdc_gdnas', NULL),
(364, 'st_days_before_limit', 'tinyint', NULL, NULL, NULL, NULL, 'N', 0, 0, 'npdc_gdnas', NULL),
(365, 'volume', 'varchar', NULL, NULL, NULL, NULL, 'N', 0, 0, 'npdc_gdnas', NULL),
(366, 'volume_unit', 'varchar', NULL, NULL, NULL, NULL, 'N', 0, 0, 'npdc_gdnas', NULL),
(367, 'st_defrost_counter', 'int', NULL, NULL, NULL, NULL, 'N', 0, 0, 'npdc_gdnas', NULL),
(368, 'date_created', 'datetime', NULL, NULL, NULL, 5, 'N', 0, 0, 'npdc_gdnas', NULL),
(369, 'date_updated', 'datetime', NULL, NULL, NULL, 6, 'N', 0, 0, 'npdc_gdnas', NULL),
(370, 'wait', 'tinyint', NULL, NULL, NULL, NULL, 'N', 0, 0, 'npdc_gdnas', NULL),
(371, 'secret', 'tinyint', NULL, NULL, NULL, NULL, 'N', 0, 0, 'npdc_gdnas', NULL),
(372, 'unique_code', 'varchar', 'sample_unique_code', 'unique_code', 'text', 1, 'N', 0, 0, 'npdc_gdnas', NULL),
(373, 'chem_id_child', 'int', NULL, NULL, NULL, NULL, 'N', 0, 0, 'npdc_gdnas', NULL),
(374, 'extra1', 'varchar', NULL, NULL, NULL, NULL, 'N', 0, 0, 'npdc_gdnas', NULL),
(375, 'extra2', 'varchar', NULL, NULL, NULL, NULL, 'N', 0, 0, 'npdc_gdnas', NULL),
(376, 'extra3', 'varchar', NULL, NULL, NULL, NULL, 'N', 0, 0, 'npdc_gdnas', NULL),
(400, 'count', 'int', NULL, NULL, NULL, NULL, 'N', 0, 0, 'npdc_sequencing_batches', NULL),
(401, 'name', 'varchar', 'newname', 'name', 'text', 2, 'Y', 1, 0, 'npdc_sequencing_batches', NULL),
(402, 'comment_log', 'longtext', 'newdesc', 'comment_log', 'textarea', 8, 'Y', 0, 0, 'npdc_sequencing_batches', NULL),
(403, 'keeper', 'int', 'contact', 'keeper', 'select', 9, 'Y', 1, 0, 'npdc_sequencing_batches', NULL),
(404, 'box_id', 'int', NULL, NULL, NULL, NULL, 'N', 0, 0, 'npdc_sequencing_batches', NULL),
(405, 'box_details', 'text', NULL, NULL, NULL, NULL, 'N', 0, 0, 'npdc_sequencing_batches', NULL),
(406, 'box_status', 'tinyint', NULL, NULL, NULL, NULL, 'N', 0, 0, 'npdc_sequencing_batches', NULL),
(407, 'box_status_data', 'text', NULL, NULL, NULL, NULL, 'N', 0, 0, 'npdc_sequencing_batches', NULL),
(408, 'st_counter', 'int', NULL, NULL, NULL, NULL, 'N', 0, 0, 'npdc_sequencing_batches', NULL),
(409, 'st_date_limit', 'date', NULL, NULL, NULL, NULL, 'N', 0, 0, 'npdc_sequencing_batches', NULL),
(410, 'st_days_before_limit', 'tinyint', NULL, NULL, NULL, NULL, 'N', 0, 0, 'npdc_sequencing_batches', NULL),
(411, 'volume', 'varchar', NULL, NULL, NULL, NULL, 'N', 0, 0, 'npdc_sequencing_batches', NULL),
(412, 'volume_unit', 'varchar', NULL, NULL, NULL, NULL, 'N', 0, 0, 'npdc_sequencing_batches', NULL),
(413, 'st_defrost_counter', 'int', NULL, NULL, NULL, NULL, 'N', 0, 0, 'npdc_sequencing_batches', NULL),
(414, 'date_created', 'datetime', NULL, NULL, NULL, 5, 'N', 0, 0, 'npdc_sequencing_batches', NULL),
(415, 'date_updated', 'datetime', NULL, NULL, NULL, 6, 'N', 0, 0, 'npdc_sequencing_batches', NULL),
(416, 'wait', 'tinyint', NULL, NULL, NULL, NULL, 'N', 0, 0, 'npdc_sequencing_batches', NULL),
(417, 'secret', 'tinyint', NULL, NULL, NULL, NULL, 'N', 0, 0, 'npdc_sequencing_batches', NULL),
(418, 'unique_code', 'varchar', 'sample_unique_code', 'unique_code', 'text', 1, 'Y', 0, 0, 'npdc_sequencing_batches', NULL),
(419, 'chem_id_child', 'int', NULL, NULL, NULL, NULL, 'N', 0, 0, 'npdc_sequencing_batches', NULL),
(420, 'extra1', 'varchar', NULL, NULL, NULL, NULL, 'N', 0, 0, 'npdc_sequencing_batches', NULL),
(421, 'extra2', 'varchar', NULL, NULL, NULL, NULL, 'N', 0, 0, 'npdc_sequencing_batches', NULL),
(422, 'extra3', 'varchar', NULL, NULL, NULL, NULL, 'N', 0, 0, 'npdc_sequencing_batches', NULL),
(423, 'count', 'int', NULL, NULL, NULL, NULL, 'N', 0, 0, 'npdc_sequencing_samples', NULL),
(424, 'name', 'varchar', 'newname', 'name', 'text', 2, 'Y', 1, 0, 'npdc_sequencing_samples', NULL),
(425, 'comment_log', 'longtext', 'newdesc', 'comment_log', 'textarea', 7, 'Y', 0, 0, 'npdc_sequencing_samples', NULL),
(426, 'keeper', 'int', 'contact', 'keeper', 'select', 8, 'Y', 1, 0, 'npdc_sequencing_samples', NULL),
(427, 'box_id', 'int', NULL, NULL, NULL, NULL, 'N', 0, 0, 'npdc_sequencing_samples', NULL),
(428, 'box_details', 'text', NULL, NULL, NULL, NULL, 'N', 0, 0, 'npdc_sequencing_samples', NULL),
(429, 'box_status', 'tinyint', NULL, NULL, NULL, NULL, 'N', 0, 0, 'npdc_sequencing_samples', NULL),
(430, 'box_status_data', 'text', NULL, NULL, NULL, NULL, 'N', 0, 0, 'npdc_sequencing_samples', NULL),
(431, 'st_counter', 'int', NULL, NULL, NULL, NULL, 'N', 0, 0, 'npdc_sequencing_samples', NULL),
(432, 'st_date_limit', 'date', NULL, NULL, NULL, NULL, 'N', 0, 0, 'npdc_sequencing_samples', NULL),
(433, 'st_days_before_limit', 'tinyint', NULL, NULL, NULL, NULL, 'N', 0, 0, 'npdc_sequencing_samples', NULL),
(434, 'volume', 'varchar', NULL, NULL, NULL, NULL, 'N', 0, 0, 'npdc_sequencing_samples', NULL),
(435, 'volume_unit', 'varchar', NULL, NULL, NULL, NULL, 'N', 0, 0, 'npdc_sequencing_samples', NULL),
(436, 'st_defrost_counter', 'int', NULL, NULL, NULL, NULL, 'N', 0, 0, 'npdc_sequencing_samples', NULL),
(437, 'date_created', 'datetime', NULL, NULL, NULL, 5, 'N', 0, 0, 'npdc_sequencing_samples', NULL),
(438, 'date_updated', 'datetime', NULL, NULL, NULL, 6, 'N', 0, 0, 'npdc_sequencing_samples', NULL),
(439, 'wait', 'tinyint', NULL, NULL, NULL, NULL, 'N', 0, 0, 'npdc_sequencing_samples', NULL),
(440, 'secret', 'tinyint', NULL, NULL, NULL, NULL, 'N', 0, 0, 'npdc_sequencing_samples', NULL),
(441, 'unique_code', 'varchar', 'sample_unique_code', 'unique_code', 'text', 1, 'Y', 0, 0, 'npdc_sequencing_samples', NULL),
(442, 'chem_id_child', 'int', NULL, NULL, NULL, NULL, 'N', 0, 0, 'npdc_sequencing_samples', NULL),
(443, 'extra1', 'varchar', NULL, NULL, NULL, NULL, 'N', 0, 0, 'npdc_sequencing_samples', NULL),
(444, 'extra2', 'varchar', NULL, NULL, NULL, NULL, 'N', 0, 0, 'npdc_sequencing_samples', NULL),
(445, 'extra3', 'varchar', NULL, NULL, NULL, NULL, 'N', 0, 0, 'npdc_sequencing_samples', NULL),
(446, 'count', 'int', NULL, NULL, NULL, NULL, 'N', 0, 0, 'npdc_genome_sequences', NULL),
(447, 'name', 'varchar', 'newname', 'name', 'text', 2, 'Y', 1, 0, 'npdc_genome_sequences', NULL),
(448, 'comment_log', 'longtext', 'newdesc', 'comment_log', 'textarea', 15, 'Y', 0, 0, 'npdc_genome_sequences', NULL),
(449, 'keeper', 'int', 'contact', 'keeper', 'select', 16, 'Y', 1, 0, 'npdc_genome_sequences', NULL),
(450, 'box_id', 'int', NULL, NULL, NULL, NULL, 'N', 0, 0, 'npdc_genome_sequences', NULL),
(451, 'box_details', 'text', NULL, NULL, NULL, NULL, 'N', 0, 0, 'npdc_genome_sequences', NULL),
(452, 'box_status', 'tinyint', NULL, NULL, NULL, NULL, 'N', 0, 0, 'npdc_genome_sequences', NULL),
(453, 'box_status_data', 'text', NULL, NULL, NULL, NULL, 'N', 0, 0, 'npdc_genome_sequences', NULL),
(454, 'st_counter', 'int', NULL, NULL, NULL, NULL, 'N', 0, 0, 'npdc_genome_sequences', NULL),
(455, 'st_date_limit', 'date', NULL, NULL, NULL, NULL, 'N', 0, 0, 'npdc_genome_sequences', NULL),
(456, 'st_days_before_limit', 'tinyint', NULL, NULL, NULL, NULL, 'N', 0, 0, 'npdc_genome_sequences', NULL),
(457, 'volume', 'varchar', NULL, NULL, NULL, NULL, 'N', 0, 0, 'npdc_genome_sequences', NULL),
(458, 'volume_unit', 'varchar', NULL, NULL, NULL, NULL, 'N', 0, 0, 'npdc_genome_sequences', NULL),
(459, 'st_defrost_counter', 'int', NULL, NULL, NULL, NULL, 'N', 0, 0, 'npdc_genome_sequences', NULL),
(460, 'date_created', 'datetime', NULL, NULL, NULL, 5, 'N', 0, 0, 'npdc_genome_sequences', NULL),
(461, 'date_updated', 'datetime', NULL, NULL, NULL, 6, 'N', 0, 0, 'npdc_genome_sequences', NULL),
(462, 'wait', 'tinyint', NULL, NULL, NULL, NULL, 'N', 0, 0, 'npdc_genome_sequences', NULL),
(463, 'secret', 'tinyint', NULL, NULL, NULL, NULL, 'N', 0, 0, 'npdc_genome_sequences', NULL),
(464, 'unique_code', 'varchar', 'sample_unique_code', 'unique_code', 'text', 1, 'Y', 0, 0, 'npdc_genome_sequences', NULL),
(465, 'chem_id_child', 'int', NULL, NULL, NULL, NULL, 'N', 0, 0, 'npdc_genome_sequences', NULL),
(466, 'extra1', 'varchar', NULL, NULL, NULL, NULL, 'N', 0, 0, 'npdc_genome_sequences', NULL),
(467, 'extra2', 'varchar', NULL, NULL, NULL, NULL, 'N', 0, 0, 'npdc_genome_sequences', NULL),
(468, 'extra3', 'varchar', NULL, NULL, NULL, NULL, 'N', 0, 0, 'npdc_genome_sequences', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `modules_field_legends`
--

CREATE TABLE `modules_field_legends` (
  `id` int NOT NULL,
  `form_legend` varchar(250) NOT NULL,
  `form_field_id` int NOT NULL,
  `lang` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `modules_field_legends`
--

INSERT INTO `modules_field_legends` (`id`, `form_legend`, `form_field_id`, `lang`) VALUES
(1, 'Optional Reference', 2, 'EN'),
(2, 'Name', 3, 'EN'),
(3, 'Genotype', 4, 'EN'),
(4, 'Comments', 5, 'EN'),
(5, 'Organism', 6, 'EN'),
(6, 'Related to Organism', 7, 'EN'),
(7, 'Owner', 18, 'EN'),
(8, 'Optional Unique Code', 19, 'EN'),
(9, 'Name', 26, 'EN'),
(10, 'Alternate Reference', 27, 'EN'),
(11, 'Features', 28, 'EN'),
(12, 'Associated Strain', 29, 'EN'),
(13, 'References & Comments', 30, 'EN'),
(14, 'Owner', 32, 'EN'),
(15, 'Optional Unique Code', 45, 'EN'),
(16, 'Name', 50, 'EN'),
(17, 'Description', 51, 'EN'),
(18, 'Orientation', 52, 'EN'),
(19, 'Quantity/Concentration', 53, 'EN'),
(20, '5\' Label/Marker', 54, 'EN'),
(21, '3\' Label/Marker', 55, 'EN'),
(22, 'Quality', 56, 'EN'),
(23, 'In stock', 58, 'EN'),
(24, 'Sequence', 59, 'EN'),
(25, 'Owner', 71, 'EN'),
(26, 'Optional Unique Code', 74, 'EN'),
(27, 'Name', 79, 'EN'),
(28, 'Category', 80, 'EN'),
(29, 'Brand', 81, 'EN'),
(30, 'Brand Reference', 82, 'EN'),
(31, 'Seller', 83, 'EN'),
(32, 'Seller Reference', 84, 'EN'),
(33, 'Original Product Barcode', 85, 'EN'),
(34, 'Seller Price', 86, 'EN'),
(35, 'Packaging Size', 87, 'EN'),
(36, 'Storage Location', 88, 'EN'),
(37, 'Comments & Description', 89, 'EN'),
(38, 'Minimum Lot Quantity for Alerts', 94, 'EN'),
(39, 'CAS Number', 96, 'EN'),
(40, 'Days to Expiration Alert', 98, 'EN'),
(41, 'Owner', 99, 'EN'),
(42, 'Label', 101, 'EN'),
(43, 'Comments & Description', 102, 'EN'),
(44, 'Sample Type', 105, 'EN'),
(45, 'Origin', 106, 'EN'),
(46, 'Organism', 107, 'EN'),
(47, 'Optional Unique Code', 110, 'EN'),
(48, 'Main Operator', 111, 'EN'),
(49, 'Name', 123, 'EN'),
(50, 'Specificity', 124, 'EN'),
(51, 'Concentration', 125, 'EN'),
(52, 'From Host', 126, 'EN'),
(53, 'Reactivity Species', 127, 'EN'),
(54, 'Isotype', 128, 'EN'),
(55, 'Purity', 129, 'EN'),
(56, 'Type', 130, 'EN'),
(57, 'Marker', 131, 'EN'),
(58, 'Applications', 132, 'EN'),
(59, 'Description', 133, 'EN'),
(60, 'Owner', 144, 'EN'),
(61, 'Optional Unique Code', 147, 'EN'),
(62, 'Label', 152, 'EN'),
(63, 'Features', 153, 'EN'),
(64, 'Sequence', 154, 'EN'),
(65, 'Type', 155, 'EN'),
(66, 'Owner', 158, 'EN'),
(67, 'Name', 162, 'EN'),
(68, 'Description', 163, 'EN'),
(69, 'Category', 164, 'EN'),
(70, 'Genotype', 165, 'EN'),
(71, 'Date of Birth', 166, 'EN'),
(72, 'Date of Arrival', 167, 'EN'),
(73, 'Date of Experiment', 168, 'EN'),
(74, 'Date of Death', 169, 'EN'),
(75, 'Quantity', 171, 'EN'),
(76, 'Status', 172, 'EN'),
(77, 'Person in Charge', 173, 'EN'),
(78, 'Experimentator', 174, 'EN'),
(79, 'Comments', 175, 'EN'),
(80, 'Optional Unique Code', 180, 'EN'),
(81, 'Sex', 182, 'EN'),
(82, 'Equipment Name', 186, 'EN'),
(83, 'Brand', 187, 'EN'),
(84, 'Seller', 188, 'EN'),
(85, 'Serial Number', 189, 'EN'),
(86, 'Inventory Reference', 190, 'EN'),
(87, 'Comments & Description', 191, 'EN'),
(88, 'Location', 192, 'EN'),
(89, 'Person in Charge', 193, 'EN'),
(90, 'Date of Purchase', 194, 'EN'),
(91, 'Warranty', 195, 'EN'),
(92, 'Contract', 197, 'EN'),
(93, 'General Maintenance Alert Intervals', 200, 'EN'),
(94, 'Category', 201, 'EN'),
(95, 'Name', 208, 'EN'),
(96, 'CAS Number', 211, 'EN'),
(97, 'Alternate Names', 212, 'EN'),
(98, 'Synonyms', 213, 'EN'),
(99, 'Solubility', 214, 'EN'),
(100, 'Purity', 215, 'EN'),
(101, 'Form', 216, 'EN'),
(102, 'LogP', 217, 'EN'),
(103, 'pKa', 218, 'EN'),
(104, 'Density', 219, 'EN'),
(105, 'MP', 221, 'EN'),
(106, 'BP', 222, 'EN'),
(107, 'H Donors', 223, 'EN'),
(108, 'H Acceptors', 224, 'EN'),
(109, 'PSA', 225, 'EN'),
(110, 'Description', 226, 'EN'),
(111, 'Contact Person', 242, 'EN'),
(112, 'Optional Unique Code', 245, 'EN'),
(113, 'Title', 251, 'EN'),
(114, 'Description', 252, 'EN'),
(115, 'Transfer File', 254, 'EN'),
(116, 'Category', 259, 'EN'),
(117, 'Author', 260, 'EN'),
(118, 'Contact Category', 264, 'EN'),
(119, 'Contact Name', 265, 'EN'),
(120, 'Email', 266, 'EN'),
(121, 'Phone', 267, 'EN'),
(122, 'Fax', 268, 'EN'),
(123, 'Mobile', 269, 'EN'),
(124, 'Company', 270, 'EN'),
(125, 'Address', 271, 'EN'),
(126, 'State/Province', 272, 'EN'),
(127, 'City', 273, 'EN'),
(128, 'Postal Code', 274, 'EN'),
(129, 'Country', 275, 'EN'),
(130, 'Web Site', 276, 'EN'),
(131, 'Comments', 277, 'EN'),
(132, 'Array Set Name', 286, 'EN'),
(133, 'Biological Question', 287, 'EN'),
(134, 'Comments', 288, 'EN'),
(135, 'Experimental Design', 289, 'EN'),
(136, 'Platform', 290, 'EN'),
(137, 'Array Data', 292, 'EN'),
(138, 'Array Image', 293, 'EN'),
(139, 'Experiment Date', 294, 'EN'),
(140, 'Organism', 295, 'EN'),
(141, 'Owner', 296, 'EN'),
(142, 'Name', 309, 'EN'),
(143, 'Comments', 310, 'EN'),
(144, 'Owner', 311, 'EN'),
(145, 'Optional Unique Code', 326, 'EN'),
(146, 'Name', 332, 'EN'),
(147, 'Comments', 333, 'EN'),
(148, 'Owner', 334, 'EN'),
(149, 'Optional Unique Code', 349, 'EN'),
(150, 'Name', 355, 'EN'),
(151, 'Comments', 356, 'EN'),
(152, 'Owner', 357, 'EN'),
(153, 'Optional Unique Code', 372, 'EN'),
(154, 'Name', 378, 'EN'),
(155, 'Comments', 379, 'EN'),
(156, 'Owner', 380, 'EN'),
(157, 'Optional Unique Code', 395, 'EN'),
(158, 'Name', 401, 'EN'),
(159, 'Comments', 402, 'EN'),
(160, 'Owner', 403, 'EN'),
(161, 'Optional Unique Code', 418, 'EN'),
(162, 'Name', 424, 'EN'),
(163, 'Comments', 425, 'EN'),
(164, 'Owner', 426, 'EN'),
(165, 'Optional Unique Code', 441, 'EN'),
(166, 'Name', 447, 'EN'),
(167, 'Comments', 448, 'EN'),
(168, 'Owner', 449, 'EN'),
(169, 'Optional Unique Code', 464, 'EN');

-- --------------------------------------------------------

--
-- Table structure for table `modules_field_options`
--

CREATE TABLE `modules_field_options` (
  `id` int NOT NULL,
  `module` varchar(50) NOT NULL,
  `project_code` int NOT NULL,
  `project_code_mandatory` int NOT NULL,
  `project_code_summary` int NOT NULL,
  `multiple_insertion` int NOT NULL,
  `chem_parent_link` int NOT NULL,
  `replicate_sample` int NOT NULL,
  `multiple_owners` int NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `modules_options`
--

CREATE TABLE `modules_options` (
  `option_id` int UNSIGNED NOT NULL,
  `option_name` varchar(255) DEFAULT NULL,
  `option_type` varchar(25) DEFAULT NULL,
  `option_extra` text,
  `module_ref` varchar(10) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `modules_options`
--

INSERT INTO `modules_options` (`option_id`, `option_name`, `option_type`, `option_extra`, `module_ref`) VALUES
(1, 'Cy3', 'labels', '5', 'PR'),
(2, '6-FAM', 'labels', '5', 'PR'),
(3, 'Amin', 'labels', '5 3', 'PR'),
(4, 'Biotin', 'labels', '5 3', 'PR'),
(5, 'Cy5', 'labels', '5', 'PR'),
(6, 'Digoxigenin', 'labels', '5 3', 'PR'),
(7, 'Fluorescein', 'labels', '5 3', 'PR'),
(8, 'HEX', 'labels', '5', 'PR'),
(9, 'Phosphate', 'labels', '5 3', 'PR'),
(10, 'ROX', 'labels', '5 3', 'PR'),
(11, 'Rhodamin', 'labels', '5 3', 'PR'),
(12, 'TAMRA', 'labels', '5 3', 'PR'),
(13, 'TET', 'labels', '5', 'PR'),
(14, 'Texas Red', 'labels', '5 3', 'PR'),
(15, 'Thiol', 'labels', '5', 'PR'),
(16, 'Bulk', 'purity', '', 'PR'),
(17, 'Purified', 'purity', '', 'PR'),
(18, 'expiration', 'alerts', '1', 'CH'),
(19, 'quant', 'alerts', '1', 'CH'),
(20, 'expiration_val', 'alerts', '31', 'CH'),
(21, 'maintenance', 'alerts', '0', 'EQ'),
(22, 'Collaborators', 'abook', '', 'AD'),
(23, 'Clients', 'abook', '', 'AD'),
(24, 'Partners', 'abook', '', 'AD'),
(25, 'Sellers', 'abook', '', 'AD'),
(26, '1', 'sellers_option', '25', 'AD'),
(27, '1', 'brands_option', '25', 'AD'),
(28, 'Available', 'status', '', 'AN'),
(29, 'On Experiment', 'status', '', 'AN'),
(30, 'Dead', 'status', '', 'AN'),
(31, 'Mouse', 'cat', '', 'AN'),
(32, 'Rabbit', 'cat', '', 'AN'),
(33, 'Rat', 'cat', '', 'AN'),
(34, 'Hamster', 'cat', '', 'AN'),
(35, 'Unavailable', 'status', '', 'AN'),
(36, 'Closed', 'proc_status', '', 'SP'),
(37, 'Open', 'proc_status', '', 'SP'),
(38, 'Hold', 'proc_status', '', 'SP'),
(39, 'Canceled', 'proc_status', '', 'SP'),
(40, 'Failed', 'proc_status', '', 'SP'),
(41, 'cutoff', 'INTEGER', '300', 'SQ'),
(42, 'CREATE_INDEX', 'created', '1', 'DATABASE'),
(43, 'CREATE_INDEX', 'created', '2', 'DATABASE'),
(75, 'UTC', 'lc_timezone', NULL, 'login'),
(63, '', 'text_wrap', NULL, 'all'),
(64, '', 'documents_edition', '', 'all'),
(65, '', 'access', NULL, 'AUDIT'),
(66, '', 'storage_verification', NULL, 'import'),
(67, '', 'batchtools_view', NULL, 'HOMEDEF'),
(68, '', 'panel_messages', NULL, 'HOMEDEF'),
(69, '', 'panel_rss', NULL, 'HOMEDEF'),
(70, '', 'lang_choice', NULL, 'lang'),
(71, 'en.php', 'default_lang', NULL, 'lang'),
(72, '', 'google', NULL, 'lang'),
(73, '', 'excel_utf8', NULL, 'Export'),
(74, '', 'lc_custom_date_format', '', 'login'),
(76, '', 'ACCESS_ADMIN_SETUP', NULL, 'login');

-- --------------------------------------------------------

--
-- Table structure for table `modules_options_cron`
--

CREATE TABLE `modules_options_cron` (
  `cron_id` int NOT NULL,
  `cron_name` varchar(50) DEFAULT NULL,
  `cron_type` varchar(10) DEFAULT NULL,
  `cron_cmd` varchar(500) DEFAULT NULL,
  `cron_periode` varchar(50) DEFAULT NULL,
  `cron_hh` tinyint UNSIGNED DEFAULT '0',
  `cron_mm` tinyint UNSIGNED DEFAULT '0',
  `cron_on_off` tinyint UNSIGNED DEFAULT '0',
  `cron_desc` varchar(500) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `modules_options_cron`
--

INSERT INTO `modules_options_cron` (`cron_id`, `cron_name`, `cron_type`, `cron_cmd`, `cron_periode`, `cron_hh`, `cron_mm`, `cron_on_off`, `cron_desc`) VALUES
(1, 'LC_EMAIL', 'LC_TASK', 'email/cron_mailer.php', 'DAILY', 0, 0, 0, '....');

-- --------------------------------------------------------

--
-- Table structure for table `modules_relation`
--

CREATE TABLE `modules_relation` (
  `count` int UNSIGNED NOT NULL,
  `module_from` varchar(4) DEFAULT NULL,
  `id_from` int UNSIGNED DEFAULT NULL,
  `module_to` varchar(4) DEFAULT NULL,
  `id_to` int UNSIGNED DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ncbi_requests`
--

CREATE TABLE `ncbi_requests` (
  `id` int NOT NULL,
  `RID` varchar(30) DEFAULT NULL,
  `submission_time` datetime DEFAULT NULL,
  `status` int DEFAULT NULL,
  `seqname` varchar(30) DEFAULT NULL,
  `refSeqTable` int DEFAULT NULL,
  `ncbi_answer` longblob,
  `algorith_used` varchar(50) DEFAULT NULL,
  `database_used` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `netplasmid_annotations`
--

CREATE TABLE `netplasmid_annotations` (
  `id` int NOT NULL,
  `plasmid_id` int DEFAULT NULL,
  `label` varchar(50) DEFAULT NULL,
  `start` int DEFAULT NULL,
  `start_size` int DEFAULT NULL,
  `end_size` int DEFAULT NULL,
  `end` int DEFAULT NULL,
  `level` int DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `netplasmid_customs_seqs`
--

CREATE TABLE `netplasmid_customs_seqs` (
  `id` int NOT NULL,
  `label` varchar(30) DEFAULT NULL,
  `start` varchar(100) DEFAULT NULL,
  `stop` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `netplasmid_def`
--

CREATE TABLE `netplasmid_def` (
  `plasmid_id` int UNSIGNED NOT NULL,
  `name` varchar(40) DEFAULT NULL,
  `size` int UNSIGNED DEFAULT NULL,
  `vector` tinyint UNSIGNED DEFAULT '0',
  `record_id` int DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `netplasmid_enz`
--

CREATE TABLE `netplasmid_enz` (
  `id` int UNSIGNED NOT NULL,
  `plasmid_id` int UNSIGNED DEFAULT NULL,
  `enz_name` varchar(35) DEFAULT NULL,
  `enz_pos` int UNSIGNED DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `netplasmid_images`
--

CREATE TABLE `netplasmid_images` (
  `id` int UNSIGNED NOT NULL,
  `plasmid_id` int UNSIGNED DEFAULT NULL,
  `plasmid_file` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `netplasmid_orf`
--

CREATE TABLE `netplasmid_orf` (
  `id` int UNSIGNED NOT NULL,
  `plasmid_id` int UNSIGNED DEFAULT NULL,
  `orf_name` varchar(35) DEFAULT NULL,
  `orf_start` int UNSIGNED DEFAULT NULL,
  `orf_size` int UNSIGNED DEFAULT NULL,
  `orf_arrow` varchar(10) DEFAULT NULL,
  `orf_color` varchar(10) DEFAULT NULL,
  `insert_key` tinyint UNSIGNED DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `netplasmid_orf_markers`
--

CREATE TABLE `netplasmid_orf_markers` (
  `count` int UNSIGNED NOT NULL,
  `label` varchar(15) DEFAULT NULL,
  `tag` varchar(200) DEFAULT NULL,
  `description` varchar(250) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `netplasmid_orf_markers`
--

INSERT INTO `netplasmid_orf_markers` (`count`, `label`, `tag`, `description`) VALUES
(1, 'Amp', 'gttgcgcaaactattaactggcgaactact', 'Ampicilin resistance (beta-lactamase)'),
(2, 'Tet', 'cgcgctgggctacgtcttgctggcgttcgc', 'Tetracyclin resistance'),
(3, 'Kan/Neo', 'gatggaagccggtcttgtcgatcaggatga', 'Kanamycin/Neomycin resistance'),
(4, 'GFP', 'cccagtccgccctgagcaaagaccccaacgagaagcgcga', 'GFP/EGFP'),
(5, 'Luc', 'atcctatttttggcaatcaaatcattccggatactgcgat', 'Luciferase'),
(6, 'LacZ', 'ccgcaccgatcgcccttcccaacagttgcgcagcctgaat', 'LacZ');

-- --------------------------------------------------------

--
-- Table structure for table `netplasmid_restriction_enzymes`
--

CREATE TABLE `netplasmid_restriction_enzymes` (
  `count` int UNSIGNED NOT NULL,
  `enz_name` varchar(15) DEFAULT NULL,
  `enz_seq` varchar(50) DEFAULT NULL,
  `enz_seq_clean` varchar(50) DEFAULT NULL,
  `enz_seq_size` tinyint UNSIGNED DEFAULT NULL,
  `preselect` tinyint UNSIGNED DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `netplasmid_restriction_enzymes`
--

INSERT INTO `netplasmid_restriction_enzymes` (`count`, `enz_name`, `enz_seq`, `enz_seq_clean`, `enz_seq_size`, `preselect`) VALUES
(1, 'AarI', 'CACCTGCNNNN^', '', 11, 0),
(2, 'AarI', '^NNNNNNNNGCAGGTG', '', 15, 0),
(3, 'AasI', 'GACNNNN^NNGTC', '', 12, 0),
(4, 'AatI', 'AGG^CCT', '', 6, 0),
(5, 'AatII', 'GACGT^C', '', 6, 0),
(6, 'AauI', 'T^GTACA', '', 6, 1),
(7, 'AccI', 'GT^MKAC', '', 6, 0),
(8, 'AccII', 'CG^CG', '', 4, 0),
(9, 'AccIII', 'T^CCGGA', '', 6, 0),
(10, 'Acc16I', 'TGC^GCA', '', 6, 0),
(11, 'Acc36I', 'ACCTGCNNNN^', '', 10, 0),
(12, 'Acc36I', '^NNNNNNNNGCAGGT', '', 14, 0),
(13, 'Acc65I', 'G^GTACC', '', 6, 0),
(14, 'Acc113I', 'AGT^ACT', '', 6, 0),
(15, 'AccB1I', 'G^GYRCC', '', 6, 0),
(16, 'AccB7I', 'CCANNNN^NTGG', '', 11, 0),
(17, 'AccBSI', 'CCG^CTC', '', 6, 0),
(18, 'AccBSI', 'GAG^CGG', '', 6, 0),
(19, 'AciI', 'C^CGC', '', 4, 0),
(20, 'AciI', 'G^CGG', '', 4, 0),
(21, 'AclI', 'AA^CGTT', '', 6, 0),
(22, 'AclWI', 'GGATCNNNN^', '', 9, 0),
(23, 'AclWI', '^NNNNNGATCC', '', 10, 0),
(24, 'AcsI', 'R^AATTY', '', 6, 0),
(25, 'AcuI', 'CTGAAGNNNNNNNNNNNNNNNN^', '', 22, 0),
(26, 'AcuI', '^NNNNNNNNNNNNNNCTTCAG', '', 20, 0),
(27, 'AcvI', 'CAC^GTG', '', 6, 0),
(28, 'AcyI', 'GR^CGYC', '', 6, 0),
(29, 'AdeI', 'CACNNN^GTG', '', 9, 0),
(30, 'AfaI', 'GT^AC', '', 4, 0),
(31, 'AfeI', 'AGC^GCT', '', 6, 0),
(32, 'AflI', 'G^GWCC', '', 5, 0),
(33, 'AflII', 'C^TTAAG', '', 6, 0),
(34, 'AflIII', 'A^CRYGT', '', 6, 0),
(35, 'AgeI', 'A^CCGGT', '', 6, 0),
(36, 'AhdI', 'GACNNN^NNGTC', '', 11, 0),
(37, 'AhlI', 'A^CTAGT', '', 6, 0),
(38, 'AleI', 'CACNN^NNGTG', '', 10, 0),
(39, 'AloI', 'GAACNNNNNNTCCNNNNNNNNNNNN^', '', 25, 0),
(40, 'AloI', '^NNNNNNNGGANNNNNNGTTC', '', 20, 0),
(41, 'AloI', 'GGANNNNNNGTTCNNNNNNNNNNNN^', '', 25, 0),
(42, 'AloI', '^NNNNNNNGAACNNNNNNTCC', '', 20, 0),
(43, 'AluI', 'AG^CT', '', 4, 0),
(44, 'AlwI', 'GGATCNNNN^', '', 9, 0),
(45, 'AlwI', '^NNNNNGATCC', '', 10, 0),
(46, 'Alw21I', 'GWGCW^C', '', 6, 0),
(47, 'Alw26I', 'GTCTCN^', '', 6, 0),
(48, 'Alw26I', '^NNNNNGAGAC', '', 10, 0),
(49, 'Alw44I', 'G^TGCAC', '', 6, 0),
(50, 'AlwNI', 'CAGNNN^CTG', '', 9, 0),
(51, 'Ama87I', 'C^YCGRG', '', 6, 0),
(52, 'AocI', 'CC^TNAGG', '', 7, 0),
(53, 'Aor51HI', 'AGC^GCT', '', 6, 0),
(54, 'ApaI', 'GGGCC^C', '', 6, 1),
(55, 'ApaLI', 'G^TGCAC', '', 6, 0),
(56, 'ApoI', 'R^AATTY', '', 6, 0),
(57, 'AscI', 'GG^CGCGCC', '', 8, 0),
(58, 'AseI', 'AT^TAAT', '', 6, 0),
(59, 'AsiAI', 'A^CCGGT', '', 6, 0),
(60, 'AsiSI', 'GCGAT^CGC', '', 8, 0),
(61, 'AsnI', 'AT^TAAT', '', 6, 0),
(62, 'AspI', 'GACN^NNGTC', '', 9, 1),
(63, 'Asp700I', 'GAANN^NNTTC', '', 10, 0),
(64, 'Asp718I', 'G^GTACC', '', 6, 0),
(65, 'AspEI', 'GACNNN^NNGTC', '', 11, 0),
(66, 'AspHI', 'GWGCW^C', '', 6, 0),
(67, 'AspLEI', 'GCG^C', '', 4, 0),
(68, 'AspS9I', 'G^GNCC', '', 5, 0),
(69, 'AsuII', 'TT^CGAA', '', 6, 0),
(70, 'AsuC2I', 'CC^SGG', '', 5, 0),
(71, 'AsuHPI', 'GGTGANNNNNNNN^', '', 13, 0),
(72, 'AsuHPI', '^NNNNNNNTCACC', '', 12, 0),
(73, 'AsuNHI', 'G^CTAGC', '', 6, 0),
(74, 'AvaI', 'C^YCGRG', '', 6, 1),
(75, 'AvaII', 'G^GWCC', '', 5, 1),
(76, 'AviII', 'TGC^GCA', '', 6, 0),
(77, 'AvrII', 'C^CTAGG', '', 6, 0),
(78, 'AxyI', 'CC^TNAGG', '', 7, 0),
(79, 'BaeI', 'ACNNNNGTAYCNNNNNNNNNNNN^', '', 23, 0),
(80, 'BaeI', '^NNNNNNNGRTACNNNNGT', '', 18, 0),
(81, 'BaeI', 'GRTACNNNNGTNNNNNNNNNNNNNNN^', '', 26, 0),
(82, 'BaeI', '^NNNNNNNNNNACNNNNGTAYC', '', 21, 0),
(83, 'BalI', 'TGG^CCA', '', 6, 0),
(84, 'BamHI', 'G^GATCC', '', 6, 1),
(85, 'BanI', 'G^GYRCC', '', 6, 1),
(86, 'BanII', 'GRGCY^C', '', 6, 1),
(87, 'BanIII', 'AT^CGAT', '', 6, 0),
(88, 'BbeI', 'GGCGC^C', '', 6, 0),
(89, 'BbrPI', 'CAC^GTG', '', 6, 0),
(90, 'BbsI', 'GAAGACNN^', '', 8, 1),
(91, 'BbsI', '^NNNNNNGTCTTC', '', 12, 0),
(92, 'BbuI', 'GCATG^C', '', 6, 0),
(93, 'BbvI', 'GCAGCNNNNNNNN^', '', 13, 0),
(94, 'BbvI', '^NNNNNNNNNNNNGCTGC', '', 17, 0),
(95, 'Bbv12I', 'GWGCW^C', '', 6, 0),
(96, 'BbvCI', 'CC^TCAGC', '', 7, 0),
(97, 'BbvCI', 'GC^TGAGG', '', 7, 0),
(98, 'BceAI', 'ACGGCNNNNNNNNNNNN^', '', 17, 0),
(99, 'BceAI', '^NNNNNNNNNNNNNNGCCGT', '', 19, 0),
(100, 'BcgI', 'CGANNNNNNTGCNNNNNNNNNNNN^', '', 24, 0),
(101, 'BcgI', '^NNNNNNNNNNGCANNNNNNTCG', '', 22, 0),
(102, 'BcgI', 'GCANNNNNNTCGNNNNNNNNNNNN^', '', 24, 0),
(103, 'BcgI', '^NNNNNNNNNNCGANNNNNNTGC', '', 22, 0),
(104, 'BciVI', 'GTATCCNNNNNN^', '', 12, 0),
(105, 'BciVI', '^NNNNNGGATAC', '', 11, 0),
(106, 'BclI', 'T^GATCA', '', 6, 0),
(107, 'BcnI', 'CC^SGG', '', 5, 0),
(108, 'BcoI', 'C^YCGRG', '', 6, 0),
(109, 'BcuI', 'A^CTAGT', '', 6, 0),
(110, 'BfaI', 'C^TAG', '', 4, 0),
(111, 'BfiI', 'ACTGGGNNNNN^', '', 11, 0),
(112, 'BfiI', '^NNNNCCCAGT', '', 10, 0),
(113, 'BfmI', 'C^TRYAG', '', 6, 0),
(114, 'BfrI', 'C^TTAAG', '', 6, 0),
(115, 'BfrBI', 'ATG^CAT', '', 6, 0),
(116, 'BfuI', 'GTATCCNNNNNN^', '', 12, 0),
(117, 'BfuI', '^NNNNNGGATAC', '', 11, 0),
(118, 'BfuAI', 'ACCTGCNNNN^', '', 10, 0),
(119, 'BfuAI', '^NNNNNNNNGCAGGT', '', 14, 0),
(120, 'BfuCI', '^GATC', '', 4, 0),
(121, 'BglI', 'GCCNNNN^NGGC', '', 11, 0),
(122, 'BglII', 'A^GATCT', '', 6, 1),
(123, 'BlnI', 'C^CTAGG', '', 6, 0),
(124, 'BlpI', 'GC^TNAGC', '', 7, 0),
(125, 'Bme18I', 'G^GWCC', '', 5, 0),
(126, 'Bme1390I', 'CC^NGG', '', 5, 0),
(127, 'Bme1580I', 'GKGCM^C', '', 6, 0),
(128, 'BmgBI', 'CAC^GTC', '', 6, 0),
(129, 'BmgBI', 'GAC^GTG', '', 6, 0),
(130, 'BmrI', 'ACTGGGNNNNN^', '', 11, 0),
(131, 'BmrI', '^NNNNCCCAGT', '', 10, 0),
(132, 'BmtI', 'GCTAG^C', '', 6, 0),
(133, 'BmyI', 'GDGCH^C', '', 6, 0),
(134, 'BoxI', 'GACNN^NNGTC', '', 10, 0),
(135, 'BpiI', 'GAAGACNN^', '', 8, 0),
(136, 'BpiI', '^NNNNNNGTCTTC', '', 12, 0),
(137, 'BplI', 'GAGNNNNNCTCNNNNNNNNNNNNN^', '', 24, 0),
(138, 'BplI', '^NNNNNNNNGAGNNNNNCTC', '', 19, 0),
(139, 'BplI', 'GAGNNNNNCTCNNNNNNNNNNNNN^', '', 24, 0),
(140, 'BplI', '^NNNNNNNNGAGNNNNNCTC', '', 19, 0),
(141, 'BpmI', 'CTGGAGNNNNNNNNNNNNNNNN^', '', 22, 0),
(142, 'BpmI', '^NNNNNNNNNNNNNNCTCCAG', '', 20, 0),
(143, 'Bpu10I', 'CC^TNAGC', '', 7, 0),
(144, 'Bpu10I', 'GC^TNAGG', '', 7, 0),
(145, 'Bpu14I', 'TT^CGAA', '', 6, 0),
(146, 'Bpu1102I', 'GC^TNAGC', '', 7, 0),
(147, 'BpuAI', 'GAAGACNN^', '', 8, 0),
(148, 'BpuAI', '^NNNNNNGTCTTC', '', 12, 0),
(149, 'BpuEI', 'CTTGAGNNNNNNNNNNNNNNNN^', '', 22, 0),
(150, 'BpuEI', '^NNNNNNNNNNNNNNCTCAAG', '', 20, 0),
(151, 'BsaI', 'GGTCTCN^', '', 7, 0),
(152, 'BsaI', '^NNNNNGAGACC', '', 11, 0),
(153, 'Bsa29I', 'AT^CGAT', '', 6, 0),
(154, 'BsaAI', 'YAC^GTR', '', 6, 0),
(155, 'BsaBI', 'GATNN^NNATC', '', 10, 0),
(156, 'BsaHI', 'GR^CGYC', '', 6, 0),
(157, 'BsaJI', 'C^CNNGG', '', 6, 0),
(158, 'BsaMI', 'GAATGCN^', '', 7, 0),
(159, 'BsaMI', 'G^CATTC', '', 6, 0),
(160, 'BsaOI', 'CGRY^CG', '', 6, 0),
(161, 'BsaWI', 'W^CCGGW', '', 6, 0),
(162, 'BsaXI', 'ACNNNNNCTCCNNNNNNNNNN^', '', 21, 0),
(163, 'BsaXI', '^NNNNNNNGGAGNNNNNGT', '', 18, 0),
(164, 'BsaXI', 'GGAGNNNNNGTNNNNNNNNNNNN^', '', 23, 0),
(165, 'BsaXI', '^NNNNNNNNNACNNNNNCTCC', '', 20, 0),
(166, 'BscI', 'AT^CGAT', '', 6, 0),
(167, 'Bsc4I', 'CCNNNNN^NNGG', '', 11, 0),
(168, 'BscBI', 'GGN^NCC', '', 6, 0),
(169, 'BscCI', 'GAATGCN^', '', 7, 0),
(170, 'BscCI', 'G^CATTC', '', 6, 0),
(171, 'BscFI', '^GATC', '', 4, 0),
(172, 'Bse1I', 'ACTGGN^', '', 6, 0),
(173, 'Bse1I', 'C^CAGT', '', 5, 0),
(174, 'Bse8I', 'GATNN^NNATC', '', 10, 0),
(175, 'Bse21I', 'CC^TNAGG', '', 7, 0),
(176, 'Bse118I', 'R^CCGGY', '', 6, 0),
(177, 'BseAI', 'T^CCGGA', '', 6, 0),
(178, 'BseBI', 'CC^WGG', '', 5, 0),
(179, 'BseCI', 'AT^CGAT', '', 6, 0),
(180, 'BseDI', 'C^CNNGG', '', 6, 0),
(181, 'Bse3DI', 'GCAATGNN^', '', 8, 0),
(182, 'Bse3DI', '^CATTGC', '', 6, 0),
(183, 'BseGI', 'GGATGNN^', '', 7, 0),
(184, 'BseGI', '^CATCC', '', 5, 0),
(185, 'BseJI', 'GATNN^NNATC', '', 10, 0),
(186, 'BseLI', 'CCNNNNN^NNGG', '', 11, 0),
(187, 'BseMI', 'GCAATGNN^', '', 8, 0),
(188, 'BseMI', '^CATTGC', '', 6, 0),
(189, 'BseMII', 'CTCAGNNNNNNNNNN^', '', 15, 0),
(190, 'BseMII', '^NNNNNNNNCTGAG', '', 13, 0),
(191, 'BseNI', 'ACTGGN^', '', 6, 0),
(192, 'BseNI', 'C^CAGT', '', 5, 0),
(193, 'BsePI', 'G^CGCGC', '', 6, 0),
(194, 'BseRI', 'GAGGAGNNNNNNNNNN^', '', 16, 0),
(195, 'BseRI', '^NNNNNNNNCTCCTC', '', 14, 0),
(196, 'BseSI', 'GKGCM^C', '', 6, 0),
(197, 'BseXI', 'GCAGCNNNNNNNN^', '', 13, 0),
(198, 'BseXI', '^NNNNNNNNNNNNGCTGC', '', 17, 0),
(199, 'BseX3I', 'C^GGCCG', '', 6, 0),
(200, 'BseYI', 'C^CCAGC', '', 6, 0),
(201, 'BseYI', 'G^CTGGG', '', 6, 0),
(202, 'BsgI', 'GTGCAGNNNNNNNNNNNNNNNN^', '', 22, 0),
(203, 'BsgI', '^NNNNNNNNNNNNNNCTGCAC', '', 20, 0),
(204, 'BshI', 'GG^CC', '', 4, 0),
(205, 'Bsh1236I', 'CG^CG', '', 4, 0),
(206, 'Bsh1285I', 'CGRY^CG', '', 6, 0),
(207, 'BshFI', 'GG^CC', '', 4, 0),
(208, 'BshNI', 'G^GYRCC', '', 6, 0),
(209, 'BshTI', 'A^CCGGT', '', 6, 0),
(210, 'BsiBI', 'GATNN^NNATC', '', 10, 0),
(211, 'BsiCI', 'TT^CGAA', '', 6, 0),
(212, 'BsiEI', 'CGRY^CG', '', 6, 0),
(213, 'BsiHKAI', 'GWGCW^C', '', 6, 0),
(214, 'BsiHKCI', 'C^YCGRG', '', 6, 0),
(215, 'BsiLI', 'CC^WGG', '', 5, 0),
(216, 'BsiMI', 'T^CCGGA', '', 6, 0),
(217, 'BsiQI', 'T^GATCA', '', 6, 0),
(218, 'BsiSI', 'C^CGG', '', 4, 0),
(219, 'BsiWI', 'C^GTACG', '', 6, 0),
(220, 'BsiXI', 'AT^CGAT', '', 6, 0),
(221, 'BsiYI', 'CCNNNNN^NNGG', '', 11, 0),
(222, 'BsiZI', 'G^GNCC', '', 5, 0),
(223, 'BslI', 'CCNNNNN^NNGG', '', 11, 0),
(224, 'BsmI', 'GAATGCN^', '', 7, 0),
(225, 'BsmI', 'G^CATTC', '', 6, 1),
(226, 'BsmAI', 'GTCTCN^', '', 6, 0),
(227, 'BsmAI', '^NNNNNGAGAC', '', 10, 0),
(228, 'BsmBI', 'CGTCTCN^', '', 7, 1),
(229, 'BsmBI', '^NNNNNGAGACG', '', 11, 0),
(230, 'BsmFI', 'GGGACNNNNNNNNNN^', '', 15, 0),
(231, 'BsmFI', '^NNNNNNNNNNNNNNGTCCC', '', 19, 0),
(232, 'Bso31I', 'GGTCTCN^', '', 7, 0),
(233, 'Bso31I', '^NNNNNGAGACC', '', 11, 0),
(234, 'BsoBI', 'C^YCGRG', '', 6, 0),
(235, 'BsoMAI', 'GTCTCN^', '', 6, 0),
(236, 'BsoMAI', '^NNNNNGAGAC', '', 10, 0),
(237, 'Bsp13I', 'T^CCGGA', '', 6, 0),
(238, 'Bsp19I', 'C^CATGG', '', 6, 0),
(239, 'Bsp68I', 'TCG^CGA', '', 6, 0),
(240, 'Bsp106I', 'AT^CGAT', '', 6, 0),
(241, 'Bsp119I', 'TT^CGAA', '', 6, 0),
(242, 'Bsp120I', 'G^GGCCC', '', 6, 0),
(243, 'Bsp143I', '^GATC', '', 4, 0),
(244, 'Bsp143II', 'RGCGC^Y', '', 6, 0),
(245, 'Bsp1286I', 'GDGCH^C', '', 6, 0),
(246, 'Bsp1407I', 'T^GTACA', '', 6, 0),
(247, 'Bsp1720I', 'GC^TNAGC', '', 7, 0),
(248, 'BspA2I', 'C^CTAGG', '', 6, 0),
(249, 'BspCI', 'CGAT^CG', '', 6, 0),
(250, 'BspCNI', 'CTCAGNNNNNNNNN^', '', 14, 0),
(251, 'BspCNI', '^NNNNNNNCTGAG', '', 12, 0),
(252, 'BspDI', 'AT^CGAT', '', 6, 0),
(253, 'BspEI', 'T^CCGGA', '', 6, 0),
(254, 'BspHI', 'T^CATGA', '', 6, 0),
(255, 'BspLI', 'GGN^NCC', '', 6, 0),
(256, 'BspLU11I', 'A^CATGT', '', 6, 0),
(257, 'BspMI', 'ACCTGCNNNN^', '', 10, 0),
(258, 'BspMI', '^NNNNNNNNGCAGGT', '', 14, 0),
(259, 'BspPI', 'GGATCNNNN^', '', 9, 0),
(260, 'BspPI', '^NNNNNGATCC', '', 10, 0),
(261, 'BspTI', 'C^TTAAG', '', 6, 0),
(262, 'BspT104I', 'TT^CGAA', '', 6, 0),
(263, 'BspT107I', 'G^GYRCC', '', 6, 0),
(264, 'BspTNI', 'GGTCTCN^', '', 7, 0),
(265, 'BspTNI', '^NNNNNGAGACC', '', 11, 0),
(266, 'BspXI', 'AT^CGAT', '', 6, 0),
(267, 'BsrI', 'ACTGGN^', '', 6, 0),
(268, 'BsrI', 'C^CAGT', '', 5, 0),
(269, 'BsrBI', 'CCG^CTC', '', 6, 0),
(270, 'BsrBI', 'GAG^CGG', '', 6, 0),
(271, 'BsrBRI', 'GATNN^NNATC', '', 10, 0),
(272, 'BsrDI', 'GCAATGNN^', '', 8, 0),
(273, 'BsrDI', '^CATTGC', '', 6, 0),
(274, 'BsrFI', 'R^CCGGY', '', 6, 0),
(275, 'BsrGI', 'T^GTACA', '', 6, 0),
(276, 'BsrSI', 'ACTGGN^', '', 6, 0),
(277, 'BsrSI', 'C^CAGT', '', 5, 0),
(278, 'BssAI', 'R^CCGGY', '', 6, 0),
(279, 'BssECI', 'C^CNNGG', '', 6, 0),
(280, 'BssHI', 'C^TCGAG', '', 6, 0),
(281, 'BssHII', 'G^CGCGC', '', 6, 0),
(282, 'BssKI', '^CCNGG', '', 5, 0),
(283, 'BssNAI', 'GTA^TAC', '', 6, 0),
(284, 'BssSI', 'C^ACGAG', '', 6, 0),
(285, 'BssSI', 'C^TCGTG', '', 6, 0),
(286, 'BssT1I', 'C^CWWGG', '', 6, 0),
(287, 'Bst6I', 'CTCTTCN^', '', 7, 0),
(288, 'Bst6I', '^NNNNGAAGAG', '', 10, 0),
(289, 'Bst71I', 'GCAGCNNNNNNNN^', '', 13, 0),
(290, 'Bst71I', '^NNNNNNNNNNNNGCTGC', '', 17, 0),
(291, 'Bst98I', 'C^TTAAG', '', 6, 0),
(292, 'Bst1107I', 'GTA^TAC', '', 6, 0),
(293, 'BstACI', 'GR^CGYC', '', 6, 0),
(294, 'BstAPI', 'GCANNNN^NTGC', '', 11, 0),
(295, 'BstBI', 'TT^CGAA', '', 6, 0),
(296, 'Bst2BI', 'C^ACGAG', '', 6, 0),
(297, 'Bst2BI', 'C^TCGTG', '', 6, 0),
(298, 'BstBAI', 'YAC^GTR', '', 6, 0),
(299, 'Bst4CI', 'ACN^GT', '', 5, 0),
(300, 'BstC8I', 'GCN^NGC', '', 6, 0),
(301, 'BstDEI', 'C^TNAG', '', 5, 0),
(302, 'BstDSI', 'C^CRYGG', '', 6, 0),
(303, 'BstEII', 'G^GTNACC', '', 7, 0),
(304, 'BstENI', 'CCTNN^NNNAGG', '', 11, 0),
(305, 'BstENII', '^GATC', '', 4, 0),
(306, 'BstF5I', 'GGATGNN^', '', 7, 0),
(307, 'BstF5I', '^CATCC', '', 5, 0),
(308, 'BstFNI', 'CG^CG', '', 4, 0),
(309, 'BstH2I', 'RGCGC^Y', '', 6, 0),
(310, 'BstHHI', 'GCG^C', '', 4, 0),
(311, 'BstHPI', 'GTT^AAC', '', 6, 0),
(312, 'BstKTI', 'GAT^C', '', 4, 0),
(313, 'BstMAI', 'CTGCA^G', '', 6, 0),
(314, 'BstMCI', 'CGRY^CG', '', 6, 0),
(315, 'BstMWI', 'GCNNNNN^NNGC', '', 11, 0),
(316, 'BstNI', 'CC^WGG', '', 5, 0),
(317, 'BstNSI', 'RCATG^Y', '', 6, 0),
(318, 'BstOI', 'CC^WGG', '', 5, 0),
(319, 'BstPI', 'G^GTNACC', '', 7, 0),
(320, 'BstPAI', 'GACNN^NNGTC', '', 10, 0),
(321, 'BstSCI', '^CCNGG', '', 5, 0),
(322, 'BstSFI', 'C^TRYAG', '', 6, 0),
(323, 'BstSNI', 'TAC^GTA', '', 6, 0),
(324, 'BstUI', 'CG^CG', '', 4, 0),
(325, 'Bst2UI', 'CC^WGG', '', 5, 0),
(326, 'BstV1I', 'GCAGCNNNNNNNN^', '', 13, 0),
(327, 'BstV1I', '^NNNNNNNNNNNNGCTGC', '', 17, 0),
(328, 'BstV2I', 'GAAGACNN^', '', 8, 0),
(329, 'BstV2I', '^NNNNNNGTCTTC', '', 12, 0),
(330, 'BstXI', 'CCANNNNN^NTGG', '', 12, 0),
(331, 'BstX2I', 'R^GATCY', '', 6, 0),
(332, 'BstYI', 'R^GATCY', '', 6, 0),
(333, 'BstZI', 'C^GGCCG', '', 6, 0),
(334, 'BstZ17I', 'GTA^TAC', '', 6, 0),
(335, 'Bsu15I', 'AT^CGAT', '', 6, 0),
(336, 'Bsu36I', 'CC^TNAGG', '', 7, 0),
(337, 'BsuRI', 'GG^CC', '', 4, 0),
(338, 'BsuTUI', 'AT^CGAT', '', 6, 0),
(339, 'BtgI', 'C^CRYGG', '', 6, 0),
(340, 'BtrI', 'CAC^GTC', '', 6, 0),
(341, 'BtrI', 'GAC^GTG', '', 6, 0),
(342, 'BtsI', 'GCAGTGNN^', '', 8, 0),
(343, 'BtsI', '^CACTGC', '', 6, 0),
(344, 'Cac8I', 'GCN^NGC', '', 6, 0),
(345, 'CaiI', 'CAGNNN^CTG', '', 9, 0),
(346, 'CciNI', 'GC^GGCCGC', '', 8, 0),
(347, 'CelII', 'GC^TNAGC', '', 7, 0),
(348, 'CfoI', 'GCG^C', '', 4, 0),
(349, 'CfrI', 'Y^GGCCR', '', 6, 0),
(350, 'Cfr9I', 'C^CCGGG', '', 6, 0),
(351, 'Cfr10I', 'R^CCGGY', '', 6, 0),
(352, 'Cfr13I', 'G^GNCC', '', 5, 0),
(353, 'Cfr42I', 'CCGC^GG', '', 6, 0),
(354, 'ClaI', 'AT^CGAT', '', 6, 0),
(355, 'CpoI', 'CG^GWCCG', '', 7, 0),
(356, 'CspI', 'CG^GWCCG', '', 7, 0),
(357, 'Csp6I', 'G^TAC', '', 4, 0),
(358, 'Csp45I', 'TT^CGAA', '', 6, 0),
(359, 'CspAI', 'A^CCGGT', '', 6, 0),
(360, 'CviJI', 'RG^CY', '', 4, 0),
(361, 'CviRI', 'TG^CA', '', 4, 0),
(362, 'CviTI', 'RG^CY', '', 4, 0),
(363, 'CvnI', 'CC^TNAGG', '', 7, 0),
(364, 'DdeI', 'C^TNAG', '', 5, 0),
(365, 'DpnI', 'GA^TC', '', 4, 0),
(366, 'DpnII', '^GATC', '', 4, 0),
(367, 'DraI', 'TTT^AAA', '', 6, 1),
(368, 'DraII', 'RG^GNCCY', '', 7, 0),
(369, 'DraIII', 'CACNNN^GTG', '', 9, 0),
(370, 'DrdI', 'GACNNNN^NNGTC', '', 12, 0),
(371, 'DsaI', 'C^CRYGG', '', 6, 0),
(372, 'DseDI', 'GACNNNN^NNGTC', '', 12, 0),
(373, 'EaeI', 'Y^GGCCR', '', 6, 0),
(374, 'EagI', 'C^GGCCG', '', 6, 0),
(375, 'Eam1104I', 'CTCTTCN^', '', 7, 0),
(376, 'Eam1104I', '^NNNNGAAGAG', '', 10, 0),
(377, 'Eam1105I', 'GACNNN^NNGTC', '', 11, 0),
(378, 'EarI', 'CTCTTCN^', '', 7, 0),
(379, 'EarI', '^NNNNGAAGAG', '', 10, 0),
(380, 'EciI', 'GGCGGANNNNNNNNNNN^', '', 17, 0),
(381, 'EciI', '^NNNNNNNNNTCCGCC', '', 15, 0),
(382, 'Ecl136II', 'GAG^CTC', '', 6, 0),
(383, 'EclHKI', 'GACNNN^NNGTC', '', 11, 0),
(384, 'EclXI', 'C^GGCCG', '', 6, 0),
(385, 'Eco24I', 'GRGCY^C', '', 6, 0),
(386, 'Eco31I', 'GGTCTCN^', '', 7, 0),
(387, 'Eco31I', '^NNNNNGAGACC', '', 11, 0),
(388, 'Eco32I', 'GAT^ATC', '', 6, 0),
(389, 'Eco47I', 'G^GWCC', '', 5, 0),
(390, 'Eco47III', 'AGC^GCT', '', 6, 0),
(391, 'Eco52I', 'C^GGCCG', '', 6, 0),
(392, 'Eco57I', 'CTGAAGNNNNNNNNNNNNNNNN^', '', 22, 0),
(393, 'Eco57I', '^NNNNNNNNNNNNNNCTTCAG', '', 20, 0),
(394, 'Eco72I', 'CAC^GTG', '', 6, 0),
(395, 'Eco81I', 'CC^TNAGG', '', 7, 0),
(396, 'Eco88I', 'C^YCGRG', '', 6, 0),
(397, 'Eco91I', 'G^GTNACC', '', 7, 0),
(398, 'Eco105I', 'TAC^GTA', '', 6, 0),
(399, 'Eco130I', 'C^CWWGG', '', 6, 0),
(400, 'Eco147I', 'AGG^CCT', '', 6, 0),
(401, 'EcoICRI', 'GAG^CTC', '', 6, 0),
(402, 'Eco57MI', 'CTGRAGNNNNNNNNNNNNNNNN^', '', 22, 0),
(403, 'Eco57MI', '^NNNNNNNNNNNNNNCTYCAG', '', 20, 0),
(404, 'EcoNI', 'CCTNN^NNNAGG', '', 11, 0),
(405, 'EcoO65I', 'G^GTNACC', '', 7, 0),
(406, 'EcoO109I', 'RG^GNCCY', '', 7, 0),
(407, 'EcoRI', 'G^AATTC', '', 6, 1),
(408, 'EcoRII', '^CCWGG', '', 5, 0),
(409, 'EcoRV', 'GAT^ATC', '', 6, 1),
(410, 'EcoT14I', 'C^CWWGG', '', 6, 0),
(411, 'EcoT22I', 'ATGCA^T', '', 6, 0),
(412, 'EcoT38I', 'GRGCY^C', '', 6, 0),
(413, 'EgeI', 'GGC^GCC', '', 6, 0),
(414, 'EheI', 'GGC^GCC', '', 6, 0),
(415, 'ErhI', 'C^CWWGG', '', 6, 0),
(416, 'Esp3I', 'CGTCTCN^', '', 7, 0),
(417, 'Esp3I', '^NNNNNGAGACG', '', 11, 0),
(418, 'FalI', 'AAGNNNNNCTTNNNNNNNNNNNNN^', '', 24, 0),
(419, 'FalI', '^NNNNNNNNAAGNNNNNCTT', '', 19, 0),
(420, 'FalI', 'AAGNNNNNCTTNNNNNNNNNNNNN^', '', 24, 0),
(421, 'FalI', '^NNNNNNNNAAGNNNNNCTT', '', 19, 0),
(422, 'FatI', '^CATG', '', 4, 0),
(423, 'FauI', 'CCCGCNNNN^', '', 9, 0),
(424, 'FauI', '^NNNNNNGCGGG', '', 11, 0),
(425, 'FauNDI', 'CA^TATG', '', 6, 0),
(426, 'FbaI', 'T^GATCA', '', 6, 0),
(427, 'FblI', 'GT^MKAC', '', 6, 0),
(428, 'Fnu4HI', 'GC^NGC', '', 5, 0),
(429, 'FokI', 'GGATGNNNNNNNNN^', '', 14, 0),
(430, 'FokI', '^NNNNNNNNNNNNNCATCC', '', 18, 0),
(431, 'FriOI', 'GRGCY^C', '', 6, 0),
(432, 'FseI', 'GGCCGG^CC', '', 8, 0),
(433, 'FspI', 'TGC^GCA', '', 6, 0),
(434, 'FspAI', 'RTGC^GCAY', '', 8, 0),
(435, 'Fsp4HI', 'GC^NGC', '', 5, 0),
(436, 'FunI', 'AGC^GCT', '', 6, 0),
(437, 'FunII', 'G^AATTC', '', 6, 0),
(438, 'GsuI', 'CTGGAGNNNNNNNNNNNNNNNN^', '', 22, 0),
(439, 'GsuI', '^NNNNNNNNNNNNNNCTCCAG', '', 20, 0),
(440, 'HaeII', 'RGCGC^Y', '', 6, 0),
(441, 'HaeIII', 'GG^CC', '', 4, 0),
(442, 'HapII', 'C^CGG', '', 4, 0),
(443, 'HgaI', 'GACGCNNNNN^', '', 10, 0),
(444, 'HgaI', '^NNNNNNNNNNGCGTC', '', 15, 0),
(445, 'HhaI', 'GCG^C', '', 4, 0),
(446, 'Hin1I', 'GR^CGYC', '', 6, 0),
(447, 'Hin4I', 'GAYNNNNNVTCNNNNNNNNNNNNN^', '', 24, 0),
(448, 'Hin4I', '^NNNNNNNNGABNNNNNRTC', '', 19, 0),
(449, 'Hin4I', 'GABNNNNNRTCNNNNNNNNNNNNN^', '', 24, 0),
(450, 'Hin4I', '^NNNNNNNNGAYNNNNNVTC', '', 19, 0),
(451, 'Hin6I', 'G^CGC', '', 4, 0),
(452, 'HinP1I', 'G^CGC', '', 4, 0),
(453, 'HincII', 'GTY^RAC', '', 6, 0),
(454, 'HindII', 'GTY^RAC', '', 6, 0),
(455, 'HindIII', 'A^AGCTT', '', 6, 1),
(456, 'HinfI', 'G^ANTC', '', 5, 0),
(457, 'HpaI', 'GTT^AAC', '', 6, 1),
(458, 'HpaII', 'C^CGG', '', 4, 0),
(459, 'HphI', 'GGTGANNNNNNNN^', '', 13, 0),
(460, 'HphI', '^NNNNNNNTCACC', '', 12, 0),
(461, 'Hpy8I', 'GTN^NAC', '', 6, 0),
(462, 'Hpy99I', 'CGWCG^', '', 5, 0),
(463, 'Hpy188I', 'TCN^GA', '', 5, 0),
(464, 'Hpy188III', 'TC^NNGA', '', 6, 0),
(465, 'HpyCH4III', 'ACN^GT', '', 5, 0),
(466, 'HpyCH4IV', 'A^CGT', '', 4, 0),
(467, 'HpyCH4V', 'TG^CA', '', 4, 0),
(468, 'HpyF10VI', 'GCNNNNNN^NGC', '', 11, 0),
(469, 'Hsp92I', 'GR^CGYC', '', 6, 0),
(470, 'Hsp92II', 'CATG^', '', 4, 0),
(471, 'HspAI', 'G^CGC', '', 4, 0),
(472, 'ItaI', 'GC^NGC', '', 5, 0),
(473, 'KasI', 'G^GCGCC', '', 6, 0),
(474, 'KpnI', 'GGTAC^C', '', 6, 1),
(475, 'Kpn2I', 'T^CCGGA', '', 6, 0),
(476, 'KspI', 'CCGC^GG', '', 6, 0),
(477, 'Ksp22I', 'T^GATCA', '', 6, 0),
(478, 'Ksp632I', 'CTCTTCN^', '', 7, 0),
(479, 'Ksp632I', '^NNNNGAAGAG', '', 10, 0),
(480, 'KspAI', 'GTT^AAC', '', 6, 0),
(481, 'Kzo9I', '^GATC', '', 4, 0),
(482, 'LspI', 'TT^CGAA', '', 6, 0),
(483, 'LweI', 'GCATCNNNNN^', '', 10, 0),
(484, 'LweI', '^NNNNNNNNNGATGC', '', 14, 0),
(485, 'MabI', 'A^CCWGGT', '', 7, 0),
(486, 'MaeI', 'C^TAG', '', 4, 0),
(487, 'MaeII', 'A^CGT', '', 4, 0),
(488, 'MaeIII', '^GTNAC', '', 5, 0),
(489, 'MamI', 'GATNN^NNATC', '', 10, 0),
(490, 'MbiI', 'CCG^CTC', '', 6, 0),
(491, 'MbiI', 'GAG^CGG', '', 6, 0),
(492, 'MboI', '^GATC', '', 4, 0),
(493, 'MboII', 'GAAGANNNNNNNN^', '', 13, 0),
(494, 'MboII', '^NNNNNNNTCTTC', '', 12, 0),
(495, 'MfeI', 'C^AATTG', '', 6, 0),
(496, 'MflI', 'R^GATCY', '', 6, 0),
(497, 'MhlI', 'GDGCH^C', '', 6, 0),
(498, 'MlsI', 'TGG^CCA', '', 6, 0),
(499, 'MluI', 'A^CGCGT', '', 6, 0),
(500, 'MluNI', 'TGG^CCA', '', 6, 0),
(501, 'MlyI', 'GAGTCNNNNN^', '', 10, 0),
(502, 'MlyI', '^NNNNNGACTC', '', 10, 0),
(503, 'Mly113I', 'GG^CGCC', '', 6, 0),
(504, 'MnlI', 'CCTCNNNNNNN^', '', 11, 0),
(505, 'MnlI', '^NNNNNNGAGG', '', 10, 0),
(506, 'Mph1103I', 'ATGCA^T', '', 6, 0),
(507, 'MroI', 'T^CCGGA', '', 6, 0),
(508, 'MroNI', 'G^CCGGC', '', 6, 0),
(509, 'MroXI', 'GAANN^NNTTC', '', 10, 0),
(510, 'MscI', 'TGG^CCA', '', 6, 0),
(511, 'MseI', 'T^TAA', '', 4, 0),
(512, 'MslI', 'CAYNN^NNRTG', '', 10, 0),
(513, 'MspI', 'C^CGG', '', 4, 0),
(514, 'Msp20I', 'TGG^CCA', '', 6, 0),
(515, 'MspA1I', 'CMG^CKG', '', 6, 0),
(516, 'MspCI', 'C^TTAAG', '', 6, 0),
(517, 'MspR9I', 'CC^NGG', '', 5, 0),
(518, 'MssI', 'GTTT^AAAC', '', 8, 0),
(519, 'MunI', 'C^AATTG', '', 6, 0),
(520, 'MvaI', 'CC^WGG', '', 5, 0),
(521, 'Mva1269I', 'GAATGCN^', '', 7, 0),
(522, 'Mva1269I', 'G^CATTC', '', 6, 0),
(523, 'MvnI', 'CG^CG', '', 4, 0),
(524, 'MwoI', 'GCNNNNN^NNGC', '', 11, 0),
(525, 'NaeI', 'GCC^GGC', '', 6, 1),
(526, 'NarI', 'GG^CGCC', '', 6, 0),
(527, 'NciI', 'CC^SGG', '', 5, 0),
(528, 'NcoI', 'C^CATGG', '', 6, 1),
(529, 'NdeI', 'CA^TATG', '', 6, 0),
(530, 'NdeII', '^GATC', '', 4, 0),
(531, 'NgoAIV', 'G^CCGGC', '', 6, 0),
(532, 'NgoMIV', 'G^CCGGC', '', 6, 1),
(533, 'NheI', 'G^CTAGC', '', 6, 0),
(534, 'NlaIII', 'CATG^', '', 4, 0),
(535, 'NlaIV', 'GGN^NCC', '', 6, 0),
(536, 'NmuCI', '^GTSAC', '', 5, 0),
(537, 'NotI', 'GC^GGCCGC', '', 8, 1),
(538, 'NruI', 'TCG^CGA', '', 6, 0),
(539, 'NruGI', 'GACNNN^NNGTC', '', 11, 0),
(540, 'NsbI', 'TGC^GCA', '', 6, 0),
(541, 'NsiI', 'ATGCA^T', '', 6, 0),
(542, 'NspI', 'RCATG^Y', '', 6, 0),
(543, 'NspIII', 'C^YCGRG', '', 6, 0),
(544, 'NspV', 'TT^CGAA', '', 6, 0),
(545, 'OliI', 'CACNN^NNGTG', '', 10, 0),
(546, 'PacI', 'TTAAT^TAA', '', 8, 0),
(547, 'PaeI', 'GCATG^C', '', 6, 0),
(548, 'PaeR7I', 'C^TCGAG', '', 6, 0),
(549, 'PagI', 'T^CATGA', '', 6, 0),
(550, 'PalI', 'GG^CC', '', 4, 0),
(551, 'PauI', 'G^CGCGC', '', 6, 0),
(552, 'PceI', 'AGG^CCT', '', 6, 0),
(553, 'PciI', 'A^CATGT', '', 6, 0),
(554, 'PctI', 'GAATGCN^', '', 7, 0),
(555, 'PctI', 'G^CATTC', '', 6, 0),
(556, 'PdiI', 'GCC^GGC', '', 6, 0),
(557, 'PdmI', 'GAANN^NNTTC', '', 10, 0),
(558, 'Pfl23II', 'C^GTACG', '', 6, 0),
(559, 'PflBI', 'CCANNNN^NTGG', '', 11, 0),
(560, 'PflFI', 'GACN^NNGTC', '', 9, 0),
(561, 'PflMI', 'CCANNNN^NTGG', '', 11, 0),
(562, 'PinAI', 'A^CCGGT', '', 6, 0),
(563, 'PleI', 'GAGTCNNNN^', '', 9, 0),
(564, 'PleI', '^NNNNNGACTC', '', 10, 0),
(565, 'Ple19I', 'CGAT^CG', '', 6, 0),
(566, 'PmaCI', 'CAC^GTG', '', 6, 0),
(567, 'PmeI', 'GTTT^AAAC', '', 8, 0),
(568, 'PmlI', 'CAC^GTG', '', 6, 0),
(569, 'PpiI', 'GAACNNNNNCTCNNNNNNNNNNNNN^', '', 25, 0),
(570, 'PpiI', '^NNNNNNNNGAGNNNNNGTTC', '', 20, 0),
(571, 'PpiI', 'GAGNNNNNGTTCNNNNNNNNNNNN^', '', 24, 0),
(572, 'PpiI', '^NNNNNNNGAACNNNNNCTC', '', 19, 0),
(573, 'PpsI', 'GAGTCNNNN^', '', 9, 0),
(574, 'PpsI', '^NNNNNGACTC', '', 10, 0),
(575, 'Ppu10I', 'A^TGCAT', '', 6, 0),
(576, 'PpuMI', 'RG^GWCCY', '', 7, 0),
(577, 'PpuXI', 'RG^GWCCY', '', 7, 0),
(578, 'PshAI', 'GACNN^NNGTC', '', 10, 0),
(579, 'PshBI', 'AT^TAAT', '', 6, 0),
(580, 'PsiI', 'TTA^TAA', '', 6, 0),
(581, 'Psp5II', 'RG^GWCCY', '', 7, 0),
(582, 'Psp6I', '^CCWGG', '', 5, 0),
(583, 'Psp1406I', 'AA^CGTT', '', 6, 0),
(584, 'PspAI', 'C^CCGGG', '', 6, 0),
(585, 'Psp124BI', 'GAGCT^C', '', 6, 0),
(586, 'PspEI', 'G^GTNACC', '', 7, 0),
(587, 'PspGI', '^CCWGG', '', 5, 0),
(588, 'PspLI', 'C^GTACG', '', 6, 0),
(589, 'PspN4I', 'GGN^NCC', '', 6, 0),
(590, 'PspOMI', 'G^GGCCC', '', 6, 0),
(591, 'PspPI', 'G^GNCC', '', 5, 0),
(592, 'PspPPI', 'RG^GWCCY', '', 7, 0),
(593, 'PsrI', 'GAACNNNNNNTACNNNNNNNNNNNN^', '', 25, 0),
(594, 'PsrI', '^NNNNNNNGTANNNNNNGTTC', '', 20, 0),
(595, 'PsrI', 'GTANNNNNNGTTCNNNNNNNNNNNN^', '', 25, 0),
(596, 'PsrI', '^NNNNNNNGAACNNNNNNTAC', '', 20, 0),
(597, 'PstI', 'CTGCA^G', '', 6, 0),
(598, 'PsuI', 'R^GATCY', '', 6, 0),
(599, 'PsyI', 'GACN^NNGTC', '', 9, 0),
(600, 'PvuI', 'CGAT^CG', '', 6, 1),
(601, 'PvuII', 'CAG^CTG', '', 6, 0),
(602, 'RcaI', 'T^CATGA', '', 6, 0),
(603, 'RsaI', 'GT^AC', '', 4, 0),
(604, 'RsrII', 'CG^GWCCG', '', 7, 0),
(605, 'Rsr2I', 'CG^GWCCG', '', 7, 0),
(606, 'SacI', 'GAGCT^C', '', 6, 1),
(607, 'SacII', 'CCGC^GG', '', 6, 0),
(608, 'SalI', 'G^TCGAC', '', 6, 0),
(609, 'SanDI', 'GG^GWCCC', '', 7, 0),
(610, 'SapI', 'GCTCTTCN^', '', 8, 0),
(611, 'SapI', '^NNNNGAAGAGC', '', 11, 0),
(612, 'SatI', 'GC^NGC', '', 5, 0),
(613, 'Sau96I', 'G^GNCC', '', 5, 0),
(614, 'Sau3AI', '^GATC', '', 4, 0),
(615, 'SbfI', 'CCTGCA^GG', '', 8, 0),
(616, 'ScaI', 'AGT^ACT', '', 6, 0),
(617, 'SchI', 'GAGTCNNNNN^', '', 10, 0),
(618, 'SchI', '^NNNNNGACTC', '', 10, 0),
(619, 'ScrFI', 'CC^NGG', '', 5, 0),
(620, 'SdaI', 'CCTGCA^GG', '', 8, 0),
(621, 'SduI', 'GDGCH^C', '', 6, 0),
(622, 'SexAI', 'A^CCWGGT', '', 7, 0),
(623, 'SfaNI', 'GCATCNNNNN^', '', 10, 0),
(624, 'SfaNI', '^NNNNNNNNNGATGC', '', 14, 0),
(625, 'SfcI', 'C^TRYAG', '', 6, 0),
(626, 'SfiI', 'GGCCNNNN^NGGCC', '', 13, 0),
(627, 'SfoI', 'GGC^GCC', '', 6, 0),
(628, 'Sfr274I', 'C^TCGAG', '', 6, 0),
(629, 'Sfr303I', 'CCGC^GG', '', 6, 0),
(630, 'SfuI', 'TT^CGAA', '', 6, 0),
(631, 'SgfI', 'GCGAT^CGC', '', 8, 0),
(632, 'SgrAI', 'CR^CCGGYG', '', 8, 0),
(633, 'SgrBI', 'CCGC^GG', '', 6, 0),
(634, 'SinI', 'G^GWCC', '', 5, 0),
(635, 'SlaI', 'C^TCGAG', '', 6, 0),
(636, 'SmaI', 'CCC^GGG', '', 6, 1),
(637, 'SmiI', 'ATTT^AAAT', '', 8, 0),
(638, 'SmiMI', 'CAYNN^NNRTG', '', 10, 0),
(639, 'SmlI', 'C^TYRAG', '', 6, 0),
(640, 'SmuI', 'CCCGCNNNN^', '', 9, 0),
(641, 'SmuI', '^NNNNNNGCGGG', '', 11, 0),
(642, 'SnaBI', 'TAC^GTA', '', 6, 0),
(643, 'SpaHI', 'GCATG^C', '', 6, 0),
(644, 'SpeI', 'A^CTAGT', '', 6, 0),
(645, 'SphI', 'GCATG^C', '', 6, 0),
(646, 'SrfI', 'GCCC^GGGC', '', 8, 0),
(647, 'Sse9I', '^AATT', '', 4, 0),
(648, 'Sse8387I', 'CCTGCA^GG', '', 8, 0),
(649, 'SseBI', 'AGG^CCT', '', 6, 0),
(650, 'SspI', 'AAT^ATT', '', 6, 0),
(651, 'SspBI', 'T^GTACA', '', 6, 0),
(652, 'SstI', 'GAGCT^C', '', 6, 0),
(653, 'SstII', 'CCGC^GG', '', 6, 0),
(654, 'StuI', 'AGG^CCT', '', 6, 0),
(655, 'StyI', 'C^CWWGG', '', 6, 0),
(656, 'SunI', 'C^GTACG', '', 6, 0),
(657, 'SwaI', 'ATTT^AAAT', '', 8, 0),
(658, 'TaaI', 'ACN^GT', '', 5, 0),
(659, 'TaiI', 'ACGT^', '', 4, 0),
(660, 'TaqI', 'T^CGA', '', 4, 0),
(661, 'TaqII', 'GACCGANNNNNNNNNNN^', '', 17, 0),
(662, 'TaqII', '^NNNNNNNNNTCGGTC', '', 15, 0),
(663, 'TaqII', 'CACCCANNNNNNNNNNN^', '', 17, 0),
(664, 'TaqII', '^NNNNNNNNNTGGGTG', '', 15, 0),
(665, 'TasI', '^AATT', '', 4, 0),
(666, 'TatI', 'W^GTACW', '', 6, 0),
(667, 'TauI', 'GCSG^C', '', 5, 0),
(668, 'TelI', 'GACN^NNGTC', '', 9, 0),
(669, 'TfiI', 'G^AWTC', '', 5, 0),
(670, 'ThaI', 'CG^CG', '', 4, 0),
(671, 'TliI', 'C^TCGAG', '', 6, 0),
(672, 'Tru1I', 'T^TAA', '', 4, 0),
(673, 'Tru9I', 'T^TAA', '', 4, 0),
(674, 'TscI', 'ACGT^', '', 4, 0),
(675, 'TseI', 'G^CWGC', '', 5, 0),
(676, 'Tsp45I', '^GTSAC', '', 5, 0),
(677, 'Tsp509I', '^AATT', '', 4, 0),
(678, 'TspEI', '^AATT', '', 4, 0),
(679, 'TspGWI', 'ACGGANNNNNNNNNNN^', '', 16, 0),
(680, 'TspGWI', '^NNNNNNNNNTCCGT', '', 14, 0),
(681, 'TspRI', 'CASTGNN^', '', 7, 0),
(682, 'Tth111I', 'GACN^NNGTC', '', 9, 0),
(683, 'TthHB8I', 'T^CGA', '', 4, 0),
(684, 'Van91I', 'CCANNNN^NTGG', '', 11, 0),
(685, 'Vha464I', 'C^TTAAG', '', 6, 0),
(686, 'VneI', 'G^TGCAC', '', 6, 0),
(687, 'VpaK11BI', 'G^GWCC', '', 5, 0),
(688, 'VspI', 'AT^TAAT', '', 6, 0),
(689, 'XagI', 'CCTNN^NNNAGG', '', 11, 0),
(690, 'XapI', 'R^AATTY', '', 6, 0),
(691, 'XbaI', 'T^CTAGA', '', 6, 1),
(692, 'XceI', 'RCATG^Y', '', 6, 0),
(693, 'XcmI', 'CCANNNNN^NNNNTGG', '', 15, 1),
(694, 'XhoI', 'C^TCGAG', '', 6, 1),
(695, 'XhoII', 'R^GATCY', '', 6, 0),
(696, 'XmaI', 'C^CCGGG', '', 6, 1),
(697, 'XmaIII', 'C^GGCCG', '', 6, 0),
(698, 'XmaCI', 'C^CCGGG', '', 6, 0),
(699, 'XmaJI', 'C^CTAGG', '', 6, 0),
(700, 'XmiI', 'GT^MKAC', '', 6, 0),
(701, 'XmnI', 'GAANN^NNTTC', '', 10, 0),
(702, 'XspI', 'C^TAG', '', 4, 0),
(703, 'ZhoI', 'AT^CGAT', '', 6, 0),
(704, 'ZraI', 'GAC^GTC', '', 6, 0),
(705, 'Zsp2I', 'ATGCA^T', '', 6, 0);

-- --------------------------------------------------------

--
-- Table structure for table `npdc_gdnas`
--

CREATE TABLE `npdc_gdnas` (
  `count` int UNSIGNED NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `comment_log` longtext,
  `keeper` int DEFAULT NULL,
  `box_id` int UNSIGNED DEFAULT NULL,
  `box_details` text,
  `box_status` tinyint DEFAULT NULL,
  `box_status_data` text,
  `volume` varchar(50) DEFAULT NULL,
  `volume_unit` varchar(25) DEFAULT NULL,
  `st_counter` int DEFAULT NULL,
  `st_date_limit` date DEFAULT NULL,
  `st_days_before_limit` tinyint UNSIGNED DEFAULT NULL,
  `st_defrost_counter` int UNSIGNED DEFAULT '0',
  `date_created` datetime DEFAULT NULL,
  `date_updated` datetime DEFAULT NULL,
  `wait` tinyint UNSIGNED DEFAULT '0',
  `secret` tinyint UNSIGNED DEFAULT '0',
  `unique_code` varchar(50) DEFAULT NULL,
  `chem_id_child` int UNSIGNED DEFAULT NULL,
  `extra1` varchar(150) DEFAULT NULL,
  `extra2` varchar(150) DEFAULT NULL,
  `extra3` varchar(150) DEFAULT NULL,
  `npdc_id` varchar(100) DEFAULT NULL,
  `category` varchar(50) DEFAULT NULL,
  `plate` decimal(5,0) DEFAULT NULL,
  `well` varchar(50) DEFAULT NULL,
  `isolation_date` date DEFAULT NULL,
  `nanodrop_concentration` decimal(6,2) DEFAULT NULL,
  `nanodrop_a260280` decimal(6,2) DEFAULT NULL,
  `nanodrop_a260230` decimal(6,2) DEFAULT NULL,
  `quantus_concentration` decimal(6,2) DEFAULT NULL,
  `person_in_charge` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `npdc_genome_sequences`
--

CREATE TABLE `npdc_genome_sequences` (
  `count` int UNSIGNED NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `comment_log` longtext,
  `keeper` int DEFAULT NULL,
  `box_id` int UNSIGNED DEFAULT NULL,
  `box_details` text,
  `box_status` tinyint DEFAULT NULL,
  `box_status_data` text,
  `volume` varchar(50) DEFAULT NULL,
  `volume_unit` varchar(25) DEFAULT NULL,
  `st_counter` int DEFAULT NULL,
  `st_date_limit` date DEFAULT NULL,
  `st_days_before_limit` tinyint UNSIGNED DEFAULT NULL,
  `st_defrost_counter` int UNSIGNED DEFAULT '0',
  `date_created` datetime DEFAULT NULL,
  `date_updated` datetime DEFAULT NULL,
  `wait` tinyint UNSIGNED DEFAULT '0',
  `secret` tinyint UNSIGNED DEFAULT '0',
  `unique_code` varchar(50) DEFAULT NULL,
  `chem_id_child` int UNSIGNED DEFAULT NULL,
  `extra1` varchar(150) DEFAULT NULL,
  `extra2` varchar(150) DEFAULT NULL,
  `extra3` varchar(150) DEFAULT NULL,
  `sample_name` varchar(100) DEFAULT NULL,
  `assembly_status` varchar(50) DEFAULT NULL,
  `qc_status` varchar(50) DEFAULT NULL,
  `annotation_status` varchar(50) DEFAULT NULL,
  `gtdb_phylum` varchar(50) DEFAULT NULL,
  `gtdb_genus` varchar(50) DEFAULT NULL,
  `gtdb_species` varchar(50) DEFAULT NULL,
  `num_contigs` decimal(7,0) DEFAULT NULL,
  `size` decimal(12,0) DEFAULT NULL,
  `n50` decimal(4,4) DEFAULT NULL,
  `reads_count` decimal(12,0) DEFAULT NULL,
  `reads_size` decimal(20,0) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `npdc_liquid_growth`
--

CREATE TABLE `npdc_liquid_growth` (
  `count` int UNSIGNED NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `comment_log` longtext,
  `keeper` int DEFAULT NULL,
  `box_id` int UNSIGNED DEFAULT NULL,
  `box_details` text,
  `box_status` tinyint DEFAULT NULL,
  `box_status_data` text,
  `volume` varchar(50) DEFAULT NULL,
  `volume_unit` varchar(25) DEFAULT NULL,
  `st_counter` int DEFAULT NULL,
  `st_date_limit` date DEFAULT NULL,
  `st_days_before_limit` tinyint UNSIGNED DEFAULT NULL,
  `st_defrost_counter` int UNSIGNED DEFAULT '0',
  `date_created` datetime DEFAULT NULL,
  `date_updated` datetime DEFAULT NULL,
  `wait` tinyint UNSIGNED DEFAULT '0',
  `secret` tinyint UNSIGNED DEFAULT '0',
  `unique_code` varchar(50) DEFAULT NULL,
  `chem_id_child` int UNSIGNED DEFAULT NULL,
  `extra1` varchar(150) DEFAULT NULL,
  `extra2` varchar(150) DEFAULT NULL,
  `extra3` varchar(150) DEFAULT NULL,
  `npdc_id` varchar(100) DEFAULT NULL,
  `media` varchar(50) DEFAULT NULL,
  `antibiotics` varchar(50) DEFAULT NULL,
  `inoculation_date` date DEFAULT NULL,
  `inoculation_time` varchar(50) DEFAULT NULL,
  `harvest_date` date DEFAULT NULL,
  `harvest_time` varchar(50) DEFAULT NULL,
  `growth` varchar(50) DEFAULT NULL,
  `picture` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `npdc_sequencing_batches`
--

CREATE TABLE `npdc_sequencing_batches` (
  `count` int UNSIGNED NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `comment_log` longtext,
  `keeper` int DEFAULT NULL,
  `box_id` int UNSIGNED DEFAULT NULL,
  `box_details` text,
  `box_status` tinyint DEFAULT NULL,
  `box_status_data` text,
  `volume` varchar(50) DEFAULT NULL,
  `volume_unit` varchar(25) DEFAULT NULL,
  `st_counter` int DEFAULT NULL,
  `st_date_limit` date DEFAULT NULL,
  `st_days_before_limit` tinyint UNSIGNED DEFAULT NULL,
  `st_defrost_counter` int UNSIGNED DEFAULT '0',
  `date_created` datetime DEFAULT NULL,
  `date_updated` datetime DEFAULT NULL,
  `wait` tinyint UNSIGNED DEFAULT '0',
  `secret` tinyint UNSIGNED DEFAULT '0',
  `unique_code` varchar(50) DEFAULT NULL,
  `chem_id_child` int UNSIGNED DEFAULT NULL,
  `extra1` varchar(150) DEFAULT NULL,
  `extra2` varchar(150) DEFAULT NULL,
  `extra3` varchar(150) DEFAULT NULL,
  `project_name` varchar(50) DEFAULT NULL,
  `batch_name` varchar(50) DEFAULT NULL,
  `person_in_charge` varchar(50) DEFAULT NULL,
  `submission_date` date DEFAULT NULL,
  `finished` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `npdc_sequencing_samples`
--

CREATE TABLE `npdc_sequencing_samples` (
  `count` int UNSIGNED NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `comment_log` longtext,
  `keeper` int DEFAULT NULL,
  `box_id` int UNSIGNED DEFAULT NULL,
  `box_details` text,
  `box_status` tinyint DEFAULT NULL,
  `box_status_data` text,
  `volume` varchar(50) DEFAULT NULL,
  `volume_unit` varchar(25) DEFAULT NULL,
  `st_counter` int DEFAULT NULL,
  `st_date_limit` date DEFAULT NULL,
  `st_days_before_limit` tinyint UNSIGNED DEFAULT NULL,
  `st_defrost_counter` int UNSIGNED DEFAULT '0',
  `date_created` datetime DEFAULT NULL,
  `date_updated` datetime DEFAULT NULL,
  `wait` tinyint UNSIGNED DEFAULT '0',
  `secret` tinyint UNSIGNED DEFAULT '0',
  `unique_code` varchar(50) DEFAULT NULL,
  `chem_id_child` int UNSIGNED DEFAULT NULL,
  `extra1` varchar(150) DEFAULT NULL,
  `extra2` varchar(150) DEFAULT NULL,
  `extra3` varchar(150) DEFAULT NULL,
  `sequencing_batch` varchar(100) DEFAULT NULL,
  `gdna` varchar(100) DEFAULT NULL,
  `quantus_concentration` decimal(6,2) DEFAULT NULL,
  `gdna_used_up` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `npdc_strains`
--

CREATE TABLE `npdc_strains` (
  `count` int UNSIGNED NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `comment_log` longtext,
  `keeper` int DEFAULT NULL,
  `box_id` int UNSIGNED DEFAULT NULL,
  `box_details` text,
  `box_status` tinyint DEFAULT NULL,
  `box_status_data` text,
  `volume` varchar(50) DEFAULT NULL,
  `volume_unit` varchar(25) DEFAULT NULL,
  `st_counter` int DEFAULT NULL,
  `st_date_limit` date DEFAULT NULL,
  `st_days_before_limit` tinyint UNSIGNED DEFAULT NULL,
  `st_defrost_counter` int UNSIGNED DEFAULT '0',
  `date_created` datetime DEFAULT NULL,
  `date_updated` datetime DEFAULT NULL,
  `wait` tinyint UNSIGNED DEFAULT '0',
  `secret` tinyint UNSIGNED DEFAULT '0',
  `unique_code` varchar(50) DEFAULT NULL,
  `chem_id_child` int UNSIGNED DEFAULT NULL,
  `extra1` varchar(150) DEFAULT NULL,
  `extra2` varchar(150) DEFAULT NULL,
  `collection` varchar(50) DEFAULT NULL,
  `alt_id` varchar(50) DEFAULT NULL,
  `isolation_date` date DEFAULT NULL,
  `isolation_country` varchar(50) DEFAULT NULL,
  `category` varchar(50) DEFAULT NULL,
  `genus` varchar(50) DEFAULT NULL,
  `species` varchar(50) DEFAULT NULL,
  `comment_type_strain` varchar(50) DEFAULT NULL,
  `comment_original` varchar(50) DEFAULT NULL,
  `isolation_region` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_list`
--

CREATE TABLE `order_list` (
  `order_list_id` mediumint UNSIGNED NOT NULL,
  `chem_id` int UNSIGNED NOT NULL DEFAULT '0',
  `primer_id` int UNSIGNED DEFAULT NULL,
  `urgency` varchar(25) DEFAULT '0',
  `list_date` datetime DEFAULT NULL,
  `approved_by` mediumint DEFAULT NULL,
  `approved_date` datetime DEFAULT NULL,
  `order_before_date` datetime DEFAULT NULL,
  `order_date` datetime DEFAULT NULL,
  `delivery_date` datetime DEFAULT NULL,
  `cancel_date` datetime DEFAULT NULL,
  `qty` varchar(20) DEFAULT NULL,
  `comments` text,
  `order_price` varchar(10) DEFAULT NULL,
  `discount` varchar(10) DEFAULT NULL,
  `po_number` varchar(50) DEFAULT NULL,
  `order_status` varchar(25) DEFAULT NULL,
  `order_from` mediumint DEFAULT NULL,
  `order_by` mediumint UNSIGNED DEFAULT NULL,
  `received_by` mediumint UNSIGNED DEFAULT NULL,
  `budget` int UNSIGNED DEFAULT NULL,
  `po_template_id` int DEFAULT NULL,
  `po_form_content` text,
  `po_number_alternative` varchar(50) DEFAULT NULL,
  `risks_approved_by` mediumint DEFAULT NULL,
  `risks_approved_date` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `order_list_invoices`
--

CREATE TABLE `order_list_invoices` (
  `inv_id` int UNSIGNED NOT NULL,
  `po_number` varchar(50) DEFAULT NULL,
  `invoice_ref` varchar(50) DEFAULT NULL,
  `invoice_date` date DEFAULT NULL,
  `invoice_timestamp` timestamp NULL DEFAULT NULL,
  `invoice_real_value` decimal(10,2) UNSIGNED DEFAULT NULL,
  `invoice_image_file` varchar(150) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `order_list_quotes`
--

CREATE TABLE `order_list_quotes` (
  `quote_id` int NOT NULL,
  `order_id` varchar(50) DEFAULT NULL,
  `quote_ref` varchar(50) DEFAULT NULL,
  `quote_date` datetime DEFAULT NULL,
  `quote_expiration_date` datetime DEFAULT NULL,
  `quote_image_file` varchar(150) DEFAULT NULL,
  `quote_timestamp` timestamp NULL DEFAULT NULL,
  `contact_id` int DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `order_templates`
--

CREATE TABLE `order_templates` (
  `template_id` int UNSIGNED NOT NULL,
  `template_name` varchar(35) DEFAULT NULL,
  `template_desc` varchar(150) DEFAULT NULL,
  `template_code` mediumtext
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order_templates`
--

INSERT INTO `order_templates` (`template_id`, `template_name`, `template_desc`, `template_code`) VALUES
(1, 'Demo Template', 'A demo template', '<html>\r\n<head>\r\n<title>Untitled Document</title>\r\n<meta http-equiv=\"Content-Type\" content=\"text/html; charset=iso-8859-1\">\r\n<style type=\"text/css\">\r\n<!--\r\n.tablecontour {\r\n	border: 1px solid #333333;\r\n}\r\n-->\r\n</style>\r\n</head>\r\n\r\n<body>\r\n<table width=\"700\" border=\"0\" align=\"center\" cellpadding=\"3\" cellspacing=\"1\" class=\"tablecontour\">\r\n  <tr> \r\n    <td colspan=\"3\"><div align=\"center\"> \r\n        <h2>PURCHASE ORDER</h2>\r\n      </div></td>\r\n  </tr>\r\n  <tr> \r\n    <td width=\"303\"> </td>\r\n    <td width=\"33\"> </td>\r\n    <td width=\"340\"><table width=\"100%\" border=\"0\" cellpadding=\"0\" cellspacing=\"1\" class=\"tablecontour\">\r\n        <tr> \r\n          <td><font size=\"2\" face=\"Arial, Helvetica, sans-serif\">##date##</font></td>\r\n        </tr>\r\n        <tr> \r\n          <td><font size=\"2\" face=\"Arial, Helvetica, sans-serif\"><strong>PO number: \r\n            </strong>##po_number##</font></td>\r\n        </tr>\r\n      </table></td>\r\n  </tr>\r\n  <tr valign=\"top\"> \r\n    <td> <table width=\"100%\" border=\"0\" cellpadding=\"2\" cellspacing=\"1\" class=\"tablecontour\">\r\n        <tr> \r\n          <td><font size=\"2\" face=\"Arial, Helvetica, sans-serif\"><strong>Deliver \r\n            to:</strong></font></td>\r\n        </tr>\r\n        <tr> \r\n          <td><font size=\"2\" face=\"Arial, Helvetica, sans-serif\">Institute Address<br>\r\n            Av of Science<br>\r\n            1000 City<br>\r\n            Country </font></td>\r\n        </tr>\r\n      </table></td>\r\n    <td> </td>\r\n    <td><table width=\"100%\" border=\"0\" cellpadding=\"2\" cellspacing=\"1\" class=\"tablecontour\">\r\n        <tr> \r\n          <td><font size=\"2\" face=\"Arial, Helvetica, sans-serif\"><strong>Supplier:</strong></font></td>\r\n        </tr>\r\n        <tr> \r\n          <td valign=\"top\"><font size=\"2\" face=\"Arial, Helvetica, sans-serif\">##seller_address##</font></td>\r\n        </tr>\r\n        <tr> \r\n          <td valign=\"top\"><font size=\"2\" face=\"Arial, Helvetica, sans-serif\">Tel: \r\n            ##seller_tel##</font></td>\r\n        </tr>\r\n        <tr> \r\n          <td valign=\"top\"><font size=\"2\" face=\"Arial, Helvetica, sans-serif\">Fax: \r\n            ##seller_fax##</font></td>\r\n        </tr>\r\n        <tr> \r\n          <td valign=\"top\"><font size=\"2\" face=\"Arial, Helvetica, sans-serif\">Email: \r\n            ##seller_email##</font></td>\r\n        </tr>\r\n      </table> </td>\r\n  </tr>\r\n  <tr> \r\n    <td> </td>\r\n    <td> </td>\r\n    <td> </td>\r\n  </tr>\r\n  <tr> \r\n    <td colspan=\"3\">##items##</td>\r\n  </tr>\r\n  <tr>\r\n    <td colspan=\"3\">&nbsp;</td>\r\n  </tr>\r\n  <tr> \r\n    <td colspan=\"3\" class=\"tablecontour\">##comment##</td>\r\n  </tr>\r\n  <tr> \r\n    <td> </td>\r\n    <td> </td>\r\n    <td> </td>\r\n  </tr>\r\n  <tr> \r\n    <td> </td>\r\n    <td> </td>\r\n    <td> </td>\r\n  </tr>\r\n  <tr> \r\n    <td> </td>\r\n    <td> </td>\r\n    <td> </td>\r\n  </tr>\r\n  <tr> \r\n    <td> </td>\r\n    <td>&nbsp;</td>\r\n    <td> </td>\r\n  </tr>\r\n  <tr> \r\n    <td class=\"tablecontour\"><p> </p>\r\n      <p>&nbsp;</p></td>\r\n    <td> </td>\r\n    <td class=\"tablecontour\"><div align=\"center\"> Total ordered: ##total_order##</div></td>\r\n  </tr>\r\n</table>\r\n</body>\r\n</html>');

-- --------------------------------------------------------

--
-- Table structure for table `order_templates_xls`
--

CREATE TABLE `order_templates_xls` (
  `id` int NOT NULL,
  `template_name` varchar(30) DEFAULT NULL,
  `short_desc` varchar(100) DEFAULT NULL,
  `file_path` varchar(100) DEFAULT NULL,
  `lib` int DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `organisms`
--

CREATE TABLE `organisms` (
  `org_id` int UNSIGNED NOT NULL,
  `org_name` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `plasmids`
--

CREATE TABLE `plasmids` (
  `count` int UNSIGNED NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `alternate_ref` varchar(150) DEFAULT NULL,
  `features` longtext,
  `strain` varchar(45) DEFAULT NULL,
  `ref` longtext,
  `mapimage` varchar(200) DEFAULT NULL,
  `keeper` int DEFAULT NULL,
  `box_id` int UNSIGNED DEFAULT NULL,
  `box_details` text,
  `box_status` tinyint DEFAULT NULL,
  `box_status_data` text,
  `st_counter` int DEFAULT NULL,
  `st_date_limit` date DEFAULT NULL,
  `st_days_before_limit` tinyint UNSIGNED DEFAULT NULL,
  `st_defrost_counter` int UNSIGNED DEFAULT NULL,
  `volume` varchar(50) DEFAULT NULL,
  `volume_unit` varchar(25) DEFAULT NULL,
  `date_created` datetime DEFAULT NULL,
  `date_updated` datetime DEFAULT NULL,
  `wait` tinyint UNSIGNED DEFAULT '0',
  `secret` tinyint UNSIGNED DEFAULT '0',
  `unique_code` varchar(50) DEFAULT NULL,
  `chem_id_child` int UNSIGNED DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `plasmid_sequences`
--

CREATE TABLE `plasmid_sequences` (
  `count` int UNSIGNED NOT NULL,
  `plasmid_id` int UNSIGNED DEFAULT NULL,
  `seq` mediumtext,
  `label` varchar(150) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `primers`
--

CREATE TABLE `primers` (
  `count` int UNSIGNED NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `features` longtext,
  `orientation` tinyint UNSIGNED DEFAULT NULL,
  `conc` varchar(25) DEFAULT NULL,
  `label5` int UNSIGNED DEFAULT NULL,
  `label3` int UNSIGNED DEFAULT NULL,
  `quality` varchar(20) DEFAULT NULL,
  `quality_id` int UNSIGNED DEFAULT NULL,
  `stock` tinyint UNSIGNED DEFAULT NULL,
  `sequence` text,
  `relatedseq` varchar(100) DEFAULT NULL,
  `box_id` int UNSIGNED DEFAULT NULL,
  `box_details` text,
  `box_status` tinyint DEFAULT NULL,
  `box_status_data` text,
  `st_counter` int DEFAULT NULL,
  `st_date_limit` date DEFAULT NULL,
  `st_days_before_limit` tinyint UNSIGNED DEFAULT NULL,
  `st_defrost_counter` int UNSIGNED DEFAULT NULL,
  `volume` varchar(50) DEFAULT NULL,
  `volume_unit` varchar(25) DEFAULT NULL,
  `date_created` datetime DEFAULT NULL,
  `date_updated` datetime DEFAULT NULL,
  `keeper` int UNSIGNED DEFAULT NULL,
  `wait` tinyint UNSIGNED DEFAULT '0',
  `secret` tinyint UNSIGNED DEFAULT '0',
  `unique_code` varchar(50) DEFAULT NULL,
  `chem_id_child` int UNSIGNED DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `processes`
--

CREATE TABLE `processes` (
  `count` int UNSIGNED NOT NULL,
  `sample_id` int UNSIGNED DEFAULT NULL,
  `module` varchar(5) DEFAULT NULL,
  `process_type` tinyint UNSIGNED DEFAULT NULL,
  `comments` blob,
  `date` datetime DEFAULT NULL,
  `date_changed` datetime DEFAULT NULL,
  `operator` int UNSIGNED DEFAULT NULL,
  `status` int DEFAULT NULL,
  `sample_child` int UNSIGNED DEFAULT NULL,
  `sample_child_module` varchar(5) DEFAULT NULL,
  `parent` int UNSIGNED DEFAULT NULL,
  `doc_id` int UNSIGNED DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `process_type_def`
--

CREATE TABLE `process_type_def` (
  `count` tinyint UNSIGNED NOT NULL,
  `label` varchar(150) DEFAULT NULL,
  `parent` tinyint UNSIGNED DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `projects_lc`
--

CREATE TABLE `projects_lc` (
  `proj_id` int UNSIGNED NOT NULL,
  `proj_code` varchar(50) DEFAULT NULL,
  `proj_date` date DEFAULT NULL,
  `description` text,
  `keeper` int UNSIGNED DEFAULT NULL,
  `extra1` varchar(150) DEFAULT NULL,
  `extra2` varchar(150) DEFAULT NULL,
  `extra3` varchar(150) DEFAULT NULL,
  `archived` tinyint DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `projects_lc_groups`
--

CREATE TABLE `projects_lc_groups` (
  `id` int NOT NULL,
  `proj_id` int NOT NULL,
  `group_id` int DEFAULT NULL,
  `extra1` varchar(150) DEFAULT NULL,
  `extra2` varchar(150) DEFAULT NULL,
  `extra3` varchar(150) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `projects_lc_records`
--

CREATE TABLE `projects_lc_records` (
  `count_id` int NOT NULL,
  `proj_id` int NOT NULL,
  `record_id` int DEFAULT NULL,
  `module` varchar(10) DEFAULT NULL,
  `extra1` varchar(150) DEFAULT NULL,
  `extra2` varchar(150) DEFAULT NULL,
  `extra3` varchar(150) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `recipes`
--

CREATE TABLE `recipes` (
  `id` int UNSIGNED NOT NULL,
  `recipe_name` varchar(255) NOT NULL,
  `recipe_description` text,
  `allow_parcial` int NOT NULL,
  `allow_lot_pass_expiration` int NOT NULL,
  `date_created` timestamp NULL DEFAULT NULL,
  `date_updated` timestamp NULL DEFAULT NULL,
  `final_produt_type` varchar(50) DEFAULT NULL,
  `final_product_module` varchar(10) DEFAULT NULL,
  `final_product_record` int DEFAULT NULL,
  `final_product_lot_status` varchar(10) DEFAULT NULL,
  `obs` text,
  `allow_lot_qty_editable` int DEFAULT NULL,
  `final_product_lot_expiration_days` int DEFAULT NULL,
  `allow_lot_expiration_days_editable` int DEFAULT NULL,
  `category_id` int DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `recipes_categories`
--

CREATE TABLE `recipes_categories` (
  `id` int UNSIGNED NOT NULL,
  `category` varchar(255) NOT NULL,
  `date_created` timestamp NULL DEFAULT NULL,
  `date_updated` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `recipes_log`
--

CREATE TABLE `recipes_log` (
  `id` int UNSIGNED NOT NULL,
  `recipe_used` int NOT NULL,
  `lots_used` text NOT NULL,
  `used_by` int NOT NULL,
  `used_on` timestamp NULL DEFAULT NULL,
  `record_created` varchar(50) DEFAULT NULL,
  `obs` text,
  `steps_log` text,
  `initial_obs_log` text
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `recipe_components`
--

CREATE TABLE `recipe_components` (
  `component_id` int UNSIGNED NOT NULL,
  `module` varchar(10) DEFAULT NULL,
  `module_id` int DEFAULT NULL,
  `quantity` float DEFAULT NULL,
  `units` int DEFAULT NULL,
  `display_order` int DEFAULT NULL,
  `recipe_id` int DEFAULT NULL,
  `step` text
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `records_options`
--

CREATE TABLE `records_options` (
  `option_id` tinyint UNSIGNED NOT NULL,
  `table_name` varchar(50) DEFAULT NULL,
  `id_method` tinyint UNSIGNED DEFAULT '0',
  `block_duplicate_name` tinyint DEFAULT NULL,
  `versioning` tinyint DEFAULT NULL,
  `auto_name_mode` tinyint DEFAULT NULL,
  `auto_name_value` varchar(50) DEFAULT NULL,
  `wait_edit` tinyint DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `record_versioning`
--

CREATE TABLE `record_versioning` (
  `id` int NOT NULL,
  `record_id` int NOT NULL,
  `contact_id` int NOT NULL,
  `history_id` int NOT NULL,
  `module_table` char(50) NOT NULL,
  `data` longtext NOT NULL,
  `time_stamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `app_name` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `risk_danger`
--

CREATE TABLE `risk_danger` (
  `danger_id` int NOT NULL,
  `code` varchar(16) NOT NULL,
  `icon` varchar(64) NOT NULL,
  `small_icon` varchar(64) NOT NULL,
  `type` varchar(16) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `risk_danger`
--

INSERT INTO `risk_danger` (`danger_id`, `code`, `icon`, `small_icon`, `type`) VALUES
(1, 'GHS01', 'ghs_explos.gif', 'ghs_explos_25.gif', 'GHS'),
(2, 'GHS02', 'ghs_flamme.gif', 'ghs_flamme_25.gif', 'GHS'),
(3, 'GHS03', 'ghs_rondflam.gif', 'ghs_rondflam_25.gif', 'GHS'),
(4, 'GHS04', 'ghs_bottle.gif', 'ghs_bottle_25.gif', 'GHS'),
(5, 'GHS05', 'ghs_acid_red.gif', 'ghs_acid_red_25.gif', 'GHS'),
(6, 'GHS06', 'ghs_skull.gif', 'ghs_skull_25.gif', 'GHS'),
(7, 'GHS07', 'ghs_exclam.gif', 'ghs_exclam_25.gif', 'GHS'),
(8, 'GHS08', 'ghs_silhouete.gif', 'ghs_silhouete_25.gif', 'GHS'),
(9, 'GHS09', 'ghs_aquatic-pollut-red.gif', 'ghs_aquatic-pollut-red_25.gif', 'GHS'),
(10, 'EPI1', 'epi_eye_protection.png', 'epi_eye_protection_25.png', 'EPI'),
(11, 'EPI2', 'epi_lab_coat.png', 'epi_lab_coat_25.png', 'EPI'),
(12, 'EPI3', 'epi_gloves.png', 'epi_gloves_25.png', 'EPI'),
(13, 'EPI4', 'epi_hair_cap.png', 'epi_hair_cap_25.png', 'EPI'),
(14, 'EPI5', 'epi_shoe_cap.png', 'epi_shoe_cap_25.png', 'EPI'),
(15, 'EPI6', 'epi_facial_protection.png', 'epi_facial_protection_25.png', 'EPI'),
(16, 'EPI7', 'epi_mask.png', 'epi_mask_25.png', 'EPI'),
(17, 'EPI8', 'epi_powder_mask.png', 'epi_powder_mask_25.png', 'EPI'),
(18, 'EPI9', 'epi_gaz_mask.png', 'epi_gaz_mask_25.png', 'EPI'),
(19, 'EPI10', 'epi_full_cover.png', 'epi_full_cover_25.png', 'EPI'),
(20, 'EPI11', 'epi_ear_cover.png', 'epi_ear_cover_25.png', 'EPI'),
(21, 'EPI12', 'epi_helmet.png', 'epi_helmet_25.png', 'EPI'),
(22, 'EPI13', 'epi_color_vest.png', 'epi_color_vest_25.png', 'EPI'),
(23, 'EPI14', 'epi_access_control.png', 'epi_access_control_25.png', 'EPI'),
(24, 'EPI15', 'epi_floating_protection.png', 'epi_floating_protection_25.png', 'EPI'),
(25, 'EPI16', 'epi_boots.png', 'epi_boots_25.png', 'EPI'),
(26, 'EPI17', 'epi_harness.png', 'epi_harness_25.png', 'EPI'),
(27, 'EPI18', 'epi_alert.png', 'epi_alert_25.png', 'EPI');

-- --------------------------------------------------------

--
-- Table structure for table `risk_safety`
--

CREATE TABLE `risk_safety` (
  `risk_id` int UNSIGNED NOT NULL,
  `code` varchar(50) DEFAULT NULL,
  `description` mediumtext,
  `risk` tinyint UNSIGNED DEFAULT NULL,
  `safety` tinyint UNSIGNED DEFAULT NULL,
  `danger` tinyint UNSIGNED DEFAULT NULL,
  `advice` tinyint UNSIGNED DEFAULT NULL,
  `properties` tinyint UNSIGNED DEFAULT NULL,
  `NFPA_H` tinyint UNSIGNED DEFAULT NULL,
  `NFPA_F` tinyint UNSIGNED DEFAULT NULL,
  `NFPA_R` tinyint UNSIGNED DEFAULT NULL,
  `NFPA_S` tinyint UNSIGNED DEFAULT NULL,
  `GHSversion` varchar(150) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `risk_safety`
--

INSERT INTO `risk_safety` (`risk_id`, `code`, `description`, `risk`, `safety`, `danger`, `advice`, `properties`, `NFPA_H`, `NFPA_F`, `NFPA_R`, `NFPA_S`, `GHSversion`) VALUES
(1, 'R1', 'Explosive when dry ', 1, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(2, 'R2', 'Risk of explosion by shock, friction, fire or other sources of ignition ', 1, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(3, 'R3', 'Extreme risk of explosion by shock, friction, fire or other sources of ignition ', 1, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(4, 'R4', 'Forms very sensitive explosive metallic compounds ', 1, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(5, 'R5', 'Heating may cause an explosion ', 1, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(6, 'R6', 'Explosive with or without contact with air ', 1, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(7, 'R7', 'May cause fire ', 1, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(8, 'R8', 'Contact with combustible material may cause fire ', 1, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(9, 'R9', 'Explosive when mixed with combustible material ', 1, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(10, 'R10', 'Flammable ', 1, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(11, 'R11', 'Highly Flammable ', 1, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(12, 'R12', 'Extremely Flammable ', 1, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(13, 'R14', 'Reacts violently with water ', 1, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(14, 'R15', 'Contact with water liberates extremely flammable gases ', 1, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(15, 'R16', 'Explosive when mixed with oxidizing substances ', 1, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(16, 'R17', 'Spontaneously flammable in air ', 1, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(17, 'R18', 'In use may form flammable/explosive vapor-air mixture ', 1, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(18, 'R19', 'May form explosive peroxides ', 1, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(19, 'R20', 'Harmful by inhalation ', 1, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(20, 'R21', 'Harmful in contact with skin ', 1, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(21, 'R22', 'Harmful if swallowed ', 1, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(22, 'R23', 'Toxic by inhalation ', 1, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(23, 'R24', 'Toxic in contact with skin ', 1, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(24, 'R25', 'Toxic if swallowed ', 1, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(25, 'R26', 'Very Toxic by inhalation ', 1, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(26, 'R27', 'Very Toxic in contact with skin ', 1, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(27, 'R28', 'Very Toxic if swallowed ', 1, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(28, 'R29', 'Contact with water liberates toxic gas ', 1, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(29, 'R30', 'Can become highly flammable in use ', 1, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(30, 'R31', 'Contact with acids liberates toxic gas ', 1, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(31, 'R32', 'Contact with acids liberates very toxic gas ', 1, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(32, 'R33', 'Danger of cumulative effects ', 1, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(33, 'R34', 'Causes burns ', 1, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(34, 'R35', 'Causes severe burns ', 1, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(35, 'R36', 'Irritating to the eyes ', 1, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(36, 'R37', 'Irritating to the respiratory system ', 1, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(37, 'R38', 'Irritating to the skin ', 1, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(38, 'R39', 'Danger of very serious irreversible effects ', 1, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(39, 'R40', 'Possible risk of irreversible effects ', 1, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(40, 'R41', 'Risk of serious damage to eyes ', 1, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(41, 'R42', 'May cause sensitization by inhalation ', 1, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(42, 'R43', 'May cause sensitization by skin contact ', 1, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(43, 'R44', 'Risk of explosion if heated under confinement ', 1, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(44, 'R45', 'May cause cancer ', 1, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(45, 'R46', 'May cause heritable genetic damage ', 1, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(46, 'R48', 'Danger of serious damage to health by prolonged exposure ', 1, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(47, 'R49', 'May cause cancer by inhalation ', 1, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(48, 'R50', 'Very Toxic to aquatic organisms ', 1, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(49, 'R51', 'Toxic to aquatic organisms ', 1, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(50, 'R52', 'Harmful to aquatic organisms ', 1, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(51, 'R53', 'May cause long-term adverse effects in the aquatic environment ', 1, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(52, 'R54', 'Toxic to flora ', 1, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(53, 'R55', 'Toxic to fauna ', 1, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(54, 'R56', 'Toxic to soil organisms ', 1, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(55, 'R57', 'Toxic to bees ', 1, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(56, 'R58', 'May cause long-term adverse effects in the environment ', 1, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(57, 'R59', 'Dangerous for the ozone layer ', 1, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(58, 'R60', 'May impair fertility ', 1, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(59, 'R61', 'May cause harm to the unborn child ', 1, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(60, 'R62', 'Possible risk of impaired fertility ', 1, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(61, 'R63', 'Possible risk of harm to the unborn child ', 1, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(62, 'R64', 'May cause harm to breast-fed babies ', 1, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(63, 'R65', 'Harmful', 1, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(64, 'S1', 'Keep locked up ', 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(65, 'S2', 'Keep out of reach of children ', 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(66, 'S3', 'Keep in a cool place ', 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(67, 'S4', 'Keep away from living quarters ', 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(68, 'S5', 'Keep contents under ... (appropriate liquid to be specified by the manufacturer) ', 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(69, 'S6', 'Keep under ... (inert gas to be specified by the manufacturer) ', 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(70, 'S7', 'Keep container tightly closed ', 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(71, 'S8', 'Keep container dry ', 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(72, 'S9', 'Keep container in a well-ventilated place ', 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(73, 'S12', 'Do not keep the container sealed ', 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(74, 'S13', 'Keep away from food, drink and animal feeding stuffs ', 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(75, 'S14', 'Keep away from ... (incompatible materials to be indicated by the manufacturer) ', 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(76, 'S15', 'Keep away from heat ', 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(77, 'S16', 'Keep away from sources of ignition - No smoking ', 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(78, 'S17', 'Keep away from combustible material ', 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(79, 'S18', 'Handle and open container with care ', 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(80, 'S20', 'When using, do not eat or drink ', 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(81, 'S21', 'When using, do not smoke ', 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(82, 'S22', 'Do not breathe dust ', 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(83, 'S23', 'Do not breathe gas/fumes/vapor/spray (appropriate wording to be specified by the manufacturer) ', 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(84, 'S24', 'Avoid contact with the skin ', 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(85, 'S25', 'Avoid contact with the eyes ', 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(86, 'S26', 'In case of contact with eyes, rinse immediately with plenty of water and seek medical advice ', 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(87, 'S27', 'Take off immediately all contaminated clothing ', 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(88, 'S28', 'After contact with skin, wash immediately with plenty of ... (to be specified by the manufacturer) ', 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(89, 'S29', 'Do not empty into drains ', 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(90, 'S30', 'Never add water to this product ', 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(91, 'S33', 'Take precautionary measures against static discharges ', 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(92, 'S35', 'This material and its container must be disposed of in a safe way ', 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(93, 'S36', 'Wear suitable protective clothing ', 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(94, 'S37', 'Wear suitable gloves ', 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(95, 'S38', 'In case of insufficient ventilation, wear suitable respiratory equipment ', 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(96, 'S39', 'Wear eye/face protection ', 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(97, 'S40', 'To clean the floor and all objects contaminated by this material use ... (to be specified by the manufacturer) ', 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(98, 'S41', 'In case of fire and/or explosion do not breathe fumes ', 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(99, 'S42', 'During fumigation/spraying wear suitable respiratory equipment (appropriate wording to be specified) ', 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(100, 'S43', 'In case of fire, use ... (indicate in the space the precise type of fire-fighting equipment. If water increases the risk add - Never use water) ', 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(101, 'S45', 'In case of accident or if you feel unwell, seek medical advice immediately (show label where possible) ', 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(102, 'S46', 'If swallowed, seek medical advice immediately and show this container or label ', 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(103, 'S47', 'Keep at temperature not exceeding ... E C (to be specified by the manufacturer) ', 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(104, 'S48', 'Keep wetted with ... (appropriate material to be specified by the manufacturer) ', 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(105, 'S49', 'Keep only in the original container ', 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(106, 'S50', 'Do not mix with ... (to be specified by the manufacturer) ', 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(107, 'S51', 'Use only in well-ventilated areas ', 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(108, 'S52', 'Not recommended for interior use on large surface areas ', 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(109, 'S53', 'Avoid exposure - obtain special instruction before use ', 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(110, 'S56', 'Dispose of the material and its container to hazardous or special waste collection point ', 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(111, 'S57', 'Use appropriate containment to avoid environmental contamination ', 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(112, 'S59', 'Refer to manufacturer/supplier for information on recovery/recycling ', 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(113, 'S60', 'This material and/or its container must be disposed of as hazardous waste ', 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(114, 'S61', 'Avoid release to the environment. Refer to special instructions safety data sheet ', 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(115, 'S62', 'If swallowed, do not induce vomiting', 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(116, 'R66', 'Repeated exposure may cause skin dryness or cracking', 1, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(117, 'R67', 'Vapors may cause drowsiness and dizziness', 1, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(118, 'R68', 'Possible risk of irreversible effects', 1, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(119, 'R14/15', 'Reacts violently with water, liberating extremely flammable gases', 1, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(120, 'R15/29', 'Contact with water liberates toxic, extremely flammable gas', 1, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(121, 'R20/21', 'Harmful by inhalation and in contact with skin', 1, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(122, 'R20/21/22', 'Harmful by inhalation, in contact with skin and if swallowed', 1, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(123, 'R20/22', 'Harmful by inhalation and if swallowed', 1, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(124, 'R21/22', 'Harmful in contact with skin and if swallowed', 1, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(125, 'R23/24', 'Toxic by inhalation and in contact with skin', 1, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(126, 'R23/24/25', 'Toxic by inhalation, in contact with skin and if swallowed', 1, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(127, 'R23/25', 'Toxic by inhalation and if swallowed', 1, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(128, 'R24/25', 'Toxic in contact with skin and if swallowed', 1, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(129, 'R26/27', 'Very Toxic by inhalation and in contact with skin', 1, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(130, 'R26/27/28', 'Very Toxic by inhalation, in contact with skin and if swallowed', 1, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(131, 'R26/28', 'Very Toxic by inhalation and if swallowed', 1, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(132, 'R27/28', 'Very Toxic in contact with skin and if swallowed', 1, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(133, 'R36/37', 'Irritating to eyes and respiratory system', 1, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(134, 'R36/37/38', 'Irritating to eyes, respiratory system and skin', 1, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(135, 'R36/38', 'Irritating to eyes and skin', 1, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(136, 'R37/38', 'Irritating to respiratory system and skin', 1, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(137, 'R39/23', 'Toxic: danger of very serious irreversible effects through inhalation', 1, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(138, 'R39/23/24', 'Toxic: danger of very serious irreversible effects through inhalation in contact with skin', 1, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(139, 'R39/23/24/', 'Toxic: danger of very serious irreversible effects through inhalation, in contact with skin and if swallowed', 1, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(140, 'R39/23/25', 'Toxic: danger of very serious irreversible effects through inhalation and if swallowed', 1, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(141, 'R39/24', 'Toxic: danger of very serious irreversible effects in contact with skin', 1, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(142, 'R39/24/25', 'Toxic: danger of very serious irreversible effects in contact with skin and if swallowed', 1, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(143, 'R39/25', 'Toxic: danger of very serious irreversible effects if swallowed', 1, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(144, 'R39/26', 'Very Toxic: danger of very serious irreversible effects through inhalation', 1, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(145, 'R39/26/27', 'Very Toxic: danger of very serious irreversible effects through inhalation and in contact with skin', 1, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(146, 'R39/26/27/', 'Very Toxic: danger of very serious irreversible effects through inhalation, in contact with skin and if swallowed', 1, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(147, 'R39/26/28', 'Very Toxic: danger of very serious irreversible effects through inhalation and if swallowed', 1, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(148, 'R39/27', 'Very Toxic: danger of very serious irreversible effects in contact with skin', 1, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(149, 'R39/27/28', 'Very Toxic: danger of very serious irreversible effects in contact with skin and if swallowed', 1, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(150, 'R39/28', 'Very Toxic: danger of very serious irreversible effects if swallowed', 1, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(151, 'R42/43', 'May cause sensitization by inhalation and skin contact', 1, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(152, 'R48/20', 'Harmful: danger of serious damage to health by prolonged exposure through inhalation', 1, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(153, 'R48/20/21', 'Harmful: danger of serious damage to health by prolonged exposure through inhalation and in contact with skin', 1, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(154, 'R48/20/21/', 'Harmful: danger of serious damage to health by prolonged exposure through inhalation, and in contact with skin and if swallowed', 1, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(155, 'R48/20/22', 'Harmful: danger of serious damage to health by prolonged exposure through inhalation and if swallowed', 1, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(156, 'R48/21', 'Harmful: danger of serious damage to health by prolonged exposure in contact with skin', 1, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(157, 'R48/21/22', 'Harmful: danger of serious damage to health by prolonged exposure in contact with skin and if swallowed', 1, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(158, 'R48/22', 'Harmful: danger of serious damage to health by prolonged exposure if swallowed', 1, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(159, 'R48/23', 'Toxic: danger of serious damage to health by prolonged exposure through inhalation', 1, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(160, 'R48/23/24', 'Toxic: danger of serious damage to health by prolonged exposure through inhalation and in contact with skin', 1, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(161, 'R48/23/24/', 'Toxic: danger of serious damage to health by prolonged exposure through inhalation, in contact with skin and if swallowed', 1, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(162, 'R48/23/25', 'Toxic: danger of serious damage to health by prolonged exposure through inhalation and if swallowed', 1, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(163, 'R48/24', 'Toxic: danger of serious damage to health by prolonged exposure in contact with skin', 1, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(164, 'R48/24/25', 'Toxic: danger of serious damage to health by prolonged exposure in contact with skin and if swallowed', 1, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(165, 'R48/25', 'Toxic: danger of serious damage to health by prolonged exposure if swallowed', 1, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(166, 'R50/53', 'Very Toxic to aquatic organisms, may cause long-term adverse effects in the aquatic environment', 1, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(167, 'R51/53', 'Toxic to aquatic organisms, may cause long-term adverse effects in the aquatic environment', 1, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(168, 'R52/53', 'Harmful to aquatic organisms, may cause long-term adverse effects in the aquatic environment', 1, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(169, 'R68/20', 'Harmful: possible risk of irreversible effects through inhalation', 1, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(170, 'R68/20/21', 'Harmful: possible risk of irreversible effects through inhalation and in contact with skin', 1, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(171, 'R68/20/21/', 'Harmful: possible risk of irreversible effects through inhalation, in contact with skin and if swallowed', 1, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(172, 'R68/20/22', 'Harmful: possible risk of irreversible effects through inhalation and if swallowed', 1, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(173, 'R68/22', 'Harmful: possible risk of irreversible effects if swallowed', 1, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(174, 'R68/21', 'Harmful: possible risk of irreversible effects in contact with skin', 1, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(175, 'R68/21/22', 'Harmful: possible risk of irreversible effects in contact with skin and if swallowed', 1, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(176, 'R68/22', 'Harmful: possible risk of irreversible effects if swallowed', 1, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(177, 'S63', 'In case of accident by inhalation, remove casualty to fresh air and keep at rest', 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(178, 'S64', 'If swallowed, rinse mouth with water (only if the person is conscious)', 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(179, 'S01/02/200', 'Keep locked up and out of the reach of children', 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(180, 'S03/07/200', 'Keep container tightly closed in a cool place', 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(181, 'S03/09/201', 'Keep in a cool well-ventilated place away from ... (incompatible materials to be indicated by manufacturer)', 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(182, 'S3/9/14/49', 'Keep only in the original container in a cool well-ventilated place away from ... (incompatible materials to be indicated by manufacturer)', 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(183, 'S03/09/194', 'Keep only in the original container in a cool well-ventilated place', 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(184, 'S01/03/201', 'Keep in a cool place away from ... (incompatible materials to be indicated by the manufacturer)', 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(185, 'S07/08/200', 'Keep container tightly closed and dry', 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(186, 'S07/09/200', 'Keep container tightly closed and in a well-ventilated place', 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(187, 'S01/07/194', 'Keep container tightly closed and at a temperature not exceeding ... Â°C (to be specified by manufacturer)', 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(188, 'S20/21', 'When using, do not eat, drink or smoke', 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(189, 'S24/25', 'Avoid contact with skin and eyes', 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(190, 'S27/28', 'After contact with skin, take off immediately all contaminated clothing and wash imediately with plenty of.... (to be specified by the manufacturer)', 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(191, 'S29/35', 'Do not empty into drains, dispose of this container and it s material in a safe way', 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(192, 'S29/56', 'Do not empty into drains, dispose of this material and its container to hazardous or special waste-collection point', 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(193, 'S36/37', 'Wear suitable protective clothing and gloves', 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(194, 'S36/37/39', 'Wear suitable protective clothing, gloves and eye/face protection', 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(195, 'S36/39', 'Wear suitable protective clothing and eye/face protection', 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(196, 'S37/39', 'Wear suitable gloves and eye/face protection', 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(197, 'S47/49', 'Keep only in the original container at temperature not exceeding ... Â°C (to be specified by manufacturer)', 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(198, 'H200', 'Unstable explosive', 0, 0, 1, 0, 0, 0, 0, 0, 0, 'rev08,rev07,rev06,rev05,rev04'),
(199, 'H201', 'Explosive; mass explosion hazard', 0, 0, 1, 0, 0, 0, 0, 0, 0, 'rev08,rev07,rev06,rev05,rev04'),
(200, 'H202', 'Explosive; severe projection hazard', 0, 0, 1, 0, 0, 0, 0, 0, 0, 'rev08,rev07,rev06,rev05,rev04'),
(201, 'H203', 'Explosive; fire, blast or projection hazard', 0, 0, 1, 0, 0, 0, 0, 0, 0, 'rev08,rev07,rev06,rev05,rev04'),
(202, 'H204', 'Fire or projection hazard', 0, 0, 1, 0, 0, 0, 0, 0, 0, 'rev08,rev07,rev06,rev05,rev04'),
(203, 'H205', 'May mass explode in fire', 0, 0, 1, 0, 0, 0, 0, 0, 0, 'rev08,rev07,rev06,rev05,rev04'),
(204, 'H220', 'Extremely flammable gas', 0, 0, 1, 0, 0, 0, 0, 0, 0, 'rev08,rev07,rev06,rev05,rev04'),
(205, 'H221', 'Flammable gas', 0, 0, 1, 0, 0, 0, 0, 0, 0, 'rev08,rev07,rev06,rev05,rev04'),
(206, 'H222', 'Extremely flammable aerosol', 0, 0, 1, 0, 0, 0, 0, 0, 0, 'rev08,rev07,rev06,rev05,rev04'),
(207, 'H223', 'Flammable aerosol', 0, 0, 1, 0, 0, 0, 0, 0, 0, 'rev08,rev07,rev06,rev05,rev04'),
(208, 'H224', 'Extremely flammable liquid and vapour', 0, 0, 1, 0, 0, 0, 0, 0, 0, 'rev08,rev07,rev06,rev05,rev04'),
(209, 'H225', 'Highly flammable liquid and vapour', 0, 0, 1, 0, 0, 0, 0, 0, 0, 'rev08,rev07,rev06,rev05,rev04'),
(210, 'H226', 'Flammable liquid and vapour', 0, 0, 1, 0, 0, 0, 0, 0, 0, 'rev08,rev07,rev06,rev05,rev04'),
(211, 'H227', 'Combustible liquid', 0, 0, 1, 0, 0, 0, 0, 0, 0, 'rev08,rev07,rev06,rev05,rev04'),
(212, 'H228', 'Flammable solid', 0, 0, 1, 0, 0, 0, 0, 0, 0, 'rev08,rev07,rev06,rev05,rev04'),
(213, 'H240', 'Heating may cause an explosion', 0, 0, 1, 0, 0, 0, 0, 0, 0, 'rev08,rev07,rev06,rev05,rev04'),
(214, 'H241', 'Heating may cause a fire or explosion', 0, 0, 1, 0, 0, 0, 0, 0, 0, 'rev08,rev07,rev06,rev05,rev04'),
(215, 'H242', 'Heating may cause a fire', 0, 0, 1, 0, 0, 0, 0, 0, 0, 'rev08,rev07,rev06,rev05,rev04'),
(216, 'H250', 'Catches fire spontaneously if exposed to air', 0, 0, 1, 0, 0, 0, 0, 0, 0, 'rev08,rev07,rev06,rev05,rev04'),
(217, 'H251', 'Self-heating; may catch fire', 0, 0, 1, 0, 0, 0, 0, 0, 0, 'rev08,rev07,rev06,rev05,rev04'),
(218, 'H252', 'Self-heating in large quantities; may catch fire', 0, 0, 1, 0, 0, 0, 0, 0, 0, 'rev08,rev07,rev06,rev05,rev04'),
(219, 'H260', 'In contact with water releases flammable gases which may ignite spontaneously', 0, 0, 1, 0, 0, 0, 0, 0, 0, 'rev08,rev07,rev06,rev05,rev04'),
(220, 'H261', 'In contact with water releases flammable gas', 0, 0, 1, 0, 0, 0, 0, 0, 0, 'rev08,rev07,rev06,rev05,rev04'),
(221, 'H270', 'May cause or intensify fire; oxidizer', 0, 0, 1, 0, 0, 0, 0, 0, 0, 'rev08,rev07,rev06,rev05,rev04'),
(222, 'H271', 'May cause fire or explosion; strong oxidizer', 0, 0, 1, 0, 0, 0, 0, 0, 0, 'rev08,rev07,rev06,rev05,rev04'),
(223, 'H272', 'May intensify fire; oxidizer', 0, 0, 1, 0, 0, 0, 0, 0, 0, 'rev08,rev07,rev06,rev05,rev04'),
(224, 'H280', 'Contains gas under pressure; may explode if heated', 0, 0, 1, 0, 0, 0, 0, 0, 0, 'rev08,rev07,rev06,rev05,rev04'),
(225, 'H281', 'Contains refrigerated gas; may cause cryogenic burns or injury', 0, 0, 1, 0, 0, 0, 0, 0, 0, 'rev08,rev07,rev06,rev05,rev04'),
(226, 'H290', 'May be corrosive to metals', 0, 0, 1, 0, 0, 0, 0, 0, 0, 'rev08,rev07,rev06,rev05,rev04'),
(227, 'H300', 'Fatal if swallowed', 0, 0, 1, 0, 0, 0, 0, 0, 0, 'rev08,rev07,rev06,rev05,rev04'),
(228, 'H301', 'Toxic if swallowed', 0, 0, 1, 0, 0, 0, 0, 0, 0, 'rev08,rev07,rev06,rev05,rev04'),
(229, 'H302', 'Harmful if swallowed', 0, 0, 1, 0, 0, 0, 0, 0, 0, 'rev08,rev07,rev06,rev05,rev04'),
(230, 'H303', 'May be harmful if swallowed', 0, 0, 1, 0, 0, 0, 0, 0, 0, 'rev08,rev07,rev06,rev05,rev04'),
(231, 'H304', 'May be fatal if swallowed and enters airways', 0, 0, 1, 0, 0, 0, 0, 0, 0, 'rev08,rev07,rev06,rev05,rev04'),
(232, 'H305', 'May be harmful if swallowed and enters airways', 0, 0, 1, 0, 0, 0, 0, 0, 0, 'rev08,rev07,rev06,rev05,rev04'),
(233, 'H310', 'Fatal in contact with skin', 0, 0, 1, 0, 0, 0, 0, 0, 0, 'rev08,rev07,rev06,rev05,rev04'),
(234, 'H311', 'Toxic in contact with skin', 0, 0, 1, 0, 0, 0, 0, 0, 0, 'rev08,rev07,rev06,rev05,rev04'),
(235, 'H312', 'Harmful in contact with skin', 0, 0, 1, 0, 0, 0, 0, 0, 0, 'rev08,rev07,rev06,rev05,rev04'),
(236, 'H313', 'May be harmful in contact with skin', 0, 0, 1, 0, 0, 0, 0, 0, 0, 'rev08,rev07,rev06,rev05,rev04'),
(237, 'H314', 'Causes severe skin burns and eye damage', 0, 0, 1, 0, 0, 0, 0, 0, 0, 'rev08,rev07,rev06,rev05,rev04'),
(238, 'H315', 'Causes skin irritation', 0, 0, 1, 0, 0, 0, 0, 0, 0, 'rev08,rev07,rev06,rev05,rev04'),
(239, 'H316', 'Causes mild skin irritation', 0, 0, 1, 0, 0, 0, 0, 0, 0, 'rev08,rev07,rev06,rev05,rev04'),
(240, 'H317', 'May cause an allergic skin reaction', 0, 0, 1, 0, 0, 0, 0, 0, 0, 'rev08,rev07,rev06,rev05,rev04'),
(241, 'H318', 'Causes serious eye damage', 0, 0, 1, 0, 0, 0, 0, 0, 0, 'rev08,rev07,rev06,rev05,rev04'),
(242, 'H319', 'Causes serious eye irritation', 0, 0, 1, 0, 0, 0, 0, 0, 0, 'rev08,rev07,rev06,rev05,rev04'),
(243, 'H320', 'Causes eye irritation', 0, 0, 1, 0, 0, 0, 0, 0, 0, 'rev08,rev07,rev06,rev05,rev04'),
(244, 'H330', 'Fatal if inhaled', 0, 0, 1, 0, 0, 0, 0, 0, 0, 'rev08,rev07,rev06,rev05,rev04'),
(245, 'H331', 'Toxic if inhaled', 0, 0, 1, 0, 0, 0, 0, 0, 0, 'rev08,rev07,rev06,rev05,rev04'),
(246, 'H332', 'Harmful if inhaled', 0, 0, 1, 0, 0, 0, 0, 0, 0, 'rev08,rev07,rev06,rev05,rev04'),
(247, 'H333', 'May be harmful if inhaled', 0, 0, 1, 0, 0, 0, 0, 0, 0, 'rev08,rev07,rev06,rev05,rev04'),
(248, 'H334', 'May cause allergy or asthma symptoms or breathing difficulties if inhaled', 0, 0, 1, 0, 0, 0, 0, 0, 0, 'rev08,rev07,rev06,rev05,rev04'),
(249, 'H335', 'May cause respiratory irritation', 0, 0, 1, 0, 0, 0, 0, 0, 0, 'rev08,rev07,rev06,rev05,rev04'),
(250, 'H336', 'May cause drowsiness or dizziness', 0, 0, 1, 0, 0, 0, 0, 0, 0, 'rev08,rev07,rev06,rev05,rev04'),
(251, 'H340', 'May cause genetic defects (state route of exposure if it is conclusively proven that no other routes of exposure cause the hazard)', 0, 0, 1, 0, 0, 0, 0, 0, 0, 'rev08,rev07,rev06,rev05,rev04'),
(252, 'H341', 'Suspected of causing genetic defects (state route of exposure if it is conclusively proven that no other routes of exposure cause the hazard)', 0, 0, 1, 0, 0, 0, 0, 0, 0, 'rev08,rev07,rev06,rev05,rev04'),
(253, 'H350', 'May cause cancer (state route of exposure if it is conclusively proven that no other routes of exposure cause the hazard)', 0, 0, 1, 0, 0, 0, 0, 0, 0, 'rev08,rev07,rev06,rev05,rev04'),
(254, 'H351', 'Suspected of causing cancer (state route of exposure if it is conclusively proven that no other routes of exposure cause the hazard)', 0, 0, 1, 0, 0, 0, 0, 0, 0, 'rev08,rev07,rev06,rev05,rev04'),
(255, 'H360', 'May damage fertility or the unborn child (state route of exposure if it is conclusively proven that no other routes of exposure cause the hazard)', 0, 0, 1, 0, 0, 0, 0, 0, 0, 'rev08,rev07,rev06,rev05,rev04'),
(256, 'H361', 'Suspected of damaging fertility or the unborn child (state route of exposure if it is conclusively proven that no other routes of exposure cause the hazard)', 0, 0, 1, 0, 0, 0, 0, 0, 0, 'rev08,rev07,rev06,rev05,rev04'),
(257, 'H362', 'May cause harm to breast-fed children', 0, 0, 1, 0, 0, 0, 0, 0, 0, 'rev08,rev07,rev06,rev05,rev04'),
(258, 'H370', 'Causes damage to organs (or state all organs affected, if known) (state route of exposure if it is conclusively proven that no other routes of exposure cause the hazard)', 0, 0, 1, 0, 0, 0, 0, 0, 0, 'rev08,rev07,rev06,rev05,rev04'),
(259, 'H371', 'May cause damage to organs (or state all organs affected, if known) (state route of exposure if it is conclusively proven that no other routes of exposure cause the hazard)', 0, 0, 1, 0, 0, 0, 0, 0, 0, 'rev08,rev07,rev06,rev05,rev04'),
(260, 'H372', 'Causes damage to organs (or state all organs affected, if known) through prolonged or repeated exposure (state route of exposure if it is conclusively proven that no other routes of exposure cause the hazard)', 0, 0, 1, 0, 0, 0, 0, 0, 0, 'rev08,rev07,rev06,rev05,rev04'),
(261, 'H373', 'May cause damage to organs (or state all organs affected, if known)  through prolonged or repeated exposure (state route of exposure if it is conclusively proven that no other routes of exposure cause the hazard)', 0, 0, 1, 0, 0, 0, 0, 0, 0, 'rev08,rev07,rev06,rev05,rev04'),
(262, 'H400', 'Very toxic to aquatic life', 0, 0, 1, 0, 0, 0, 0, 0, 0, 'rev08,rev07,rev06,rev05,rev04'),
(263, 'H401', 'Toxic to aquatic life', 0, 0, 1, 0, 0, 0, 0, 0, 0, 'rev08,rev07,rev06,rev05,rev04'),
(264, 'H402', 'Harmful to aquatic life', 0, 0, 1, 0, 0, 0, 0, 0, 0, 'rev08,rev07,rev06,rev05,rev04'),
(265, 'H410', 'Very toxic to aquatic life with long lasting effects', 0, 0, 1, 0, 0, 0, 0, 0, 0, 'rev08,rev07,rev06,rev05,rev04'),
(266, 'H411', 'Toxic to aquatic life with long lasting effects', 0, 0, 1, 0, 0, 0, 0, 0, 0, 'rev08,rev07,rev06,rev05,rev04'),
(267, 'H412', 'Harmful to aquatic life with long lasting effects', 0, 0, 1, 0, 0, 0, 0, 0, 0, 'rev08,rev07,rev06,rev05,rev04'),
(268, 'H413', 'May cause long lasting harmful effects to aquatic life', 0, 0, 1, 0, 0, 0, 0, 0, 0, 'rev08,rev07,rev06,rev05,rev04'),
(269, 'P201', 'Obtain special instructions before use', 0, 0, 0, 1, 0, 0, 0, 0, 0, 'rev08,rev07,rev06,rev05,rev04'),
(270, 'P202', 'Do not handle until all safety precautions have been read and understood', 0, 0, 0, 1, 0, 0, 0, 0, 0, 'rev08,rev07,rev06,rev05,rev04'),
(271, 'P210', 'Keep away from heat, hot surfaces, sparks, open flames and other ignition sources. No smoking.', 0, 0, 0, 1, 0, 0, 0, 0, 0, 'rev08,rev07,rev06,rev05,rev04'),
(272, 'P211', 'Do not spray on an open flame or other ignition source', 0, 0, 0, 1, 0, 0, 0, 0, 0, 'rev08,rev07,rev06,rev05,rev04'),
(273, 'P220', 'Keep away from clothing and other combustible materials', 0, 0, 0, 1, 0, 0, 0, 0, 0, 'rev08,rev07,rev06,rev05,rev04'),
(275, 'P222', 'Do not allow contact with air', 0, 0, 0, 1, 0, 0, 0, 0, 0, 'rev08,rev07,rev06,rev05,rev04'),
(276, 'P223', 'Do not allow contact with water', 0, 0, 0, 1, 0, 0, 0, 0, 0, 'rev08,rev07,rev06,rev05,rev04'),
(277, 'P230', 'Keep wetted with ...', 0, 0, 0, 1, 0, 0, 0, 0, 0, 'rev08,rev07,rev06,rev05,rev04'),
(278, 'P231', 'Handle and store contents under inert gas/â€¦', 0, 0, 0, 1, 0, 0, 0, 0, 0, 'rev08,rev07,rev06,rev05,rev04'),
(279, 'P232', 'Protect from moisture', 0, 0, 0, 1, 0, 0, 0, 0, 0, 'rev08,rev07,rev06,rev05,rev04'),
(280, 'P233', 'Keep container tightly closed', 0, 0, 0, 1, 0, 0, 0, 0, 0, 'rev08,rev07,rev06,rev05,rev04'),
(281, 'P234', 'Keep only in original packaging', 0, 0, 0, 1, 0, 0, 0, 0, 0, 'rev08,rev07,rev06,rev05,rev04'),
(282, 'P235', 'Keep cool', 0, 0, 0, 1, 0, 0, 0, 0, 0, 'rev08,rev07,rev06,rev05,rev04'),
(283, 'P240', 'Ground and bond container and receiving equipment', 0, 0, 0, 1, 0, 0, 0, 0, 0, 'rev08,rev07,rev06,rev05,rev04'),
(284, 'P241', 'Use explosion-proof [electrical/ventilating/lighting/...] equipment', 0, 0, 0, 1, 0, 0, 0, 0, 0, 'rev08,rev07,rev06,rev05,rev04'),
(285, 'P242', 'Use non-sparking tools', 0, 0, 0, 1, 0, 0, 0, 0, 0, 'rev08,rev07,rev06,rev05,rev04'),
(286, 'P243', 'Take action to prevent static discharges', 0, 0, 0, 1, 0, 0, 0, 0, 0, 'rev08,rev07,rev06,rev05,rev04'),
(287, 'P244', 'Keep valves and fittings free from oil and grease', 0, 0, 0, 1, 0, 0, 0, 0, 0, 'rev08,rev07,rev06,rev05,rev04'),
(288, 'P250', 'Do not subject to grinding/shock/friction/â€¦', 0, 0, 0, 1, 0, 0, 0, 0, 0, 'rev08,rev07,rev06,rev05,rev04'),
(289, 'P251', 'Do not pierce or burn, even after use', 0, 0, 0, 1, 0, 0, 0, 0, 0, 'rev08,rev07,rev06,rev05,rev04'),
(290, 'P260', 'Do not breathe dust/fume/gas/mist/vapours/spray', 0, 0, 0, 1, 0, 0, 0, 0, 0, 'rev08,rev07,rev06,rev05,rev04'),
(291, 'P261', 'Avoid breathing dust/fume/gas/mist/vapours/spray', 0, 0, 0, 1, 0, 0, 0, 0, 0, 'rev08,rev07,rev06,rev05,rev04'),
(292, 'P262', 'Do not get in eyes, on skin, or on clothing', 0, 0, 0, 1, 0, 0, 0, 0, 0, 'rev08,rev07,rev06,rev05,rev04'),
(293, 'P263', 'Avoid contact during pregnancy and while nursing', 0, 0, 0, 1, 0, 0, 0, 0, 0, 'rev08,rev07,rev06,rev05,rev04'),
(294, 'P264', 'Wash ... thoroughly after handling', 0, 0, 0, 1, 0, 0, 0, 0, 0, 'rev08,rev07,rev06,rev05,rev04'),
(295, 'P270', 'Do not eat, drink or smoke when using this product', 0, 0, 0, 1, 0, 0, 0, 0, 0, 'rev08,rev07,rev06,rev05,rev04'),
(296, 'P271', 'Use only outdoors or in a well-ventilated area', 0, 0, 0, 1, 0, 0, 0, 0, 0, 'rev08,rev07,rev06,rev05,rev04'),
(297, 'P272', 'Contaminated work clothing should not be allowed out of the workplace', 0, 0, 0, 1, 0, 0, 0, 0, 0, 'rev08,rev07,rev06,rev05,rev04'),
(298, 'P273', 'Avoid release to the environment', 0, 0, 0, 1, 0, 0, 0, 0, 0, 'rev08,rev07,rev06,rev05,rev04'),
(299, 'P280', 'Wear protective gloves/protective clothing/eye protection/face protection/hearing protection/â€¦', 0, 0, 0, 1, 0, 0, 0, 0, 0, 'rev08,rev07,rev06,rev05,rev04'),
(301, 'P282', 'Wear cold insulating gloves and either face shield or eye protection', 0, 0, 0, 1, 0, 0, 0, 0, 0, 'rev08,rev07,rev06,rev05,rev04'),
(302, 'P283', 'Wear fire resistant or flame retardant clothing', 0, 0, 0, 1, 0, 0, 0, 0, 0, 'rev08,rev07,rev06,rev05,rev04'),
(303, 'P284', '[In case of inadequate ventilation] wear respiratory protection', 0, 0, 0, 1, 0, 0, 0, 0, 0, 'rev08,rev07,rev06,rev05,rev04'),
(305, 'P231 + P232', 'Handle and store contents under inert gas/â€¦ Protect from moisture', 0, 0, 0, 1, 0, 0, 0, 0, 0, 'rev08,rev07,rev06,rev05,rev04'),
(307, 'P301', 'IF SWALLOWED:', 0, 0, 0, 1, 0, 0, 0, 0, 0, 'rev08,rev07,rev06,rev05,rev04'),
(308, 'P302', 'IF ON SKIN:', 0, 0, 0, 1, 0, 0, 0, 0, 0, 'rev08,rev07,rev06,rev05,rev04'),
(309, 'P303', 'IF ON SKIN (or hair):', 0, 0, 0, 1, 0, 0, 0, 0, 0, 'rev08,rev07,rev06,rev05,rev04'),
(310, 'P304', 'IF INHALED:', 0, 0, 0, 1, 0, 0, 0, 0, 0, 'rev08,rev07,rev06,rev05,rev04'),
(311, 'P305', 'IF IN EYES:', 0, 0, 0, 1, 0, 0, 0, 0, 0, 'rev08,rev07,rev06,rev05,rev04'),
(312, 'P306', 'IF ON CLOTHING:', 0, 0, 0, 1, 0, 0, 0, 0, 0, 'rev08,rev07,rev06,rev05,rev04'),
(314, 'P308', 'IF exposed or concerned:', 0, 0, 0, 1, 0, 0, 0, 0, 0, 'rev08,rev07,rev06,rev05,rev04'),
(316, 'P310', 'Immediately call a POISON CENTER/doctor/...', 0, 0, 0, 1, 0, 0, 0, 0, 0, 'rev07,rev06,rev05,rev04'),
(317, 'P311', 'Call a POISON CENTER/doctor/...', 0, 0, 0, 1, 0, 0, 0, 0, 0, 'rev07,rev06,rev05,rev04'),
(318, 'P312', 'Call a POISON CENTER/doctor/... if you feel unwell', 0, 0, 0, 1, 0, 0, 0, 0, 0, 'rev07,rev06,rev05,rev04'),
(319, 'P313', 'Get medical advice/attention', 0, 0, 0, 1, 0, 0, 0, 0, 0, 'rev07,rev06,rev05,rev04'),
(320, 'P314', 'Get medical advice/attention if you feel unwell', 0, 0, 0, 1, 0, 0, 0, 0, 0, 'rev07,rev06,rev05,rev04'),
(321, 'P315', 'Get immediate medical advice/attention', 0, 0, 0, 1, 0, 0, 0, 0, 0, 'rev07,rev06,rev05,rev04'),
(322, 'P320', 'Specific treatment is urgent (see ... on this label)', 0, 0, 0, 1, 0, 0, 0, 0, 0, 'rev08,rev07,rev06,rev05,rev04'),
(323, 'P321', 'Specific treatment (see ... on this label)', 0, 0, 0, 1, 0, 0, 0, 0, 0, 'rev08,rev07,rev06,rev05,rev04'),
(325, 'P330', 'Rinse mouth', 0, 0, 0, 1, 0, 0, 0, 0, 0, 'rev08,rev07,rev06,rev05,rev04'),
(326, 'P331', 'Do NOT induce vomiting', 0, 0, 0, 1, 0, 0, 0, 0, 0, 'rev08,rev07,rev06,rev05,rev04'),
(327, 'P332', 'If skin irritation occurs:', 0, 0, 0, 1, 0, 0, 0, 0, 0, 'rev08,rev07,rev06,rev05,rev04'),
(328, 'P333', 'If skin irritation or rash occurs:', 0, 0, 0, 1, 0, 0, 0, 0, 0, 'rev08,rev07,rev06,rev05,rev04'),
(329, 'P334', 'Immerse in cool water [or wrap in wet bandages]', 0, 0, 0, 1, 0, 0, 0, 0, 0, 'rev08,rev07,rev06,rev05,rev04'),
(330, 'P335', 'Brush off loose particles from skin', 0, 0, 0, 1, 0, 0, 0, 0, 0, 'rev08,rev07,rev06,rev05,rev04'),
(331, 'P336', 'Immediately thaw frosted parts with lukewarm water. Do not rub affected area', 0, 0, 0, 1, 0, 0, 0, 0, 0, 'rev08,rev07,rev06,rev05,rev04'),
(332, 'P337', 'If eye irritation persists:', 0, 0, 0, 1, 0, 0, 0, 0, 0, 'rev08,rev07,rev06,rev05,rev04'),
(333, 'P338', 'Remove contact lenses, if present and easy to do. Continue rinsing', 0, 0, 0, 1, 0, 0, 0, 0, 0, 'rev08,rev07,rev06,rev05,rev04'),
(334, 'P340', 'Remove person to fresh air and keep comfortable for breathing', 0, 0, 0, 1, 0, 0, 0, 0, 0, 'rev08,rev07,rev06,rev05,rev04'),
(336, 'P342', 'If experiencing respiratory symptoms:', 0, 0, 0, 1, 0, 0, 0, 0, 0, 'rev08,rev07,rev06,rev05,rev04'),
(338, 'P351', 'Rinse cautiously with water for several minutes', 0, 0, 0, 1, 0, 0, 0, 0, 0, 'rev08,rev07,rev06,rev05,rev04'),
(339, 'P352', 'Wash with plenty of water/...', 0, 0, 0, 1, 0, 0, 0, 0, 0, 'rev08,rev07,rev06,rev05,rev04'),
(340, 'P353', 'Rinse affected areas with water [or shower]', 0, 0, 0, 1, 0, 0, 0, 0, 0, 'rev08,rev07,rev06,rev05,rev04'),
(341, 'P360', 'Rinse immediately contaminated clothing and skin with plenty of water before removing clothes', 0, 0, 0, 1, 0, 0, 0, 0, 0, 'rev08,rev07,rev06,rev05,rev04'),
(342, 'P361', 'Take off immediately all contaminated clothing', 0, 0, 0, 1, 0, 0, 0, 0, 0, 'rev08,rev07,rev06,rev05,rev04'),
(343, 'P362', 'Take off contaminated clothing', 0, 0, 0, 1, 0, 0, 0, 0, 0, 'rev08,rev07,rev06,rev05,rev04'),
(344, 'P363', 'Wash contaminated clothing before reuse', 0, 0, 0, 1, 0, 0, 0, 0, 0, 'rev08,rev07,rev06,rev05,rev04'),
(345, 'P370', 'In case of fire:', 0, 0, 0, 1, 0, 0, 0, 0, 0, 'rev08,rev07,rev06,rev05,rev04'),
(346, 'P371', 'In case of major fire and large quantities:', 0, 0, 0, 1, 0, 0, 0, 0, 0, 'rev08,rev07,rev06,rev05,rev04'),
(347, 'P372', 'Explosion risk', 0, 0, 0, 1, 0, 0, 0, 0, 0, 'rev08,rev07,rev06,rev05,rev04'),
(348, 'P373', 'DO NOT fight fire when fire reaches explosives', 0, 0, 0, 1, 0, 0, 0, 0, 0, 'rev08,rev07,rev06,rev05,rev04'),
(350, 'P375', 'Fight fire remotely due to the risk of explosion', 0, 0, 0, 1, 0, 0, 0, 0, 0, 'rev08,rev07,rev06,rev05,rev04'),
(351, 'P376', 'Stop leak if safe to do so', 0, 0, 0, 1, 0, 0, 0, 0, 0, 'rev08,rev07,rev06,rev05,rev04'),
(352, 'P377', 'Leaking gas fire: Do not extinguish, unless leak can be stopped safely', 0, 0, 0, 1, 0, 0, 0, 0, 0, 'rev08,rev07,rev06,rev05,rev04'),
(353, 'P378', 'Use ... to extinguish', 0, 0, 0, 1, 0, 0, 0, 0, 0, 'rev08,rev07,rev06,rev05,rev04'),
(354, 'P380', 'Evacuate area', 0, 0, 0, 1, 0, 0, 0, 0, 0, 'rev08,rev07,rev06,rev05,rev04'),
(355, 'P381', 'In case of leakage, eliminate all ignition sources', 0, 0, 0, 1, 0, 0, 0, 0, 0, 'rev08,rev07,rev06,rev05,rev04'),
(356, 'P391', 'Collect spillage', 0, 0, 0, 1, 0, 0, 0, 0, 0, 'rev08,rev07,rev06,rev05,rev04'),
(357, 'P301 + P310', 'IF SWALLOWED: Immediately call a POISON CENTER/doctor/...', 0, 0, 0, 1, 0, 0, 0, 0, 0, 'rev07,rev06,rev05,rev04'),
(358, 'P301 + P312', 'IF SWALLOWED: Call a POISON CENTER/doctor/... if you feel unwell', 0, 0, 0, 1, 0, 0, 0, 0, 0, 'rev07,rev06,rev05,rev04'),
(359, 'P301 + P330 + P331', 'IF SWALLOWED: Rinse mouth. Do NOT induce vomiting', 0, 0, 0, 1, 0, 0, 0, 0, 0, 'rev08,rev07,rev06,rev05,rev04'),
(360, 'P302 + P334', 'IF ON SKIN: Immerse in cool water or wrap in wet bandages.', 0, 0, 0, 1, 0, 0, 0, 0, 0, 'rev08,rev07,rev06,rev05,rev04'),
(362, 'P302 + P352', 'IF ON SKIN: Wash with plenty of water/...', 0, 0, 0, 1, 0, 0, 0, 0, 0, 'rev08,rev07,rev06,rev05,rev04'),
(363, 'P303 + P361 + P353', 'IF ON SKIN (or hair): Take off immediately all contaminated clothing. Rinse affected areas with water [or shower]', 0, 0, 0, 1, 0, 0, 0, 0, 0, 'rev08,rev07,rev06,rev05,rev04'),
(364, 'P304 + P312', 'IF INHALED: Call a POISON CENTER/doctor/... if you feel unwell', 0, 0, 0, 1, 0, 0, 0, 0, 0, 'rev07,rev06,rev05,rev04'),
(365, 'P304 + P340', 'IF INHALED: Remove person to fresh air and keep comfortable for breathing', 0, 0, 0, 1, 0, 0, 0, 0, 0, 'rev08,rev07,rev06,rev05,rev04'),
(367, 'P305 + P351 + P338', 'IF IN EYES: Rinse cautiously with water for several minutes. Remove contact lenses, if present and easy to do. Continue rinsing', 0, 0, 0, 1, 0, 0, 0, 0, 0, 'rev08,rev07,rev06,rev05,rev04'),
(368, 'P306 + P360', 'IF ON CLOTHING: Rinse immediately contaminated clothing and skin with plenty of water before removing clothes', 0, 0, 0, 1, 0, 0, 0, 0, 0, 'rev08,rev07,rev06,rev05,rev04'),
(370, 'P308 + P313', 'IF exposed or concerned: Get medical advice/attention', 0, 0, 0, 1, 0, 0, 0, 0, 0, 'rev07,rev06,rev05,rev04'),
(372, 'P332 + P313', 'If skin irritation occurs: Get medical advice/attention', 0, 0, 0, 1, 0, 0, 0, 0, 0, 'rev07,rev06,rev05,rev04'),
(373, 'P333 + P313', 'If skin irritation or rash occurs: Get medical advice/attention', 0, 0, 0, 1, 0, 0, 0, 0, 0, 'rev07,rev06,rev05,rev04'),
(375, 'P337 + P313', 'If eye irritation persists:  Get medical advice/attention', 0, 0, 0, 1, 0, 0, 0, 0, 0, 'rev07,rev06,rev05,rev04'),
(376, 'P342 + P311', 'If experiencing respiratory symptoms:  Call a POISON CENTER/doctor/... ', 0, 0, 0, 1, 0, 0, 0, 0, 0, 'rev07,rev06,rev05,rev04'),
(377, 'P370 + P376', 'In case of fire: Stop leak if safe to do so', 0, 0, 0, 1, 0, 0, 0, 0, 0, 'rev08,rev07,rev06,rev05,rev04'),
(378, 'P370 + P378', 'In case of fire: Use ... to extinguish', 0, 0, 0, 1, 0, 0, 0, 0, 0, 'rev08,rev07,rev06,rev05,rev04'),
(380, 'P370 + P380 + P375', 'In case of fire: Evacuate area. Fight fire remotely due to the risk of explosion', 0, 0, 0, 1, 0, 0, 0, 0, 0, 'rev08,rev07,rev06,rev05,rev04'),
(381, 'P371 + P380 + P375', 'In case of major fire and large quantities: Evacuate area. Fight fire remotely due to the risk of explosion', 0, 0, 0, 1, 0, 0, 0, 0, 0, 'rev08,rev07,rev06,rev05,rev04'),
(382, 'P401', 'Store in accordance with ...', 0, 0, 0, 1, 0, 0, 0, 0, 0, 'rev08,rev07,rev06,rev05,rev04'),
(383, 'P402', 'Store in a dry place', 0, 0, 0, 1, 0, 0, 0, 0, 0, 'rev08,rev07,rev06,rev05,rev04'),
(384, 'P403', 'Store in a well-ventilated place', 0, 0, 0, 1, 0, 0, 0, 0, 0, 'rev08,rev07,rev06,rev05,rev04'),
(385, 'P404', 'Store in a closed container', 0, 0, 0, 1, 0, 0, 0, 0, 0, 'rev08,rev07,rev06,rev05,rev04'),
(386, 'P405', 'Store locked up', 0, 0, 0, 1, 0, 0, 0, 0, 0, 'rev08,rev07,rev06,rev05,rev04'),
(387, 'P406', 'Store in a corrosion resistant/... container with a resistant inner liner', 0, 0, 0, 1, 0, 0, 0, 0, 0, 'rev08,rev07,rev06,rev05,rev04'),
(388, 'P407', 'Maintain air gap between stacks or pallets', 0, 0, 0, 1, 0, 0, 0, 0, 0, 'rev08,rev07,rev06,rev05,rev04'),
(389, 'P410', 'Protect from sunlight', 0, 0, 0, 1, 0, 0, 0, 0, 0, 'rev08,rev07,rev06,rev05,rev04'),
(390, 'P411', 'Store at temperatures not exceeding ... Â°C/... Â°F', 0, 0, 0, 1, 0, 0, 0, 0, 0, 'rev08,rev07,rev06,rev05,rev04'),
(391, 'P412', 'Do not expose to temperatures exceeding 50 Â°C/122 Â°F', 0, 0, 0, 1, 0, 0, 0, 0, 0, 'rev08,rev07,rev06,rev05,rev04'),
(392, 'P420', 'Store separately', 0, 0, 0, 1, 0, 0, 0, 0, 0, 'rev08,rev07,rev06,rev05,rev04'),
(394, 'P402 + P404', 'Store in a dry place. Store in a closed container', 0, 0, 0, 1, 0, 0, 0, 0, 0, 'rev08,rev07,rev06,rev05,rev04'),
(395, 'P403 + P233', 'Store in a well-ventilated place. Keep container tightly closed', 0, 0, 0, 1, 0, 0, 0, 0, 0, 'rev08,rev07,rev06,rev05,rev04'),
(396, 'P403 + P235', 'Store in a well-ventilated place. Keep cool', 0, 0, 0, 1, 0, 0, 0, 0, 0, 'rev08,rev07,rev06,rev05,rev04'),
(397, 'P410 + P403', 'Protect from sunlight. Store in a well-ventilated place', 0, 0, 0, 1, 0, 0, 0, 0, 0, 'rev08,rev07,rev06,rev05,rev04'),
(398, 'P410 + P412', 'Protect from sunlight. Do not expose to temperatures exceeding 50 Â°C/122 Â°F', 0, 0, 0, 1, 0, 0, 0, 0, 0, 'rev08,rev07,rev06,rev05,rev04'),
(400, 'P501', 'Dispose of contents/container to ...', 0, 0, 0, 1, 0, 0, 0, 0, 0, 'rev08,rev07,rev06,rev05,rev04'),
(401, 'EUH001', 'Explosive when dry', 0, 0, 0, 0, 1, 0, 0, 0, 0, ''),
(402, 'EUH006', 'Explosive with or without contact with air', 0, 0, 0, 0, 1, 0, 0, 0, 0, ''),
(403, 'EUH014', 'Reacts violently with water', 0, 0, 0, 0, 1, 0, 0, 0, 0, ''),
(404, 'EUH018', 'In use may form flammable/explosive vapour-air mixture', 0, 0, 0, 0, 1, 0, 0, 0, 0, ''),
(405, 'EUH019', 'May form explosive peroxides', 0, 0, 0, 0, 1, 0, 0, 0, 0, ''),
(406, 'EUH044', 'Risk of explosion if heated under confinement', 0, 0, 0, 0, 1, 0, 0, 0, 0, ''),
(407, 'EUH029', 'Contact with water liberates toxic gas', 0, 0, 0, 0, 1, 0, 0, 0, 0, ''),
(408, 'EUH031', 'Contact with acids liberates toxic gas', 0, 0, 0, 0, 1, 0, 0, 0, 0, ''),
(409, 'EUH032', 'Contact with acids liberates very toxic gas', 0, 0, 0, 0, 1, 0, 0, 0, 0, ''),
(410, 'EUH066', 'Repeated exposure may cause skin dryness or cracking', 0, 0, 0, 0, 1, 0, 0, 0, 0, ''),
(411, 'EUH070', 'Toxic by eye contact', 0, 0, 0, 0, 1, 0, 0, 0, 0, ''),
(412, 'EUH071', 'Corrosive to the respiratory tract', 0, 0, 0, 0, 1, 0, 0, 0, 0, ''),
(413, 'EUH201', 'Contains lead. Should not be used on surfaces liable to be chewed or sucked by children.', 0, 0, 0, 0, 1, 0, 0, 0, 0, ''),
(414, 'EUH201A', 'Warning! Contains lead.', 0, 0, 0, 0, 1, 0, 0, 0, 0, ''),
(415, 'EUH202', 'Cyanoacrylate. Danger. Bonds skin and eyes in seconds. Keep out of the reach of children.', 0, 0, 0, 0, 1, 0, 0, 0, 0, ''),
(416, 'EUH203', 'Contains chromium (VI). May produce an allergic reaction.', 0, 0, 0, 0, 1, 0, 0, 0, 0, ''),
(417, 'EUH204', 'Contains isocyanates. May produce an allergic reaction.', 0, 0, 0, 0, 1, 0, 0, 0, 0, ''),
(418, 'EUH205', 'Contains epoxy constituents. May produce an allergic reaction.', 0, 0, 0, 0, 1, 0, 0, 0, 0, ''),
(419, 'EUH206', 'Warning! Do not use together with other products. May release dangerous gases (chlorine).', 0, 0, 0, 0, 1, 0, 0, 0, 0, ''),
(420, 'EUH207', 'Warning! Contains cadmium. Dangerous fumes are formed during use. See information supplied by the manufacturer. Comply with the safety instructions.', 0, 0, 0, 0, 1, 0, 0, 0, 0, ''),
(421, 'EUH208', 'Contains (name of sensitising substance). May produce an allergic reaction.', 0, 0, 0, 0, 1, 0, 0, 0, 0, ''),
(422, 'EUH209', 'Can become highly flammable in use.', 0, 0, 0, 0, 1, 0, 0, 0, 0, ''),
(423, 'EUH209A', 'Can become flammable in use.', 0, 0, 0, 0, 1, 0, 0, 0, 0, ''),
(424, 'EUH210', 'Safety data sheet available on request.', 0, 0, 0, 0, 1, 0, 0, 0, 0, ''),
(425, 'EUH401', 'To avoid risks to human health and the environment, comply with the instructions for use.', 0, 0, 0, 0, 1, 0, 0, 0, 0, ''),
(1000, '0', 'Normal Material', 0, 0, 0, 0, 0, 1, 0, 0, 0, ''),
(1001, '1', 'Slightly Hazardous', 0, 0, 0, 0, 0, 1, 0, 0, 0, ''),
(1002, '2', 'Hazardous', 0, 0, 0, 0, 0, 1, 0, 0, 0, ''),
(1003, '3', 'Extreme Danger', 0, 0, 0, 0, 0, 1, 0, 0, 0, ''),
(1004, '4', 'Deadly', 0, 0, 0, 0, 0, 1, 0, 0, 0, ''),
(1005, '0', 'Will Not Burn', 0, 0, 0, 0, 0, 0, 1, 0, 0, ''),
(1006, '1', 'Above 200Â°F', 0, 0, 0, 0, 0, 0, 1, 0, 0, ''),
(1007, '2', 'Between 100Â°F and 200Â°F', 0, 0, 0, 0, 0, 0, 1, 0, 0, ''),
(1008, '3', 'Below 100Â°F', 0, 0, 0, 0, 0, 0, 1, 0, 0, ''),
(1009, '4', 'Below 73Â°F', 0, 0, 0, 0, 0, 0, 1, 0, 0, ''),
(1010, '0', 'Stable', 0, 0, 0, 0, 0, 0, 0, 1, 0, ''),
(1011, '1', 'Unstable If Heated', 0, 0, 0, 0, 0, 0, 0, 1, 0, ''),
(1012, '2', 'Violent Chemical Change', 0, 0, 0, 0, 0, 0, 0, 1, 0, ''),
(1013, '3', 'Stock/Heat May Detonate', 0, 0, 0, 0, 0, 0, 0, 1, 0, ''),
(1014, '4', 'May Detonate', 0, 0, 0, 0, 0, 0, 0, 1, 0, ''),
(1015, '', 'Blank', 0, 0, 0, 0, 0, 0, 0, 0, 1, ''),
(1016, 'OX', 'Oxidizer', 0, 0, 0, 0, 0, 0, 0, 0, 1, ''),
(1017, '-W-', 'Reacts With Water', 0, 0, 0, 0, 0, 0, 0, 0, 1, ''),
(1018, 'SA', 'Simple Asphyxiant', 0, 0, 0, 0, 0, 0, 0, 0, 1, ''),
(1019, 'COR', 'Corrosive', 0, 0, 0, 0, 0, 0, 0, 0, 1, ''),
(1020, 'ALK', 'Alkaline', 0, 0, 0, 0, 0, 0, 0, 0, 1, ''),
(1021, 'ACID', 'Acid', 0, 0, 0, 0, 0, 0, 0, 0, 1, ''),
(1022, 'BIO', 'Biological Hazard', 0, 0, 0, 0, 0, 0, 0, 0, 1, ''),
(1023, 'POI', 'Poisonous', 0, 0, 0, 0, 0, 0, 0, 0, 1, ''),
(1024, 'RAD', 'Radioactive', 0, 0, 0, 0, 0, 0, 0, 0, 1, ''),
(1025, 'CRYO', 'Cryogenic', 0, 0, 0, 0, 0, 0, 0, 0, 1, ''),
(1026, 'H206', 'Fire, blast or projection hazard; increased risk of explosion if desensitizing agent is reduced', 0, 0, 1, 0, 0, 0, 0, 0, 0, 'rev08,rev07,rev06'),
(1027, 'H207', 'Fire or projection hazard; increased risk of explosion if desensitizing agent is reduced', 0, 0, 1, 0, 0, 0, 0, 0, 0, 'rev08,rev07,rev06'),
(1028, 'H208', 'Fire hazard; increased risk of explosion if desensitizing agent is reduced', 0, 0, 1, 0, 0, 0, 0, 0, 0, 'rev08,rev07,rev06'),
(1029, 'H229', 'Pressurized container: may burst if heated', 0, 0, 1, 0, 0, 0, 0, 0, 0, 'rev08,rev07,rev06,rev05,rev04'),
(1030, 'H230', 'May react explosively even in the absence of air', 0, 0, 1, 0, 0, 0, 0, 0, 0, 'rev08,rev07,rev06,rev05,rev04'),
(1031, 'H231', 'May react explosively even in the absence of air at elevated pressure and/or temperature', 0, 0, 1, 0, 0, 0, 0, 0, 0, 'rev08,rev07,rev06,rev05,rev04'),
(1032, 'H232', 'May ignite spontaneously if exposed to air', 0, 0, 1, 0, 0, 0, 0, 0, 0, 'rev08,rev07,rev06'),
(1033, 'H420', 'Harms public health and the environment by destroying ozone in the upper atmosphere', 0, 0, 1, 0, 0, 0, 0, 0, 0, 'rev08,rev07,rev06,rev05,rev04'),
(1034, 'P101', 'If medical advice is needed, have product container or label at hand', 0, 0, 0, 1, 0, 0, 0, 0, 0, 'rev08,rev07,rev06,rev05,rev04'),
(1035, 'P102', 'Keep out of reach of children', 0, 0, 0, 1, 0, 0, 0, 0, 0, 'rev08,rev07,rev06,rev05,rev04'),
(1036, 'P103', 'Read carefully and follow all instructions', 0, 0, 0, 1, 0, 0, 0, 0, 0, 'rev08,rev07,rev06,rev05,rev04'),
(1037, 'H300 + H310', 'Fatal if swallowed or in contact with skin', 0, 0, 1, 0, 0, 0, 0, 0, 0, 'rev08,rev07,rev06,rev05,rev04'),
(1038, 'H300 + H330 ', 'Fatal if swallowed or if inhaled', 0, 0, 1, 0, 0, 0, 0, 0, 0, 'rev08,rev07,rev06,rev05,rev04'),
(1039, 'H310 + H330', 'Fatal in contact with skin or if inhaled', 0, 0, 1, 0, 0, 0, 0, 0, 0, 'rev08,rev07,rev06,rev05,rev04'),
(1040, 'H300 + H310 + H330', 'Fatal if swallowed, in contact with skin or if inhaled', 0, 0, 1, 0, 0, 0, 0, 0, 0, 'rev08,rev07,rev06,rev05,rev04');
INSERT INTO `risk_safety` (`risk_id`, `code`, `description`, `risk`, `safety`, `danger`, `advice`, `properties`, `NFPA_H`, `NFPA_F`, `NFPA_R`, `NFPA_S`, `GHSversion`) VALUES
(1041, 'H301 + H311', 'Toxic if swallowed or in contact with skin', 0, 0, 1, 0, 0, 0, 0, 0, 0, 'rev08,rev07,rev06,rev05,rev04'),
(1042, 'H301 + H331', 'Toxic if swallowed or if inhaled', 0, 0, 1, 0, 0, 0, 0, 0, 0, 'rev08,rev07,rev06,rev05,rev04'),
(1043, 'H311 + H331', 'Toxic in contact with skin or if inhaled', 0, 0, 1, 0, 0, 0, 0, 0, 0, 'rev08,rev07,rev06,rev05,rev04'),
(1044, 'H301 + H311 + H331', 'Toxic if swallowed, in contact with skin or if inhaled', 0, 0, 1, 0, 0, 0, 0, 0, 0, 'rev08,rev07,rev06,rev05,rev04'),
(1045, 'H302 + H312', 'Harmful if swallowed or in contact with skin', 0, 0, 1, 0, 0, 0, 0, 0, 0, 'rev08,rev07,rev06,rev05,rev04'),
(1046, 'H302 + H332', 'Harmful if swallowed or if inhaled', 0, 0, 1, 0, 0, 0, 0, 0, 0, 'rev08,rev07,rev06,rev05,rev04'),
(1047, 'H312 + H332', 'Harmful in contact with skin or if inhaled', 0, 0, 1, 0, 0, 0, 0, 0, 0, 'rev08,rev07,rev06,rev05,rev04'),
(1048, 'H302 + H312 + H332', 'Harmful if swallowed, in contact with skin or if inhaled', 0, 0, 1, 0, 0, 0, 0, 0, 0, 'rev08,rev07,rev06,rev05,rev04'),
(1049, 'H303 + H313', 'May be harmful if swallowed or in contact with skin', 0, 0, 1, 0, 0, 0, 0, 0, 0, 'rev08,rev07,rev06,rev05,rev04'),
(1050, 'H303 + H333', 'May be harmful if swallowed or if inhaled', 0, 0, 1, 0, 0, 0, 0, 0, 0, 'rev08,rev07,rev06,rev05,rev04'),
(1051, 'H313 + H333', 'May be harmful in contact with skin or if inhaled', 0, 0, 1, 0, 0, 0, 0, 0, 0, 'rev08,rev07,rev06,rev05,rev04'),
(1052, 'H303 + H313 + H333', 'May be harmful if swallowed, in contact with skin or if inhaled', 0, 0, 1, 0, 0, 0, 0, 0, 0, 'rev08,rev07,rev06,rev05,rev04'),
(1053, 'H315 + H320', 'Causes skin and eye irritation', 0, 0, 1, 0, 0, 0, 0, 0, 0, 'rev08,rev07,rev06,rev05,rev04'),
(1054, 'P212', 'Avoid heating under confinement or reduction of the desensitizing agent', 0, 0, 0, 1, 0, 0, 0, 0, 0, 'rev08,rev07,rev06'),
(1055, 'P302 + P335 + P334', 'IF ON SKIN: Brush off loose particles from skin. Immerse in cool water [or wrap in wet bandages]', 0, 0, 0, 1, 0, 0, 0, 0, 0, 'rev08,rev07,rev06,rev05'),
(1056, 'P308 + P311', 'IF exposed or concerned:  Call a POISON CENTER/doctor/... ', 0, 0, 0, 1, 0, 0, 0, 0, 0, 'rev07,rev06,rev05,rev04'),
(1057, 'P336 + P315', 'Thaw frosted parts with lukewarm water. Do not rub affected area. Get immediate medical advice/attention ', 0, 0, 0, 1, 0, 0, 0, 0, 0, 'rev07,rev06,rev05'),
(1058, 'P361 + P364', 'Take off immediately all contaminated clothing and wash it before reuse', 0, 0, 0, 1, 0, 0, 0, 0, 0, 'rev08,rev07,rev06,rev05,rev04'),
(1059, 'P362 + P364', 'Take off contaminated clothing and wash it before reuse', 0, 0, 0, 1, 0, 0, 0, 0, 0, 'rev08,rev07,rev06,rev05,rev04'),
(1060, 'P364', 'And wash it before reuse', 0, 0, 0, 1, 0, 0, 0, 0, 0, 'rev08,rev07,rev06,rev05,rev04'),
(1061, 'P370 + P372 + P380 + P373', 'In case of fire: Explosion risk. Evacuate area. Do not Fight fire when fire reaches explosives', 0, 0, 0, 1, 0, 0, 0, 0, 0, 'rev08,rev07,rev06,rev05'),
(1062, 'P370 + P380 + P375 [+ P378]', 'In case of fire: Evacuate area.  Fight fire remotely due to the risk of explosion. [Use...to extinguish]', 0, 0, 0, 1, 0, 0, 0, 0, 0, 'rev08,rev07,rev06,rev05'),
(1063, 'P390', 'Absorb spillage to prevent material damage', 0, 0, 0, 1, 0, 0, 0, 0, 0, 'rev08,rev07,rev06,rev05,rev04'),
(1064, 'P413', 'Store bulk masses greater than ... kg/...lbs at temperatures not exceeding ...Â°C/...Â°F', 0, 0, 0, 1, 0, 0, 0, 0, 0, 'rev08,rev07,rev06,rev05,rev04'),
(1065, 'P502', 'Refer to manufacturer or supplier for information on recovery or recycling ', 0, 0, 0, 1, 0, 0, 0, 0, 0, 'rev08,rev07,rev06,rev05,rev04'),
(1066, 'H282', 'Extremely flammable chemical under pressure: May explode if heated', 0, 0, 1, 0, 0, 0, 0, 0, 0, 'rev08'),
(1067, 'H283', 'Flammable chemical under pressure: May explode if heated', 0, 0, 1, 0, 0, 0, 0, 0, 0, 'rev08'),
(1068, 'H284', 'Chemical under pressure: May explode if heated', 0, 0, 1, 0, 0, 0, 0, 0, 0, 'rev08'),
(1069, 'P203', 'Obtain, read and follow all safety instructions before use', 0, 0, 0, 1, 0, 0, 0, 0, 0, 'rev08'),
(1070, 'P221', 'Take any precaution to avoid mixing with combustibles/â€¦', 0, 0, 0, 1, 0, 0, 0, 0, 0, 'rev04'),
(1071, 'P235 + P410', 'Keep cool.  Protect from sunlight', 0, 0, 0, 1, 0, 0, 0, 0, 0, 'rev04'),
(1072, 'P316', 'Get emergency medical help immediately', 0, 0, 0, 1, 0, 0, 0, 0, 0, 'rev08'),
(1073, 'P317', 'Get medical help', 0, 0, 0, 1, 0, 0, 0, 0, 0, 'rev08'),
(1074, 'P318', 'IF exposed or concerned, get medical advice', 0, 0, 0, 1, 0, 0, 0, 0, 0, 'rev08'),
(1075, 'P319', 'Get medical help if you feel unwell', 0, 0, 0, 1, 0, 0, 0, 0, 0, 'rev08'),
(1076, 'P354', 'Immediately rinse with water for several minutes', 0, 0, 0, 1, 0, 0, 0, 0, 0, 'rev08'),
(1077, 'P374', 'Fight fire with normal precautions from a reasonable distance', 0, 0, 0, 1, 0, 0, 0, 0, 0, 'rev04'),
(1078, 'P301 + P316', 'IF SWALLOWED: Get emergency medical help immediately', 0, 0, 0, 1, 0, 0, 0, 0, 0, 'rev08'),
(1079, 'P301 + P317 ', 'IF SWALLOWED: Get medical help', 0, 0, 0, 1, 0, 0, 0, 0, 0, 'rev08'),
(1080, 'P304 + P317', 'IF INHALED: Get medical help', 0, 0, 0, 1, 0, 0, 0, 0, 0, 'rev08'),
(1081, 'P308 + P316', 'IF exposed or concerned: Get emergency medical help immediately', 0, 0, 0, 1, 0, 0, 0, 0, 0, 'rev08'),
(1082, 'P332 + P317', 'IF SKIN irritation occurs: Get medical help', 0, 0, 0, 1, 0, 0, 0, 0, 0, 'rev08'),
(1083, 'P333 + P317', 'IF SKIN irritation or rash occurs: Get medical help', 0, 0, 0, 1, 0, 0, 0, 0, 0, 'rev08'),
(1084, 'P335 + P334', 'Brush off loose particles from skin. Immerse in cool water/wrap in wet bandages', 0, 0, 0, 1, 0, 0, 0, 0, 0, 'rev04'),
(1085, 'P336 + P317', 'Immediately thaw frosted parts with lukewarm water. Do not rub affected area. Get medical help', 0, 0, 0, 1, 0, 0, 0, 0, 0, 'rev08'),
(1086, 'P337 + P317', 'IF eye irritation persists: Get medical help', 0, 0, 0, 1, 0, 0, 0, 0, 0, 'rev08'),
(1087, 'P342 + P316', 'IF experiencing respiratory symptoms: Get emergency medical help immediately', 0, 0, 0, 1, 0, 0, 0, 0, 0, 'rev08'),
(1088, 'P370 + P380', 'In case of fire:  Evacuate area', 0, 0, 0, 1, 0, 0, 0, 0, 0, 'rev04'),
(1089, 'P305 + P354 + P338', 'IF IN EYES: Immediately rinse with water for several minutes. Remove contact lenses, if present and easy to do. Continue rinsing', 0, 0, 0, 1, 0, 0, 0, 0, 0, 'rev08'),
(1090, 'P422', 'Store contents underâ€¦', 0, 0, 0, 1, 0, 0, 0, 0, 0, 'rev04'),
(1091, 'P411  +  P235', 'Store at temperatures not exceeding ...Â°C/...Â°F.  Keep cool', 0, 0, 0, 1, 0, 0, 0, 0, 0, 'rev04'),
(1092, 'P503', 'Refer to manufacturer/supplier... for information on disposal/recovery/recycling', 0, 0, 0, 1, 0, 0, 0, 0, 0, 'rev08,rev07'),
(1093, 'EUH059', 'Hazardous to the ozone layer', 0, 0, 0, 0, 1, 0, 0, 0, 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `samples`
--

CREATE TABLE `samples` (
  `count` int UNSIGNED NOT NULL,
  `label` varchar(100) DEFAULT NULL,
  `comments` longtext,
  `date_created` datetime DEFAULT NULL,
  `date_updated` datetime DEFAULT NULL,
  `sample_type` int UNSIGNED DEFAULT NULL,
  `origin` varchar(200) DEFAULT NULL,
  `org` int UNSIGNED DEFAULT NULL,
  `volume` varchar(50) DEFAULT NULL,
  `volume_unit` varchar(25) DEFAULT NULL,
  `unique_code` varchar(50) DEFAULT NULL,
  `main_operator` int UNSIGNED DEFAULT NULL,
  `box_id` int UNSIGNED DEFAULT NULL,
  `box_details` text,
  `box_status` tinyint DEFAULT NULL,
  `box_status_data` text,
  `st_counter` int DEFAULT NULL,
  `st_date_limit` date DEFAULT NULL,
  `st_days_before_limit` tinyint UNSIGNED DEFAULT NULL,
  `st_defrost_counter` int UNSIGNED DEFAULT NULL,
  `wait` tinyint UNSIGNED DEFAULT '0',
  `secret` tinyint UNSIGNED DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sample_types_def`
--

CREATE TABLE `sample_types_def` (
  `count` tinyint UNSIGNED NOT NULL,
  `sample_type_name` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sellers`
--

CREATE TABLE `sellers` (
  `seller_id` int UNSIGNED NOT NULL,
  `seller_name` varchar(75) DEFAULT NULL,
  `seller_address` varchar(150) DEFAULT NULL,
  `seller_tel` varchar(35) DEFAULT NULL,
  `seller_fax` varchar(35) DEFAULT NULL,
  `seller_email` varchar(125) DEFAULT NULL,
  `seller_url` blob
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sequences`
--

CREATE TABLE `sequences` (
  `count` int UNSIGNED NOT NULL,
  `label` varchar(100) DEFAULT NULL,
  `features` longtext,
  `sequence` longtext,
  `type` varchar(25) DEFAULT NULL,
  `date_created` datetime DEFAULT NULL,
  `date_updated` datetime DEFAULT NULL,
  `keeper` int UNSIGNED DEFAULT NULL,
  `wait` tinyint UNSIGNED DEFAULT '0',
  `secret` tinyint UNSIGNED DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sequences_genbank_annots`
--

CREATE TABLE `sequences_genbank_annots` (
  `id` int NOT NULL,
  `count` int NOT NULL DEFAULT '0',
  `label` varchar(50) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `start` int DEFAULT NULL,
  `stop` int DEFAULT NULL,
  `sens` tinyint(1) DEFAULT NULL,
  `hide` smallint DEFAULT NULL,
  `color` varchar(10) DEFAULT NULL,
  `plasmid_id` int DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sequence_files`
--

CREATE TABLE `sequence_files` (
  `id` int UNSIGNED NOT NULL,
  `seq_id` int UNSIGNED DEFAULT NULL,
  `seq_file` varchar(150) DEFAULT NULL,
  `title` varchar(250) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `setup_prefs`
--

CREATE TABLE `setup_prefs` (
  `id` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `login_pref` tinyint(1) DEFAULT '1',
  `login_block` tinyint UNSIGNED DEFAULT NULL,
  `lab_name` varchar(100) DEFAULT NULL,
  `lab_logo` varchar(150) DEFAULT NULL,
  `results_per_page` int UNSIGNED DEFAULT '10',
  `icon1_name` varchar(25) DEFAULT NULL,
  `icon1_url` tinytext,
  `icon1_img` varchar(50) DEFAULT NULL,
  `icon2_name` varchar(25) DEFAULT NULL,
  `icon2_url` tinytext,
  `icon2_img` varchar(50) DEFAULT NULL,
  `icon3_name` varchar(25) DEFAULT NULL,
  `icon3_url` tinytext,
  `icon3_img` varchar(50) DEFAULT NULL,
  `icon4_name` varchar(25) DEFAULT NULL,
  `icon4_url` tinytext,
  `icon4_img` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `setup_prefs`
--

INSERT INTO `setup_prefs` (`id`, `login_pref`, `login_block`, `lab_name`, `lab_logo`, `results_per_page`, `icon1_name`, `icon1_url`, `icon1_img`, `icon2_name`, `icon2_url`, `icon2_img`, `icon3_name`, `icon3_url`, `icon3_img`, `icon4_name`, `icon4_url`, `icon4_img`) VALUES
(0, 1, NULL, 'Shen Lab', NULL, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `signatures`
--

CREATE TABLE `signatures` (
  `signature_id` int NOT NULL,
  `record_id` int NOT NULL,
  `module` varchar(50) DEFAULT NULL,
  `user_id` int NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `signature` blob NOT NULL,
  `expiration` datetime DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL,
  `type` varchar(10) DEFAULT NULL,
  `certificate_id` int DEFAULT NULL,
  `user_name` varchar(250) DEFAULT NULL,
  `history_id` int DEFAULT NULL,
  `sign_reason` mediumtext,
  `version_id` int DEFAULT NULL,
  `version_number` int DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `storage_facilities`
--

CREATE TABLE `storage_facilities` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(35) DEFAULT NULL,
  `description` varchar(250) DEFAULT NULL,
  `group_id` int DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `strains`
--

CREATE TABLE `strains` (
  `count` int UNSIGNED NOT NULL,
  `number` varchar(50) DEFAULT NULL,
  `name` varchar(150) DEFAULT NULL,
  `genotype` text,
  `origin` longtext,
  `org` int DEFAULT NULL,
  `org2` int UNSIGNED DEFAULT NULL,
  `keeper` int DEFAULT NULL,
  `box_id` int UNSIGNED DEFAULT NULL,
  `box_details` text,
  `box_status` tinyint DEFAULT NULL,
  `box_status_data` text,
  `st_counter` int DEFAULT NULL,
  `st_date_limit` date DEFAULT NULL,
  `st_days_before_limit` tinyint UNSIGNED DEFAULT NULL,
  `st_defrost_counter` int UNSIGNED DEFAULT NULL,
  `date_created` datetime DEFAULT NULL,
  `date_updated` datetime DEFAULT NULL,
  `volume` varchar(50) DEFAULT NULL,
  `volume_unit` varchar(25) DEFAULT NULL,
  `unique_code` varchar(50) DEFAULT NULL,
  `wait` tinyint UNSIGNED DEFAULT '0',
  `secret` tinyint UNSIGNED DEFAULT '0',
  `chem_id_child` int UNSIGNED DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `strains_log`
--

CREATE TABLE `strains_log` (
  `count` int UNSIGNED NOT NULL,
  `strain_id` int UNSIGNED DEFAULT NULL,
  `date` date DEFAULT NULL,
  `action` varchar(50) DEFAULT NULL,
  `operator` int UNSIGNED DEFAULT NULL,
  `comments` text,
  `lock_entry` tinyint UNSIGNED DEFAULT '0',
  `extra1` varchar(50) DEFAULT NULL,
  `extra2` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `structures`
--

CREATE TABLE `structures` (
  `count` int UNSIGNED NOT NULL,
  `name` varchar(125) DEFAULT NULL,
  `formula` varchar(100) DEFAULT NULL,
  `smiles` varchar(250) DEFAULT NULL,
  `cas` varchar(20) DEFAULT NULL,
  `alternate_names` longtext,
  `synonyms` longtext,
  `solubility` varchar(125) DEFAULT NULL,
  `purity` float(3,2) DEFAULT NULL,
  `form` varchar(30) DEFAULT NULL,
  `logp` varchar(15) DEFAULT NULL,
  `pka` varchar(10) DEFAULT NULL,
  `density` float(3,2) DEFAULT NULL,
  `mw` float(6,2) DEFAULT NULL,
  `mp` varchar(10) DEFAULT NULL,
  `bp` varchar(10) DEFAULT NULL,
  `hd` varchar(10) DEFAULT NULL,
  `ha` varchar(10) DEFAULT NULL,
  `psa` varchar(10) DEFAULT NULL,
  `description` longtext,
  `mol_file` longblob,
  `spectrum_file` longblob,
  `box_id` int UNSIGNED DEFAULT NULL,
  `box_details` text,
  `box_status` tinyint DEFAULT NULL,
  `box_status_data` text,
  `st_counter` int DEFAULT NULL,
  `st_date_limit` date DEFAULT NULL,
  `st_days_before_limit` tinyint UNSIGNED DEFAULT NULL,
  `st_defrost_counter` int UNSIGNED DEFAULT NULL,
  `volume` varchar(50) DEFAULT NULL,
  `volume_unit` varchar(25) DEFAULT NULL,
  `date_created` datetime DEFAULT NULL,
  `date_updated` datetime DEFAULT NULL,
  `extra1` varchar(100) DEFAULT NULL,
  `extra2` varchar(100) DEFAULT NULL,
  `extra3` varchar(100) DEFAULT NULL,
  `keeper` int UNSIGNED DEFAULT NULL,
  `wait` tinyint UNSIGNED DEFAULT '0',
  `secret` tinyint UNSIGNED DEFAULT '0',
  `unique_code` varchar(50) DEFAULT NULL,
  `chem_id_child` int UNSIGNED DEFAULT NULL,
  `inchi` varchar(250) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tags_list`
--

CREATE TABLE `tags_list` (
  `id` int NOT NULL,
  `tag` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_groups`
--

CREATE TABLE `user_groups` (
  `user_id` int NOT NULL,
  `group_id` int NOT NULL,
  `is_primary` tinyint NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `worklists`
--

CREATE TABLE `worklists` (
  `list_id` int UNSIGNED NOT NULL,
  `list_name` varchar(150) DEFAULT NULL,
  `list_description` varchar(250) DEFAULT NULL,
  `keeper` int UNSIGNED DEFAULT NULL,
  `shares` varchar(150) DEFAULT NULL,
  `list_content` mediumtext,
  `list_date` datetime DEFAULT NULL,
  `see_sec` tinyint UNSIGNED DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `abook`
--
ALTER TABLE `abook`
  ADD PRIMARY KEY (`count`),
  ADD KEY `abook_cat` (`abook_cat`);

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`),
  ADD KEY `group_type` (`group_type`),
  ADD KEY `contact_id` (`contact_id`),
  ADD KEY `badge_number` (`badge_number`);

--
-- Indexes for table `alerts_email_setup`
--
ALTER TABLE `alerts_email_setup`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `animals`
--
ALTER TABLE `animals`
  ADD PRIMARY KEY (`count`),
  ADD KEY `unique_code` (`unique_code`),
  ADD KEY `keeper` (`keeper`),
  ADD KEY `chem_id_child` (`chem_id_child`);

--
-- Indexes for table `animals_cages`
--
ALTER TABLE `animals_cages`
  ADD PRIMARY KEY (`cage_id`),
  ADD KEY `animal_id` (`animal_id`),
  ADD KEY `local_id` (`local_id`);

--
-- Indexes for table `animals_cages_def`
--
ALTER TABLE `animals_cages_def`
  ADD PRIMARY KEY (`count`),
  ADD KEY `group_id` (`group_id`);

--
-- Indexes for table `animals_crossbreed`
--
ALTER TABLE `animals_crossbreed`
  ADD PRIMARY KEY (`cross_id`),
  ADD KEY `animal_1` (`animal_1`),
  ADD KEY `module_1` (`module_1`),
  ADD KEY `animal_2` (`animal_2`),
  ADD KEY `module_2` (`module_2`);

--
-- Indexes for table `animals_crossbreed_descendants`
--
ALTER TABLE `animals_crossbreed_descendants`
  ADD PRIMARY KEY (`id`),
  ADD KEY `descendant` (`descendant`),
  ADD KEY `descendant_module` (`descendant_module`),
  ADD KEY `cross_id` (`cross_id`);

--
-- Indexes for table `antibodies`
--
ALTER TABLE `antibodies`
  ADD PRIMARY KEY (`count`),
  ADD KEY `isotype_id` (`isotype_id`),
  ADD KEY `purity_id` (`purity_id`),
  ADD KEY `marker_id` (`marker_id`),
  ADD KEY `applications_id` (`applications_id`),
  ADD KEY `host_id` (`host_id`),
  ADD KEY `species_reactive` (`species_reactive`),
  ADD KEY `unique_code` (`unique_code`),
  ADD KEY `keeper` (`keeper`),
  ADD KEY `box_id` (`box_id`),
  ADD KEY `chem_id_child` (`chem_id_child`),
  ADD KEY `box_status` (`box_status`);

--
-- Indexes for table `antibodies_options`
--
ALTER TABLE `antibodies_options`
  ADD PRIMARY KEY (`option_id`),
  ADD KEY `box_id` (`option_type`);

--
-- Indexes for table `associated_owners`
--
ALTER TABLE `associated_owners`
  ADD PRIMARY KEY (`id`),
  ADD KEY `owner` (`owner`),
  ADD KEY `group_id` (`group_id`),
  ADD KEY `record_id` (`record_id`),
  ADD KEY `record_module` (`record_module`);

--
-- Indexes for table `bookmarks`
--
ALTER TABLE `bookmarks`
  ADD PRIMARY KEY (`count`);

--
-- Indexes for table `boxes_def`
--
ALTER TABLE `boxes_def`
  ADD PRIMARY KEY (`box_id`),
  ADD KEY `location` (`location`),
  ADD KEY `rack` (`rack`),
  ADD KEY `keeper` (`keeper`),
  ADD KEY `box_type` (`box_type`);

--
-- Indexes for table `boxes_def_model`
--
ALTER TABLE `boxes_def_model`
  ADD PRIMARY KEY (`box_id`),
  ADD KEY `box_type` (`box_type`),
  ADD KEY `keeper` (`keeper`);

--
-- Indexes for table `boxes_def_owners`
--
ALTER TABLE `boxes_def_owners`
  ADD PRIMARY KEY (`bdo_id`),
  ADD KEY `box_id` (`box_id`),
  ADD KEY `keeper_id` (`keeper_id`),
  ADD KEY `group_id` (`group_id`);

--
-- Indexes for table `boxes_grid_def`
--
ALTER TABLE `boxes_grid_def`
  ADD PRIMARY KEY (`count`),
  ADD KEY `box_id` (`box_id`);

--
-- Indexes for table `boxes_grid_def_model`
--
ALTER TABLE `boxes_grid_def_model`
  ADD PRIMARY KEY (`count`),
  ADD KEY `box_id` (`box_id`);

--
-- Indexes for table `boxes_local_def`
--
ALTER TABLE `boxes_local_def`
  ADD PRIMARY KEY (`id`),
  ADD KEY `facility_id` (`facility_id`),
  ADD KEY `equipment_id` (`equipment_id`),
  ADD KEY `storage_type` (`storage_type`),
  ADD KEY `store_mode` (`store_mode`);

--
-- Indexes for table `boxes_secondary_def`
--
ALTER TABLE `boxes_secondary_def`
  ADD PRIMARY KEY (`id`),
  ADD KEY `box_id` (`box_id`),
  ADD KEY `record_id` (`record_id`),
  ADD KEY `keeper` (`keeper`),
  ADD KEY `unique_code` (`unique_code`),
  ADD KEY `sec_status` (`sec_status`);

--
-- Indexes for table `boxes_storage_colors`
--
ALTER TABLE `boxes_storage_colors`
  ADD PRIMARY KEY (`color_grid_id`),
  ADD KEY `box_id` (`box_id`),
  ADD KEY `record_id` (`record_id`),
  ADD KEY `module` (`module`),
  ADD KEY `sec_id` (`sec_id`);

--
-- Indexes for table `boxes_storage_comments`
--
ALTER TABLE `boxes_storage_comments`
  ADD PRIMARY KEY (`comment_id`),
  ADD KEY `record_id_main` (`record_id_main`),
  ADD KEY `storage_id_sec` (`storage_id_sec`);

--
-- Indexes for table `boxes_straws_def`
--
ALTER TABLE `boxes_straws_def`
  ADD PRIMARY KEY (`straw_id`),
  ADD KEY `record_id` (`record_id`),
  ADD KEY `module_ref` (`module_ref`),
  ADD KEY `box_id` (`box_id`),
  ADD KEY `sec_id` (`sec_id`);

--
-- Indexes for table `boxes_temp_def`
--
ALTER TABLE `boxes_temp_def`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `budgets_money`
--
ALTER TABLE `budgets_money`
  ADD PRIMARY KEY (`b_id`),
  ADD KEY `budget_id` (`budget_id`),
  ADD KEY `keeper` (`keeper`),
  ADD KEY `group_id` (`group_id`),
  ADD KEY `valid_user` (`valid_user`);

--
-- Indexes for table `budgets_spread`
--
ALTER TABLE `budgets_spread`
  ADD PRIMARY KEY (`budget_scheduling_count`),
  ADD KEY `b_id` (`b_id`);

--
-- Indexes for table `certificates`
--
ALTER TABLE `certificates`
  ADD PRIMARY KEY (`certif_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `chemicals`
--
ALTER TABLE `chemicals`
  ADD PRIMARY KEY (`count`),
  ADD KEY `cat_id` (`cat_id`),
  ADD KEY `seller_id` (`seller_id`);

--
-- Indexes for table `chemicals_lots`
--
ALTER TABLE `chemicals_lots`
  ADD PRIMARY KEY (`count`),
  ADD KEY `chem_id` (`chem_id`),
  ADD KEY `derived_by` (`derived_by`),
  ADD KEY `d_req_by` (`d_req_by`),
  ADD KEY `d_val_by` (`d_val_by`),
  ADD KEY `d_trash_by` (`d_trash_by`),
  ADD KEY `number` (`number`);

--
-- Indexes for table `chem_cat`
--
ALTER TABLE `chem_cat`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `chem_lots_conso`
--
ALTER TABLE `chem_lots_conso`
  ADD PRIMARY KEY (`conso_id`);

--
-- Indexes for table `chem_risk_icons`
--
ALTER TABLE `chem_risk_icons`
  ADD PRIMARY KEY (`count`),
  ADD KEY `chem_id` (`chem_id`),
  ADD KEY `risk_icon` (`risk_icon`),
  ADD KEY `module` (`module`);

--
-- Indexes for table `chem_risk_info`
--
ALTER TABLE `chem_risk_info`
  ADD PRIMARY KEY (`count`),
  ADD KEY `chem_id` (`chem_id`),
  ADD KEY `module` (`module`);

--
-- Indexes for table `chem_risk_link`
--
ALTER TABLE `chem_risk_link`
  ADD PRIMARY KEY (`count`),
  ADD KEY `module` (`module`);

--
-- Indexes for table `chem_storage`
--
ALTER TABLE `chem_storage`
  ADD PRIMARY KEY (`storage_id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`count`);

--
-- Indexes for table `contacts_home_blocks`
--
ALTER TABLE `contacts_home_blocks`
  ADD PRIMARY KEY (`block_id`);

--
-- Indexes for table `docs`
--
ALTER TABLE `docs`
  ADD PRIMARY KEY (`count`);

--
-- Indexes for table `docs_cat`
--
ALTER TABLE `docs_cat`
  ADD PRIMARY KEY (`id`),
  ADD KEY `parent` (`parent`);

--
-- Indexes for table `equipments`
--
ALTER TABLE `equipments`
  ADD PRIMARY KEY (`count`),
  ADD KEY `cat` (`cat`),
  ADD KEY `keeper` (`keeper`),
  ADD KEY `seller_id` (`seller_id`);

--
-- Indexes for table `export_models`
--
ALTER TABLE `export_models`
  ADD PRIMARY KEY (`count`);

--
-- Indexes for table `export_models_fields`
--
ALTER TABLE `export_models_fields`
  ADD PRIMARY KEY (`count`);

--
-- Indexes for table `field_masks`
--
ALTER TABLE `field_masks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `file_types`
--
ALTER TABLE `file_types`
  ADD PRIMARY KEY (`count`);

--
-- Indexes for table `history`
--
ALTER TABLE `history`
  ADD PRIMARY KEY (`count`),
  ADD KEY `user_module` (`user_module`),
  ADD KEY `user` (`user`),
  ADD KEY `user_record` (`user_record`),
  ADD KEY `date` (`date`);

--
-- Indexes for table `licence`
--
ALTER TABLE `licence`
  ADD PRIMARY KEY (`count`);

--
-- Indexes for table `locked_records`
--
ALTER TABLE `locked_records`
  ADD PRIMARY KEY (`record_id`,`module_short_name`,`timestamp`),
  ADD KEY `record_id` (`record_id`),
  ADD KEY `module_short_name` (`module_short_name`);

--
-- Indexes for table `maintenance`
--
ALTER TABLE `maintenance`
  ADD PRIMARY KEY (`count`),
  ADD KEY `equipment_id` (`equipment_id`),
  ADD KEY `mt_cat_id` (`mt_cat_id`),
  ADD KEY `alert` (`alert`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`count`);

--
-- Indexes for table `microarrays`
--
ALTER TABLE `microarrays`
  ADD PRIMARY KEY (`count`),
  ADD KEY `keeper` (`keeper`),
  ADD KEY `chem_id_child` (`chem_id_child`);

--
-- Indexes for table `microarrays_genes`
--
ALTER TABLE `microarrays_genes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `gene_id` (`gene_id`),
  ADD KEY `array_ref` (`array_ref`);

--
-- Indexes for table `modules`
--
ALTER TABLE `modules`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `modules_custom`
--
ALTER TABLE `modules_custom`
  ADD PRIMARY KEY (`field_id`),
  ADD KEY `module_table` (`module_table`),
  ADD KEY `field_type` (`field_type`),
  ADD KEY `analysis_tab` (`analysis_tab`),
  ADD KEY `visible` (`visible`);

--
-- Indexes for table `modules_custom_field_legends`
--
ALTER TABLE `modules_custom_field_legends`
  ADD PRIMARY KEY (`id`),
  ADD KEY `custom_field_id` (`custom_field_id`),
  ADD KEY `lang` (`lang`);

--
-- Indexes for table `modules_custom_files`
--
ALTER TABLE `modules_custom_files`
  ADD PRIMARY KEY (`file_id`);

--
-- Indexes for table `modules_custom_options`
--
ALTER TABLE `modules_custom_options`
  ADD PRIMARY KEY (`option_id`);

--
-- Indexes for table `modules_custom_values`
--
ALTER TABLE `modules_custom_values`
  ADD PRIMARY KEY (`val_id`),
  ADD KEY `field_id_link` (`field_id_link`);

--
-- Indexes for table `modules_field`
--
ALTER TABLE `modules_field`
  ADD PRIMARY KEY (`field_id`),
  ADD KEY `form_order` (`form_order`),
  ADD KEY `visible` (`visible`),
  ADD KEY `form_type` (`form_type`),
  ADD KEY `module_table` (`module_table`);

--
-- Indexes for table `modules_field_legends`
--
ALTER TABLE `modules_field_legends`
  ADD PRIMARY KEY (`id`),
  ADD KEY `form_field_id` (`form_field_id`),
  ADD KEY `lang` (`lang`);

--
-- Indexes for table `modules_field_options`
--
ALTER TABLE `modules_field_options`
  ADD PRIMARY KEY (`id`),
  ADD KEY `module` (`module`);

--
-- Indexes for table `modules_options`
--
ALTER TABLE `modules_options`
  ADD PRIMARY KEY (`option_id`),
  ADD KEY `option_type` (`option_type`),
  ADD KEY `module_ref` (`module_ref`);

--
-- Indexes for table `modules_options_cron`
--
ALTER TABLE `modules_options_cron`
  ADD PRIMARY KEY (`cron_id`);

--
-- Indexes for table `modules_relation`
--
ALTER TABLE `modules_relation`
  ADD PRIMARY KEY (`count`),
  ADD KEY `id_from` (`id_from`),
  ADD KEY `module_from` (`module_from`),
  ADD KEY `id_to` (`id_to`),
  ADD KEY `module_to` (`module_to`);

--
-- Indexes for table `ncbi_requests`
--
ALTER TABLE `ncbi_requests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `netplasmid_annotations`
--
ALTER TABLE `netplasmid_annotations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `plasmid_id` (`plasmid_id`,`start`,`end`);

--
-- Indexes for table `netplasmid_customs_seqs`
--
ALTER TABLE `netplasmid_customs_seqs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `netplasmid_def`
--
ALTER TABLE `netplasmid_def`
  ADD PRIMARY KEY (`plasmid_id`);

--
-- Indexes for table `netplasmid_enz`
--
ALTER TABLE `netplasmid_enz`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `netplasmid_images`
--
ALTER TABLE `netplasmid_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `netplasmid_orf`
--
ALTER TABLE `netplasmid_orf`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `netplasmid_orf_markers`
--
ALTER TABLE `netplasmid_orf_markers`
  ADD PRIMARY KEY (`count`);

--
-- Indexes for table `netplasmid_restriction_enzymes`
--
ALTER TABLE `netplasmid_restriction_enzymes`
  ADD PRIMARY KEY (`count`);

--
-- Indexes for table `npdc_gdnas`
--
ALTER TABLE `npdc_gdnas`
  ADD PRIMARY KEY (`count`),
  ADD KEY `keeper` (`keeper`),
  ADD KEY `box_id` (`box_id`),
  ADD KEY `unique_code` (`unique_code`),
  ADD KEY `chem_id_child` (`chem_id_child`),
  ADD KEY `box_status` (`box_status`);

--
-- Indexes for table `npdc_genome_sequences`
--
ALTER TABLE `npdc_genome_sequences`
  ADD PRIMARY KEY (`count`),
  ADD KEY `keeper` (`keeper`),
  ADD KEY `box_id` (`box_id`),
  ADD KEY `unique_code` (`unique_code`),
  ADD KEY `chem_id_child` (`chem_id_child`),
  ADD KEY `box_status` (`box_status`);

--
-- Indexes for table `npdc_liquid_growth`
--
ALTER TABLE `npdc_liquid_growth`
  ADD PRIMARY KEY (`count`),
  ADD KEY `keeper` (`keeper`),
  ADD KEY `box_id` (`box_id`),
  ADD KEY `unique_code` (`unique_code`),
  ADD KEY `chem_id_child` (`chem_id_child`),
  ADD KEY `box_status` (`box_status`);

--
-- Indexes for table `npdc_sequencing_batches`
--
ALTER TABLE `npdc_sequencing_batches`
  ADD PRIMARY KEY (`count`),
  ADD KEY `keeper` (`keeper`),
  ADD KEY `box_id` (`box_id`),
  ADD KEY `unique_code` (`unique_code`),
  ADD KEY `chem_id_child` (`chem_id_child`),
  ADD KEY `box_status` (`box_status`);

--
-- Indexes for table `npdc_sequencing_samples`
--
ALTER TABLE `npdc_sequencing_samples`
  ADD PRIMARY KEY (`count`),
  ADD KEY `keeper` (`keeper`),
  ADD KEY `box_id` (`box_id`),
  ADD KEY `unique_code` (`unique_code`),
  ADD KEY `chem_id_child` (`chem_id_child`),
  ADD KEY `box_status` (`box_status`);

--
-- Indexes for table `npdc_strains`
--
ALTER TABLE `npdc_strains`
  ADD PRIMARY KEY (`count`),
  ADD KEY `keeper` (`keeper`),
  ADD KEY `box_id` (`box_id`),
  ADD KEY `unique_code` (`unique_code`),
  ADD KEY `chem_id_child` (`chem_id_child`),
  ADD KEY `box_status` (`box_status`);

--
-- Indexes for table `order_list`
--
ALTER TABLE `order_list`
  ADD PRIMARY KEY (`order_list_id`),
  ADD KEY `chem_id` (`chem_id`),
  ADD KEY `primer_id` (`primer_id`),
  ADD KEY `po_number` (`po_number`),
  ADD KEY `order_status` (`order_status`),
  ADD KEY `budget` (`budget`),
  ADD KEY `po_template_id` (`po_template_id`);

--
-- Indexes for table `order_list_invoices`
--
ALTER TABLE `order_list_invoices`
  ADD KEY `Index 1` (`inv_id`),
  ADD KEY `po_number` (`po_number`),
  ADD KEY `invoice_ref` (`invoice_ref`);

--
-- Indexes for table `order_list_quotes`
--
ALTER TABLE `order_list_quotes`
  ADD PRIMARY KEY (`quote_id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `quote_ref` (`quote_ref`);

--
-- Indexes for table `order_templates`
--
ALTER TABLE `order_templates`
  ADD PRIMARY KEY (`template_id`);

--
-- Indexes for table `order_templates_xls`
--
ALTER TABLE `order_templates_xls`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `organisms`
--
ALTER TABLE `organisms`
  ADD PRIMARY KEY (`org_id`);

--
-- Indexes for table `plasmids`
--
ALTER TABLE `plasmids`
  ADD PRIMARY KEY (`count`),
  ADD KEY `keeper` (`keeper`),
  ADD KEY `box_id` (`box_id`),
  ADD KEY `unique_code` (`unique_code`),
  ADD KEY `chem_id_child` (`chem_id_child`),
  ADD KEY `box_status` (`box_status`);

--
-- Indexes for table `plasmid_sequences`
--
ALTER TABLE `plasmid_sequences`
  ADD PRIMARY KEY (`count`),
  ADD KEY `plasmid_id` (`plasmid_id`);

--
-- Indexes for table `primers`
--
ALTER TABLE `primers`
  ADD PRIMARY KEY (`count`),
  ADD KEY `keeper` (`keeper`),
  ADD KEY `box_id` (`box_id`),
  ADD KEY `unique_code` (`unique_code`),
  ADD KEY `chem_id_child` (`chem_id_child`),
  ADD KEY `box_status` (`box_status`);

--
-- Indexes for table `processes`
--
ALTER TABLE `processes`
  ADD PRIMARY KEY (`count`),
  ADD KEY `sample_id` (`sample_id`);

--
-- Indexes for table `process_type_def`
--
ALTER TABLE `process_type_def`
  ADD PRIMARY KEY (`count`),
  ADD KEY `parent` (`parent`);

--
-- Indexes for table `projects_lc`
--
ALTER TABLE `projects_lc`
  ADD PRIMARY KEY (`proj_id`);

--
-- Indexes for table `projects_lc_groups`
--
ALTER TABLE `projects_lc_groups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `proj_id` (`proj_id`),
  ADD KEY `group_id` (`group_id`);

--
-- Indexes for table `projects_lc_records`
--
ALTER TABLE `projects_lc_records`
  ADD PRIMARY KEY (`count_id`),
  ADD KEY `proj_id` (`proj_id`),
  ADD KEY `record_id` (`record_id`),
  ADD KEY `module` (`module`);

--
-- Indexes for table `recipes`
--
ALTER TABLE `recipes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `recipes_categories`
--
ALTER TABLE `recipes_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `recipes_log`
--
ALTER TABLE `recipes_log`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `recipe_components`
--
ALTER TABLE `recipe_components`
  ADD PRIMARY KEY (`component_id`);

--
-- Indexes for table `records_options`
--
ALTER TABLE `records_options`
  ADD PRIMARY KEY (`option_id`);

--
-- Indexes for table `record_versioning`
--
ALTER TABLE `record_versioning`
  ADD PRIMARY KEY (`id`),
  ADD KEY `record_id` (`record_id`),
  ADD KEY `module_table` (`module_table`);

--
-- Indexes for table `risk_danger`
--
ALTER TABLE `risk_danger`
  ADD PRIMARY KEY (`danger_id`);

--
-- Indexes for table `risk_safety`
--
ALTER TABLE `risk_safety`
  ADD PRIMARY KEY (`risk_id`);

--
-- Indexes for table `samples`
--
ALTER TABLE `samples`
  ADD PRIMARY KEY (`count`),
  ADD KEY `org` (`org`),
  ADD KEY `box_id` (`box_id`),
  ADD KEY `main_operator` (`main_operator`),
  ADD KEY `unique_code` (`unique_code`),
  ADD KEY `sample_type` (`sample_type`),
  ADD KEY `box_status` (`box_status`);

--
-- Indexes for table `sample_types_def`
--
ALTER TABLE `sample_types_def`
  ADD PRIMARY KEY (`count`);

--
-- Indexes for table `sellers`
--
ALTER TABLE `sellers`
  ADD PRIMARY KEY (`seller_id`);

--
-- Indexes for table `sequences`
--
ALTER TABLE `sequences`
  ADD PRIMARY KEY (`count`),
  ADD KEY `keeper` (`keeper`),
  ADD KEY `type` (`type`);

--
-- Indexes for table `sequences_genbank_annots`
--
ALTER TABLE `sequences_genbank_annots`
  ADD PRIMARY KEY (`id`),
  ADD KEY `label` (`label`),
  ADD KEY `plasmid_id` (`plasmid_id`),
  ADD KEY `count` (`count`);

--
-- Indexes for table `sequence_files`
--
ALTER TABLE `sequence_files`
  ADD PRIMARY KEY (`id`),
  ADD KEY `seq_id` (`seq_id`);

--
-- Indexes for table `setup_prefs`
--
ALTER TABLE `setup_prefs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `signatures`
--
ALTER TABLE `signatures`
  ADD PRIMARY KEY (`signature_id`),
  ADD KEY `record_id` (`record_id`),
  ADD KEY `module` (`module`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `storage_facilities`
--
ALTER TABLE `storage_facilities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `strains`
--
ALTER TABLE `strains`
  ADD PRIMARY KEY (`count`),
  ADD KEY `unique_code` (`unique_code`),
  ADD KEY `keeper` (`keeper`),
  ADD KEY `box_id` (`box_id`),
  ADD KEY `org` (`org`),
  ADD KEY `chem_id_child` (`chem_id_child`),
  ADD KEY `box_status` (`box_status`);

--
-- Indexes for table `strains_log`
--
ALTER TABLE `strains_log`
  ADD PRIMARY KEY (`count`),
  ADD KEY `strain_id` (`strain_id`);

--
-- Indexes for table `structures`
--
ALTER TABLE `structures`
  ADD PRIMARY KEY (`count`),
  ADD KEY `keeper` (`keeper`),
  ADD KEY `extra1` (`extra1`),
  ADD KEY `box_id` (`box_id`),
  ADD KEY `unique_code` (`unique_code`),
  ADD KEY `chem_id_child` (`chem_id_child`),
  ADD KEY `box_status` (`box_status`);

--
-- Indexes for table `tags_list`
--
ALTER TABLE `tags_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_groups`
--
ALTER TABLE `user_groups`
  ADD KEY `user_id` (`user_id`),
  ADD KEY `group_id` (`group_id`);

--
-- Indexes for table `worklists`
--
ALTER TABLE `worklists`
  ADD PRIMARY KEY (`list_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `abook`
--
ALTER TABLE `abook`
  MODIFY `count` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `animals`
--
ALTER TABLE `animals`
  MODIFY `count` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `animals_cages`
--
ALTER TABLE `animals_cages`
  MODIFY `cage_id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `animals_cages_def`
--
ALTER TABLE `animals_cages_def`
  MODIFY `count` smallint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `animals_crossbreed`
--
ALTER TABLE `animals_crossbreed`
  MODIFY `cross_id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `animals_crossbreed_descendants`
--
ALTER TABLE `animals_crossbreed_descendants`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `antibodies`
--
ALTER TABLE `antibodies`
  MODIFY `count` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `antibodies_options`
--
ALTER TABLE `antibodies_options`
  MODIFY `option_id` tinyint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `associated_owners`
--
ALTER TABLE `associated_owners`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bookmarks`
--
ALTER TABLE `bookmarks`
  MODIFY `count` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `boxes_def`
--
ALTER TABLE `boxes_def`
  MODIFY `box_id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `boxes_def_model`
--
ALTER TABLE `boxes_def_model`
  MODIFY `box_id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `boxes_def_owners`
--
ALTER TABLE `boxes_def_owners`
  MODIFY `bdo_id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `boxes_grid_def`
--
ALTER TABLE `boxes_grid_def`
  MODIFY `count` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `boxes_grid_def_model`
--
ALTER TABLE `boxes_grid_def_model`
  MODIFY `count` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `boxes_local_def`
--
ALTER TABLE `boxes_local_def`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `boxes_secondary_def`
--
ALTER TABLE `boxes_secondary_def`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `boxes_storage_colors`
--
ALTER TABLE `boxes_storage_colors`
  MODIFY `color_grid_id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `boxes_storage_comments`
--
ALTER TABLE `boxes_storage_comments`
  MODIFY `comment_id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `boxes_straws_def`
--
ALTER TABLE `boxes_straws_def`
  MODIFY `straw_id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `boxes_temp_def`
--
ALTER TABLE `boxes_temp_def`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `budgets_money`
--
ALTER TABLE `budgets_money`
  MODIFY `b_id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `budgets_spread`
--
ALTER TABLE `budgets_spread`
  MODIFY `budget_scheduling_count` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `certificates`
--
ALTER TABLE `certificates`
  MODIFY `certif_id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `chemicals`
--
ALTER TABLE `chemicals`
  MODIFY `count` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `chemicals_lots`
--
ALTER TABLE `chemicals_lots`
  MODIFY `count` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `chem_cat`
--
ALTER TABLE `chem_cat`
  MODIFY `cat_id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `chem_lots_conso`
--
ALTER TABLE `chem_lots_conso`
  MODIFY `conso_id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `chem_risk_icons`
--
ALTER TABLE `chem_risk_icons`
  MODIFY `count` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `chem_risk_info`
--
ALTER TABLE `chem_risk_info`
  MODIFY `count` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `chem_risk_link`
--
ALTER TABLE `chem_risk_link`
  MODIFY `count` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `chem_storage`
--
ALTER TABLE `chem_storage`
  MODIFY `storage_id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `count` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `contacts_home_blocks`
--
ALTER TABLE `contacts_home_blocks`
  MODIFY `block_id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `docs`
--
ALTER TABLE `docs`
  MODIFY `count` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `docs_cat`
--
ALTER TABLE `docs_cat`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `equipments`
--
ALTER TABLE `equipments`
  MODIFY `count` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `export_models`
--
ALTER TABLE `export_models`
  MODIFY `count` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `export_models_fields`
--
ALTER TABLE `export_models_fields`
  MODIFY `count` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `field_masks`
--
ALTER TABLE `field_masks`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `file_types`
--
ALTER TABLE `file_types`
  MODIFY `count` tinyint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `history`
--
ALTER TABLE `history`
  MODIFY `count` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `licence`
--
ALTER TABLE `licence`
  MODIFY `count` tinyint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `maintenance`
--
ALTER TABLE `maintenance`
  MODIFY `count` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `count` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `microarrays`
--
ALTER TABLE `microarrays`
  MODIFY `count` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `microarrays_genes`
--
ALTER TABLE `microarrays_genes`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `modules`
--
ALTER TABLE `modules`
  MODIFY `id` tinyint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `modules_custom`
--
ALTER TABLE `modules_custom`
  MODIFY `field_id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `modules_custom_field_legends`
--
ALTER TABLE `modules_custom_field_legends`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `modules_custom_files`
--
ALTER TABLE `modules_custom_files`
  MODIFY `file_id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `modules_custom_options`
--
ALTER TABLE `modules_custom_options`
  MODIFY `option_id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `modules_custom_values`
--
ALTER TABLE `modules_custom_values`
  MODIFY `val_id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `modules_field`
--
ALTER TABLE `modules_field`
  MODIFY `field_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=469;

--
-- AUTO_INCREMENT for table `modules_field_legends`
--
ALTER TABLE `modules_field_legends`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=170;

--
-- AUTO_INCREMENT for table `modules_field_options`
--
ALTER TABLE `modules_field_options`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `modules_options`
--
ALTER TABLE `modules_options`
  MODIFY `option_id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT for table `modules_options_cron`
--
ALTER TABLE `modules_options_cron`
  MODIFY `cron_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `modules_relation`
--
ALTER TABLE `modules_relation`
  MODIFY `count` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ncbi_requests`
--
ALTER TABLE `ncbi_requests`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `netplasmid_annotations`
--
ALTER TABLE `netplasmid_annotations`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `netplasmid_customs_seqs`
--
ALTER TABLE `netplasmid_customs_seqs`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `netplasmid_def`
--
ALTER TABLE `netplasmid_def`
  MODIFY `plasmid_id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `netplasmid_enz`
--
ALTER TABLE `netplasmid_enz`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `netplasmid_images`
--
ALTER TABLE `netplasmid_images`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `netplasmid_orf`
--
ALTER TABLE `netplasmid_orf`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `netplasmid_orf_markers`
--
ALTER TABLE `netplasmid_orf_markers`
  MODIFY `count` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `netplasmid_restriction_enzymes`
--
ALTER TABLE `netplasmid_restriction_enzymes`
  MODIFY `count` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=706;

--
-- AUTO_INCREMENT for table `npdc_gdnas`
--
ALTER TABLE `npdc_gdnas`
  MODIFY `count` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `npdc_genome_sequences`
--
ALTER TABLE `npdc_genome_sequences`
  MODIFY `count` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `npdc_liquid_growth`
--
ALTER TABLE `npdc_liquid_growth`
  MODIFY `count` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `npdc_sequencing_batches`
--
ALTER TABLE `npdc_sequencing_batches`
  MODIFY `count` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `npdc_sequencing_samples`
--
ALTER TABLE `npdc_sequencing_samples`
  MODIFY `count` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `npdc_strains`
--
ALTER TABLE `npdc_strains`
  MODIFY `count` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order_list`
--
ALTER TABLE `order_list`
  MODIFY `order_list_id` mediumint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order_list_invoices`
--
ALTER TABLE `order_list_invoices`
  MODIFY `inv_id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order_list_quotes`
--
ALTER TABLE `order_list_quotes`
  MODIFY `quote_id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order_templates`
--
ALTER TABLE `order_templates`
  MODIFY `template_id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `order_templates_xls`
--
ALTER TABLE `order_templates_xls`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `organisms`
--
ALTER TABLE `organisms`
  MODIFY `org_id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `plasmids`
--
ALTER TABLE `plasmids`
  MODIFY `count` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `plasmid_sequences`
--
ALTER TABLE `plasmid_sequences`
  MODIFY `count` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `primers`
--
ALTER TABLE `primers`
  MODIFY `count` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `processes`
--
ALTER TABLE `processes`
  MODIFY `count` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `process_type_def`
--
ALTER TABLE `process_type_def`
  MODIFY `count` tinyint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `projects_lc`
--
ALTER TABLE `projects_lc`
  MODIFY `proj_id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `projects_lc_groups`
--
ALTER TABLE `projects_lc_groups`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `projects_lc_records`
--
ALTER TABLE `projects_lc_records`
  MODIFY `count_id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `recipes`
--
ALTER TABLE `recipes`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `recipes_categories`
--
ALTER TABLE `recipes_categories`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `recipes_log`
--
ALTER TABLE `recipes_log`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `recipe_components`
--
ALTER TABLE `recipe_components`
  MODIFY `component_id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `records_options`
--
ALTER TABLE `records_options`
  MODIFY `option_id` tinyint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `record_versioning`
--
ALTER TABLE `record_versioning`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `risk_danger`
--
ALTER TABLE `risk_danger`
  MODIFY `danger_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `risk_safety`
--
ALTER TABLE `risk_safety`
  MODIFY `risk_id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1094;

--
-- AUTO_INCREMENT for table `samples`
--
ALTER TABLE `samples`
  MODIFY `count` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sample_types_def`
--
ALTER TABLE `sample_types_def`
  MODIFY `count` tinyint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sellers`
--
ALTER TABLE `sellers`
  MODIFY `seller_id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sequences`
--
ALTER TABLE `sequences`
  MODIFY `count` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sequences_genbank_annots`
--
ALTER TABLE `sequences_genbank_annots`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sequence_files`
--
ALTER TABLE `sequence_files`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `signatures`
--
ALTER TABLE `signatures`
  MODIFY `signature_id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `storage_facilities`
--
ALTER TABLE `storage_facilities`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `strains`
--
ALTER TABLE `strains`
  MODIFY `count` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `strains_log`
--
ALTER TABLE `strains_log`
  MODIFY `count` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `structures`
--
ALTER TABLE `structures`
  MODIFY `count` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tags_list`
--
ALTER TABLE `tags_list`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `worklists`
--
ALTER TABLE `worklists`
  MODIFY `list_id` int UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
