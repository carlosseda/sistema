-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 08-10-2020 a las 20:22:38
-- Versión del servidor: 8.0.21-0ubuntu0.20.04.4
-- Versión de PHP: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `sistema`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `t_backup`
--

CREATE TABLE `t_backup` (
  `id` int UNSIGNED NOT NULL,
  `origin_disk_id` int UNSIGNED DEFAULT NULL,
  `origin_partition_id` int UNSIGNED DEFAULT NULL,
  `origin_path` varchar(255) NOT NULL,
  `destination_disk_id` int UNSIGNED DEFAULT NULL,
  `destination_partition_id` int UNSIGNED DEFAULT NULL,
  `destination_path` varchar(255) NOT NULL,
  `datetime_backup` timestamp NOT NULL,
  `error` tinyint UNSIGNED NOT NULL,
  `active` tinyint UNSIGNED NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `t_backup`
--

INSERT INTO `t_backup` (`id`, `origin_disk_id`, `origin_partition_id`, `origin_path`, `destination_disk_id`, `destination_partition_id`, `destination_path`, `datetime_backup`, `error`, `active`, `created_at`) VALUES
(1, 3, 2, '/win32/documentos', 3, 2, '/home/backup', '2020-10-08 00:00:00', 0, 1, '2020-10-08 10:21:16');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `t_base_installation`
--

CREATE TABLE `t_base_installation` (
  `id` int UNSIGNED NOT NULL,
  `session_id` int UNSIGNED NOT NULL,
  `software_id` int UNSIGNED NOT NULL,
  `active` int UNSIGNED NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `t_base_installation`
--

INSERT INTO `t_base_installation` (`id`, `session_id`, `software_id`, `active`, `created_at`, `updated_at`) VALUES
(1, 1, 2, 1, '2020-10-08 10:01:00', '2020-10-08 10:01:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `t_buy`
--

CREATE TABLE `t_buy` (
  `id` int UNSIGNED NOT NULL,
  `component_type` varchar(255) NOT NULL,
  `component_id` int UNSIGNED NOT NULL,
  `price` float UNSIGNED NOT NULL,
  `price_offer` float UNSIGNED DEFAULT NULL,
  `date` date NOT NULL,
  `provider` varchar(255) NOT NULL,
  `bill_image` varchar(255) NOT NULL,
  `bill_number` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `t_chasis`
--

CREATE TABLE `t_chasis` (
  `id` int UNSIGNED NOT NULL,
  `brand` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `form_factor` enum('atx','micro-atx','mini-itx') NOT NULL,
  `active` tinyint UNSIGNED NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `t_chasis`
--

INSERT INTO `t_chasis` (`id`, `brand`, `name`, `form_factor`, `active`, `created_at`) VALUES
(1, 'dssadas', 'dadas', 'atx', 1, '2020-10-07 12:22:17'),
(2, 'HP', 'chasis', 'atx', 1, '2020-10-07 12:23:04'),
(3, 'HP', 'chasis', 'atx', 1, '2020-10-07 22:40:38'),
(4, 'HP', 'chasis', 'atx', 1, '2020-10-07 22:41:09'),
(5, 'HP', 'chasis', 'atx', 1, '2020-10-07 22:43:02'),
(6, 'HP', 'chasis', 'atx', 1, '2020-10-07 22:43:18'),
(7, 'HP', 'chasis', 'atx', 1, '2020-10-07 22:47:48'),
(8, 'HP', 'chasis', 'atx', 1, '2020-10-07 23:00:58'),
(9, 'HP', 'chasis', 'atx', 1, '2020-10-07 23:01:20'),
(10, 'HP', 'chasis', 'atx', 1, '2020-10-07 23:02:22'),
(11, 'HP', 'chasis', 'atx', 1, '2020-10-07 23:07:00'),
(12, 'HP', 'chasis', 'atx', 1, '2020-10-07 23:15:45'),
(13, 'HP', 'chasis', 'atx', 1, '2020-10-07 23:16:04'),
(14, 'HP', 'chasis', 'atx', 1, '2020-10-07 23:38:06'),
(15, 'HP', 'chasis', 'atx', 1, '2020-10-08 08:33:48');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `t_computer`
--

CREATE TABLE `t_computer` (
  `id` int UNSIGNED NOT NULL,
  `reference` varchar(255) NOT NULL,
  `type` enum('desktop','portable') NOT NULL,
  `start_use` date NOT NULL,
  `end_use` date DEFAULT NULL,
  `marker_id` int UNSIGNED DEFAULT NULL,
  `place_id` int UNSIGNED NOT NULL,
  `space_id` int UNSIGNED NOT NULL,
  `table_id` int UNSIGNED DEFAULT NULL,
  `active` tinyint UNSIGNED NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `t_computer_component`
--

CREATE TABLE `t_computer_component` (
  `id` int UNSIGNED NOT NULL,
  `computer_id` int UNSIGNED NOT NULL,
  `component_type` enum('chasis','cpu','fan','gpu','keyboard','mouse','motherboard','printer','projector','ram','screen','supply_power') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `component_id` int UNSIGNED NOT NULL,
  `connection_type` varchar(255) NOT NULL,
  `connection_id` int UNSIGNED NOT NULL,
  `start_use` date NOT NULL,
  `end_use` date DEFAULT NULL,
  `active` tinyint UNSIGNED NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `t_computer_component`
--

INSERT INTO `t_computer_component` (`id`, `computer_id`, `component_type`, `component_id`, `connection_type`, `connection_id`, `start_use`, `end_use`, `active`, `created_at`) VALUES
(1, 1, 'cpu', 1, 'pci_connection', 1, '2020-10-05', '2020-10-08', 1, '2020-10-08 10:40:39');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `t_computer_os`
--

CREATE TABLE `t_computer_os` (
  `id` int UNSIGNED NOT NULL,
  `computer_id` int UNSIGNED NOT NULL,
  `os_id` int UNSIGNED NOT NULL,
  `active` tinyint UNSIGNED NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `t_computer_os_license`
--

CREATE TABLE `t_computer_os_license` (
  `id` int UNSIGNED NOT NULL,
  `computer_id` int UNSIGNED NOT NULL,
  `os_license_id` int UNSIGNED NOT NULL,
  `active` tinyint UNSIGNED NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `t_computer_session`
--

CREATE TABLE `t_computer_session` (
  `id` int UNSIGNED NOT NULL,
  `computer_id` int UNSIGNED NOT NULL,
  `session_id` int UNSIGNED NOT NULL,
  `active` tinyint UNSIGNED NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `t_computer_software`
--

CREATE TABLE `t_computer_software` (
  `id` int UNSIGNED NOT NULL,
  `computer_id` int UNSIGNED NOT NULL,
  `software_id` int UNSIGNED NOT NULL,
  `active` tinyint UNSIGNED NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `t_computer_user`
--

CREATE TABLE `t_computer_user` (
  `id` int UNSIGNED NOT NULL,
  `computer_id` int UNSIGNED NOT NULL,
  `user_id` int UNSIGNED NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `t_computer_user`
--

INSERT INTO `t_computer_user` (`id`, `computer_id`, `user_id`, `active`, `created_at`) VALUES
(1, 2, 1, 1, '2020-10-08 08:51:49');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `t_cpu`
--

CREATE TABLE `t_cpu` (
  `id` int UNSIGNED NOT NULL,
  `brand` varchar(255) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `cores` int UNSIGNED NOT NULL,
  `bits` int UNSIGNED NOT NULL,
  `turbo_frequency` float UNSIGNED NOT NULL,
  `base_frequency` float UNSIGNED DEFAULT NULL,
  `memory_type` varchar(255) NOT NULL,
  `max_memory_frequency` float UNSIGNED NOT NULL,
  `max_memory_size` float UNSIGNED NOT NULL,
  `max_memory_slots` float UNSIGNED DEFAULT NULL,
  `pci_express_version` float UNSIGNED DEFAULT NULL,
  `active` tinyint UNSIGNED NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `t_entry_supply`
--

CREATE TABLE `t_entry_supply` (
  `id` int UNSIGNED NOT NULL,
  `component_type` enum('chasis','cpu','fan','gpu','keyboard','mouse','motherboard','printer','projector','ram','screen','supply_power') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `component_id` int UNSIGNED NOT NULL,
  `user_id` int UNSIGNED NOT NULL,
  `quantity` int UNSIGNED NOT NULL,
  `date` date NOT NULL,
  `active` tinyint UNSIGNED NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `t_entry_supply`
--

INSERT INTO `t_entry_supply` (`id`, `component_type`, `component_id`, `user_id`, `quantity`, `date`, `active`, `created_at`) VALUES
(1, 'screen', 1, 1, 1, '2020-10-07', 1, '2020-10-08 09:38:34');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `t_exit_supply`
--

CREATE TABLE `t_exit_supply` (
  `id` int UNSIGNED NOT NULL,
  `component_type` enum('chasis','cpu','fan','gpu','keyboard','mouse','motherboard','printer','projector','ram','screen','supply_power') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `component_id` int UNSIGNED NOT NULL,
  `user_id` int UNSIGNED NOT NULL,
  `quantity` int UNSIGNED NOT NULL,
  `date` date NOT NULL,
  `active` tinyint UNSIGNED NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `t_exit_supply`
--

INSERT INTO `t_exit_supply` (`id`, `component_type`, `component_id`, `user_id`, `quantity`, `date`, `active`, `created_at`) VALUES
(1, 'screen', 1, 1, 1, '2020-10-07', 1, '2020-10-08 09:40:01');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `t_fan`
--

CREATE TABLE `t_fan` (
  `id` int UNSIGNED NOT NULL,
  `brand` varchar(255) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `active` tinyint UNSIGNED NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `t_fan`
--

INSERT INTO `t_fan` (`id`, `brand`, `name`, `active`, `created_at`) VALUES
(1, 'default', 'default', 1, '2020-10-08 08:36:37');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `t_gpu`
--

CREATE TABLE `t_gpu` (
  `id` int UNSIGNED NOT NULL,
  `brand` varchar(255) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `max_frequency` float UNSIGNED NOT NULL,
  `max_memory` float UNSIGNED DEFAULT NULL,
  `max_high_resolution_px` int UNSIGNED DEFAULT NULL,
  `max_width_resolution_px` int UNSIGNED NOT NULL,
  `tdp_w` int UNSIGNED DEFAULT NULL,
  `active` tinyint UNSIGNED NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `t_gpu`
--

INSERT INTO `t_gpu` (`id`, `brand`, `name`, `max_frequency`, `max_memory`, `max_high_resolution_px`, `max_width_resolution_px`, `tdp_w`, `active`, `created_at`) VALUES
(1, 'nVidia', 'RTX 3090', 1695, 24, 7680, 4320, 350, 1, '2020-10-08 09:44:26');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `t_graphics_connection`
--

CREATE TABLE `t_graphics_connection` (
  `id` int UNSIGNED NOT NULL,
  `type` enum('input','output') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `connector` enum('hdmi','vga','s-video','dvi','displayport') CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `component_type` enum('motherboard','gpu','projector','screen') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `component_id` int UNSIGNED NOT NULL,
  `active` tinyint UNSIGNED NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `t_graphics_connection`
--

INSERT INTO `t_graphics_connection` (`id`, `type`, `connector`, `component_type`, `component_id`, `active`, `created_at`, `updated_at`) VALUES
(1, 'input', 'vga', 'gpu', 1, 1, '2020-10-08 10:11:33', '2020-10-08 10:11:33');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `t_incidence`
--

CREATE TABLE `t_incidence` (
  `id` int UNSIGNED NOT NULL,
  `computer_session_id` int UNSIGNED NOT NULL,
  `computer_component_id` int UNSIGNED NOT NULL,
  `description` text NOT NULL,
  `datetime_opened` timestamp NOT NULL,
  `datetime_closed` timestamp NULL DEFAULT NULL,
  `active` tinyint UNSIGNED NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `t_incidence`
--

INSERT INTO `t_incidence` (`id`, `computer_session_id`, `computer_component_id`, `description`, `datetime_opened`, `datetime_closed`, `active`, `created_at`) VALUES
(1, 1, 2, 'bla bla bla', '2020-10-09 10:20:30', '2020-10-09 10:20:30', 1, '2020-10-08 18:30:22');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `t_keyboard`
--

CREATE TABLE `t_keyboard` (
  `id` int UNSIGNED NOT NULL,
  `brand` varchar(255) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `active` tinyint UNSIGNED NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `t_keyboard`
--

INSERT INTO `t_keyboard` (`id`, `brand`, `name`, `active`, `created_at`) VALUES
(1, 'L-Link', 'quesrty', 1, '2020-10-08 08:37:49');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `t_manteinance`
--

CREATE TABLE `t_manteinance` (
  `id` int UNSIGNED NOT NULL,
  `computer_id` int UNSIGNED NOT NULL,
  `datetime_opened` timestamp NOT NULL,
  `datetime_closed` timestamp NULL DEFAULT NULL,
  `active` tinyint UNSIGNED NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `t_manteinance`
--

INSERT INTO `t_manteinance` (`id`, `computer_id`, `datetime_opened`, `datetime_closed`, `active`, `created_at`) VALUES
(1, 1, '2020-10-07 10:30:30', '2020-10-08 10:30:32', 1, '2020-10-08 18:33:04');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `t_marker`
--

CREATE TABLE `t_marker` (
  `id` int UNSIGNED NOT NULL,
  `element_type` varchar(255) NOT NULL,
  `element_id` int NOT NULL,
  `value` int UNSIGNED NOT NULL,
  `active` tinyint UNSIGNED NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `t_marker`
--

INSERT INTO `t_marker` (`id`, `element_type`, `element_id`, `value`, `active`, `created_at`) VALUES
(1, 'codic', 1, 12, 1, '2020-10-08 18:58:04');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `t_mobile`
--

CREATE TABLE `t_mobile` (
  `id` int UNSIGNED NOT NULL,
  `brand` varchar(255) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `active` tinyint UNSIGNED NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `t_mobile`
--

INSERT INTO `t_mobile` (`id`, `brand`, `name`, `active`, `created_at`) VALUES
(1, 'Samsung', 'Bombanucelar', 1, '2020-10-08 10:29:05');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `t_motherboard`
--

CREATE TABLE `t_motherboard` (
  `id` int UNSIGNED NOT NULL,
  `brand` varchar(255) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `form_factor` enum('atx','micro-atx','mini-itx') DEFAULT NULL,
  `socket` varchar(255) NOT NULL,
  `active` tinyint UNSIGNED NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `t_motherboard`
--

INSERT INTO `t_motherboard` (`id`, `brand`, `name`, `form_factor`, `socket`, `active`, `created_at`, `updated_at`) VALUES
(1, 'HEWLETT-PACKARD', 'CZC1012TSB', 'atx', 'AMD', 1, '2020-10-08 09:05:59', '2020-10-08 09:05:59');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `t_mouse`
--

CREATE TABLE `t_mouse` (
  `id` int UNSIGNED NOT NULL,
  `brand` varchar(255) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `active` tinyint UNSIGNED NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `t_mouse`
--

INSERT INTO `t_mouse` (`id`, `brand`, `name`, `active`, `created_at`) VALUES
(1, 'L-Link', 'cable', 1, '2020-10-08 08:39:11');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `t_net`
--

CREATE TABLE `t_net` (
  `id` int UNSIGNED NOT NULL,
  `brand` varchar(255) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `reference` varchar(255) NOT NULL,
  `type` enum('access_point','router','switch') NOT NULL,
  `ip` varchar(255) DEFAULT NULL,
  `wifi` tinyint UNSIGNED NOT NULL,
  `wifi_ssid` varchar(255) DEFAULT NULL,
  `rj_entries` int UNSIGNED NOT NULL,
  `space_id` int UNSIGNED NOT NULL,
  `marker_id` int UNSIGNED NOT NULL,
  `start_use` date NOT NULL,
  `end_use` date DEFAULT NULL,
  `active` tinyint UNSIGNED NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `t_net`
--

INSERT INTO `t_net` (`id`, `brand`, `name`, `reference`, `type`, `ip`, `wifi`, `wifi_ssid`, `rj_entries`, `space_id`, `marker_id`, `start_use`, `end_use`, `active`, `created_at`) VALUES
(1, 'tp-link', 'tl-sf1005d', 'referencia', 'switch', '19216801\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 1, 'muevete3', 5, 1, 4, '2020-10-05', '2020-10-08', 1, '2020-10-08 18:45:34'),
(2, 'tp-link', 'tl-sf1005d', 'referencia', 'switch', '192.168.0.1', 1, 'muevete3', 5, 1, 4, '2020-10-05', '2020-10-08', 1, '2020-10-08 18:46:49');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `t_net_connection`
--

CREATE TABLE `t_net_connection` (
  `id` int UNSIGNED NOT NULL,
  `device` enum('computer','tablet','mobile') NOT NULL,
  `device_id` int UNSIGNED NOT NULL,
  `net_id` int UNSIGNED NOT NULL,
  `wifi_ssid` varchar(255) DEFAULT NULL,
  `rj_entry` int UNSIGNED NOT NULL,
  `ip` varchar(255) DEFAULT NULL,
  `dns` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `subnet_mask` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `gateway` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `active` tinyint UNSIGNED NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `t_net_connection`
--

INSERT INTO `t_net_connection` (`id`, `device`, `device_id`, `net_id`, `wifi_ssid`, `rj_entry`, `ip`, `dns`, `subnet_mask`, `gateway`, `active`, `created_at`) VALUES
(1, 'computer', 1, 1, 'muevete3', 1, '192.168.0.120', '1.1.1.1', '255.255.255.0', '127.0.0.1', 1, '2020-10-08 18:49:10');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `t_os`
--

CREATE TABLE `t_os` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `version` int UNSIGNED NOT NULL,
  `memory` int UNSIGNED DEFAULT NULL,
  `active` tinyint UNSIGNED NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `t_os`
--

INSERT INTO `t_os` (`id`, `name`, `version`, `memory`, `active`, `created_at`) VALUES
(1, 'Windows', 10019041, 13, 1, '2020-10-08 18:59:22');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `t_os_license`
--

CREATE TABLE `t_os_license` (
  `id` int UNSIGNED NOT NULL,
  `license` varchar(255) NOT NULL,
  `os_id` int UNSIGNED NOT NULL,
  `active` tinyint UNSIGNED NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `t_os_license`
--

INSERT INTO `t_os_license` (`id`, `license`, `os_id`, `active`, `created_at`) VALUES
(1, '00330-80000-00000-AA136', 1, 1, '2020-10-08 19:00:05');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `t_os_session`
--

CREATE TABLE `t_os_session` (
  `id` int UNSIGNED NOT NULL,
  `os_id` int UNSIGNED NOT NULL,
  `session_id` int UNSIGNED NOT NULL,
  `active` int UNSIGNED NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `t_partition`
--

CREATE TABLE `t_partition` (
  `id` int UNSIGNED NOT NULL,
  `volume_name` varchar(255) NOT NULL,
  `size` bit(30) NOT NULL,
  `file_system` enum('ntfs','ext4','ext3','fat32','hfs','apfs') NOT NULL,
  `os_installed` tinyint UNSIGNED NOT NULL,
  `disk_id` int UNSIGNED DEFAULT NULL,
  `active` tinyint UNSIGNED NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `t_partition`
--

INSERT INTO `t_partition` (`id`, `volume_name`, `size`, `file_system`, `os_installed`, `disk_id`, `active`, `created_at`) VALUES
(1, 'Alumnos', b'000000000100100010001001100101', 'ntfs', 0, 1, 1, '2020-10-08 10:27:22');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `t_pci_connection`
--

CREATE TABLE `t_pci_connection` (
  `id` int UNSIGNED NOT NULL,
  `version` enum('1.0','2.0','3.0','4.0','5.0') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `channels` int NOT NULL,
  `motherboard_id` int UNSIGNED NOT NULL,
  `active` tinyint UNSIGNED NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `t_pci_connection`
--

INSERT INTO `t_pci_connection` (`id`, `version`, `channels`, `motherboard_id`, `active`, `created_at`) VALUES
(3, '1.0', 16, 16, 1, '2020-10-08 19:05:17');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `t_place`
--

CREATE TABLE `t_place` (
  `id` int UNSIGNED NOT NULL,
  `reference` varchar(255) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `postal_code` int UNSIGNED DEFAULT NULL,
  `active` tinyint UNSIGNED NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `t_place`
--

INSERT INTO `t_place` (`id`, `reference`, `address`, `postal_code`, `active`, `created_at`) VALUES
(1, 'EdificioA', 'Calle Manuel Azaña 3', 7458, 1, '2020-10-08 19:06:25');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `t_printer`
--

CREATE TABLE `t_printer` (
  `id` int UNSIGNED NOT NULL,
  `brand` varchar(255) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `reference` varchar(255) NOT NULL,
  `multifunction` tinyint UNSIGNED NOT NULL,
  `scanner` tinyint UNSIGNED NOT NULL,
  `double_sided` tinyint UNSIGNED NOT NULL,
  `wifi` tinyint UNSIGNED NOT NULL,
  `consumable` enum('toner','deposit','ink') NOT NULL,
  `color` tinyint UNSIGNED NOT NULL,
  `max_print_size` enum('A1','A2','A3','A4') NOT NULL,
  `marker_id` int UNSIGNED DEFAULT NULL,
  `space_id` int UNSIGNED NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date DEFAULT NULL,
  `active` tinyint UNSIGNED NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `t_printer`
--

INSERT INTO `t_printer` (`id`, `brand`, `name`, `reference`, `multifunction`, `scanner`, `double_sided`, `wifi`, `consumable`, `color`, `max_print_size`, `marker_id`, `space_id`, `start_date`, `end_date`, `active`, `created_at`) VALUES
(1, 'HEWLETT-PACKARD', 'LaserJet M479', 'LASERJET PRO M479FDN', 1, 1, 1, 1, 'toner', 1, 'A3', 1, 2, '2020-10-07', '2020-10-07', 1, '2020-10-08 09:22:56');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `t_projector`
--

CREATE TABLE `t_projector` (
  `id` int UNSIGNED NOT NULL,
  `brand` varchar(255) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `reference` varchar(255) NOT NULL,
  `high_px` int UNSIGNED NOT NULL,
  `width_px` int UNSIGNED NOT NULL,
  `marker_id` int UNSIGNED DEFAULT NULL,
  `start_date` date NOT NULL,
  `end_date` date DEFAULT NULL,
  `active` tinyint UNSIGNED NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `t_projector`
--

INSERT INTO `t_projector` (`id`, `brand`, `name`, `reference`, `high_px`, `width_px`, `marker_id`, `start_date`, `end_date`, `active`, `created_at`) VALUES
(1, 'HP', 'IMPRESORA', '6969699', 1920, 1080, 4, '2020-10-08', '2020-10-08', 1, '2020-10-08 10:32:38');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `t_ram`
--

CREATE TABLE `t_ram` (
  `id` int UNSIGNED NOT NULL,
  `brand` varchar(255) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `memory` int UNSIGNED NOT NULL,
  `cl` int UNSIGNED DEFAULT NULL,
  `max_voltage` int UNSIGNED NOT NULL,
  `base_voltage` int UNSIGNED NOT NULL,
  `base_frequency` float UNSIGNED DEFAULT NULL,
  `max_frequency` float UNSIGNED DEFAULT NULL,
  `active` tinyint UNSIGNED NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `t_ram`
--

INSERT INTO `t_ram` (`id`, `brand`, `name`, `type`, `memory`, `cl`, `max_voltage`, `base_voltage`, `base_frequency`, `max_frequency`, `active`, `created_at`) VALUES
(1, 'Kingston', 'HyperX', 'DDR4', 16, 16, 1350, 1200, 2400, 3466, 1, '2020-10-08 18:50:51'),
(2, 'Kingston', 'HyperX', 'DDR4', 16, 16, 1350, 1200, 2400, 3466, 1, '2020-10-08 18:50:54');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `t_ram_connection`
--

CREATE TABLE `t_ram_connection` (
  `id` int UNSIGNED NOT NULL,
  `memory_type` varchar(255) NOT NULL,
  `bank_label` varchar(255) DEFAULT NULL,
  `max_memory_frequency` float UNSIGNED DEFAULT NULL,
  `base_memory_frequency` float UNSIGNED DEFAULT NULL,
  `active` tinyint UNSIGNED NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `t_ram_connection`
--

INSERT INTO `t_ram_connection` (`id`, `memory_type`, `bank_label`, `max_memory_frequency`, `base_memory_frequency`, `active`, `created_at`, `updated_at`) VALUES
(1, 'DDR4', 'A1', 3.4, 2.4, 1, '2020-10-08 10:16:36', '2020-10-08 10:16:36');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `t_rol`
--

CREATE TABLE `t_rol` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `active` int UNSIGNED NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `t_rol`
--

INSERT INTO `t_rol` (`id`, `name`, `description`, `active`, `created_at`) VALUES
(1, 'Administrador', 'Gestiona a todos los usuarios', 1, '2020-10-08 08:52:55');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `t_sata_connection`
--

CREATE TABLE `t_sata_connection` (
  `id` int UNSIGNED NOT NULL,
  `version` enum('1.0','2.0','3.0','4.0','5.0','6.0') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `motherboard_id` int UNSIGNED NOT NULL,
  `active` tinyint UNSIGNED NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `t_sata_connection`
--

INSERT INTO `t_sata_connection` (`id`, `version`, `motherboard_id`, `active`, `created_at`) VALUES
(1, '3.0', 4, 1, '2020-10-08 08:42:40');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `t_screen`
--

CREATE TABLE `t_screen` (
  `id` int UNSIGNED NOT NULL,
  `brand` varchar(255) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `reference` varchar(255) NOT NULL,
  `high_px` int UNSIGNED NOT NULL,
  `width_px` int UNSIGNED NOT NULL,
  `hz` int UNSIGNED DEFAULT NULL,
  `inch` int UNSIGNED DEFAULT NULL,
  `marker_id` int UNSIGNED DEFAULT NULL,
  `start_date` date NOT NULL,
  `end_date` date DEFAULT NULL,
  `active` tinyint UNSIGNED NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `t_screen`
--

INSERT INTO `t_screen` (`id`, `brand`, `name`, `reference`, `high_px`, `width_px`, `hz`, `inch`, `marker_id`, `start_date`, `end_date`, `active`, `created_at`) VALUES
(1, 'HP', 'MONITOR', '696969', 1920, 1080, 60, 320, 3, '2020-10-08', '2020-02-18', 1, '2020-10-08 10:33:53');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `t_script_error`
--

CREATE TABLE `t_script_error` (
  `id` int UNSIGNED NOT NULL,
  `script_name` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `computer_session_id` int UNSIGNED DEFAULT NULL,
  `active` tinyint UNSIGNED NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `t_session`
--

CREATE TABLE `t_session` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `privileges` enum('admin','local') NOT NULL,
  `active` tinyint UNSIGNED NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `t_software`
--

CREATE TABLE `t_software` (
  `id` int UNSIGNED NOT NULL,
  `software_category_id` int UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `version` varchar(255) NOT NULL,
  `memory` int UNSIGNED NOT NULL,
  `active` int UNSIGNED NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `t_software`
--

INSERT INTO `t_software` (`id`, `software_category_id`, `name`, `version`, `memory`, `active`, `created_at`) VALUES
(1, 1, 'Open Office', '4.17', 42423424, 1, '2020-10-08 10:03:17');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `t_software_category`
--

CREATE TABLE `t_software_category` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `active` tinyint UNSIGNED NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `t_software_category`
--

INSERT INTO `t_software_category` (`id`, `name`, `active`, `created_at`) VALUES
(1, 'ofimatica', 1, '2020-10-08 10:04:11');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `t_space`
--

CREATE TABLE `t_space` (
  `id` int UNSIGNED NOT NULL,
  `reference` varchar(255) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `marker_id` int UNSIGNED DEFAULT NULL,
  `active` tinyint UNSIGNED NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `t_space`
--

INSERT INTO `t_space` (`id`, `reference`, `name`, `marker_id`, `active`, `created_at`) VALUES
(1, 'Aula', 'Perdida', 1, 1, '2020-10-08 19:06:54');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `t_supply_power`
--

CREATE TABLE `t_supply_power` (
  `id` int UNSIGNED NOT NULL,
  `brand` varchar(255) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `watts` int UNSIGNED DEFAULT NULL,
  `modular` tinyint UNSIGNED DEFAULT NULL,
  `active` tinyint UNSIGNED NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `t_supply_power`
--

INSERT INTO `t_supply_power` (`id`, `brand`, `name`, `watts`, `modular`, `active`, `created_at`) VALUES
(1, 'Tacens', 'Anima', 500, 1, 1, '2020-10-08 09:45:42');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `t_table`
--

CREATE TABLE `t_table` (
  `id` int NOT NULL,
  `reference` varchar(255) NOT NULL,
  `space_id` int UNSIGNED NOT NULL,
  `marker_id` int UNSIGNED DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `t_table`
--

INSERT INTO `t_table` (`id`, `reference`, `space_id`, `marker_id`, `active`, `created_at`) VALUES
(1, '10', 1, 1, 1, '2020-10-08 19:07:45');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `t_tablet`
--

CREATE TABLE `t_tablet` (
  `id` int UNSIGNED NOT NULL,
  `brand` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `active` tinyint UNSIGNED NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `t_tablet`
--

INSERT INTO `t_tablet` (`id`, `brand`, `name`, `active`, `created_at`) VALUES
(1, 'Huawei', 'Tablet', 1, '2020-10-08 10:34:37');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `t_usb_connection`
--

CREATE TABLE `t_usb_connection` (
  `id` int UNSIGNED NOT NULL,
  `version` enum('2.0','3.0','3.1') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `component_type` varchar(255) NOT NULL,
  `component_id` int UNSIGNED NOT NULL,
  `active` tinyint UNSIGNED NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `t_usb_connection`
--

INSERT INTO `t_usb_connection` (`id`, `version`, `component_type`, `component_id`, `active`, `created_at`) VALUES
(1, '3.0', '1', 1, 1, '2020-10-08 18:36:06');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `t_user`
--

CREATE TABLE `t_user` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `surname` varchar(255) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `rol_id` int UNSIGNED NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date DEFAULT NULL,
  `start_time` time DEFAULT NULL,
  `end_time` time DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `t_user`
--

INSERT INTO `t_user` (`id`, `name`, `surname`, `email`, `rol_id`, `start_date`, `end_date`, `start_time`, `end_time`, `active`, `created_at`) VALUES
(1, 'Carlos', 'Seda', 'carlosseda@gmail.com', 4, '2020-10-07', '2020-10-07', '10:30:33', '10:30:33', 1, '2020-10-08 08:57:48');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `t_user_mobile`
--

CREATE TABLE `t_user_mobile` (
  `id` int UNSIGNED NOT NULL,
  `user_id` int UNSIGNED NOT NULL,
  `mobile_id` int UNSIGNED NOT NULL,
  `active` tinyint UNSIGNED NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `t_user_mobile`
--

INSERT INTO `t_user_mobile` (`id`, `user_id`, `mobile_id`, `active`, `created_at`, `updated_at`) VALUES
(1, 30, 4, 1, '2020-10-08 10:35:28', '2020-10-08 10:35:28');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `t_user_rol`
--

CREATE TABLE `t_user_rol` (
  `id` int NOT NULL,
  `computer_id` int UNSIGNED NOT NULL,
  `user_id` int UNSIGNED NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `t_user_rol`
--

INSERT INTO `t_user_rol` (`id`, `computer_id`, `user_id`, `active`, `created_at`) VALUES
(1, 2, 1, 1, '2020-10-08 09:00:52');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `t_user_session`
--

CREATE TABLE `t_user_session` (
  `id` int UNSIGNED NOT NULL,
  `user_id` int UNSIGNED NOT NULL,
  `session_id` int UNSIGNED NOT NULL,
  `active` tinyint UNSIGNED NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `t_user_tablet`
--

CREATE TABLE `t_user_tablet` (
  `id` int UNSIGNED NOT NULL,
  `user_id` int UNSIGNED NOT NULL,
  `tablet_id` int UNSIGNED NOT NULL,
  `active` tinyint UNSIGNED NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `t_user_tablet`
--

INSERT INTO `t_user_tablet` (`id`, `user_id`, `tablet_id`, `active`, `created_at`, `updated_at`) VALUES
(1, 30, 4, 1, '2020-10-08 10:36:54', '2020-10-08 10:36:54');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `t_user_tracking`
--

CREATE TABLE `t_user_tracking` (
  `id` int UNSIGNED NOT NULL,
  `datetime` timestamp NOT NULL,
  `action` varchar(255) NOT NULL,
  `computer_session_id` int UNSIGNED NOT NULL,
  `active` tinyint UNSIGNED NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `t_user_tracking`
--

INSERT INTO `t_user_tracking` (`id`, `datetime`, `action`, `computer_session_id`, `active`, `created_at`) VALUES
(1, '2020-10-08 09:02:51', 'hackeo', 1, 1, '2020-10-08 09:02:51');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `t_backup`
--
ALTER TABLE `t_backup`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `t_base_installation`
--
ALTER TABLE `t_base_installation`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `t_chasis`
--
ALTER TABLE `t_chasis`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `t_computer`
--
ALTER TABLE `t_computer`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `t_computer_component`
--
ALTER TABLE `t_computer_component`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `t_computer_os`
--
ALTER TABLE `t_computer_os`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `t_computer_os_license`
--
ALTER TABLE `t_computer_os_license`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `t_computer_session`
--
ALTER TABLE `t_computer_session`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `t_computer_software`
--
ALTER TABLE `t_computer_software`
  ADD PRIMARY KEY (`id`),
  ADD KEY `software_id` (`software_id`),
  ADD KEY `computer_id` (`computer_id`);

--
-- Indices de la tabla `t_computer_user`
--
ALTER TABLE `t_computer_user`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `t_entry_supply`
--
ALTER TABLE `t_entry_supply`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `t_exit_supply`
--
ALTER TABLE `t_exit_supply`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `t_fan`
--
ALTER TABLE `t_fan`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `t_gpu`
--
ALTER TABLE `t_gpu`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `t_graphics_connection`
--
ALTER TABLE `t_graphics_connection`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `t_incidence`
--
ALTER TABLE `t_incidence`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `t_keyboard`
--
ALTER TABLE `t_keyboard`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `t_manteinance`
--
ALTER TABLE `t_manteinance`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `t_marker`
--
ALTER TABLE `t_marker`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `t_mobile`
--
ALTER TABLE `t_mobile`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `t_motherboard`
--
ALTER TABLE `t_motherboard`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `t_mouse`
--
ALTER TABLE `t_mouse`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `t_net`
--
ALTER TABLE `t_net`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `t_net_connection`
--
ALTER TABLE `t_net_connection`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `t_os`
--
ALTER TABLE `t_os`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `t_os_license`
--
ALTER TABLE `t_os_license`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `t_os_session`
--
ALTER TABLE `t_os_session`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `t_partition`
--
ALTER TABLE `t_partition`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `t_pci_connection`
--
ALTER TABLE `t_pci_connection`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `t_place`
--
ALTER TABLE `t_place`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `t_printer`
--
ALTER TABLE `t_printer`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `t_projector`
--
ALTER TABLE `t_projector`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `t_ram`
--
ALTER TABLE `t_ram`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `t_ram_connection`
--
ALTER TABLE `t_ram_connection`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `t_rol`
--
ALTER TABLE `t_rol`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `t_sata_connection`
--
ALTER TABLE `t_sata_connection`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `t_screen`
--
ALTER TABLE `t_screen`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `t_session`
--
ALTER TABLE `t_session`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `t_software`
--
ALTER TABLE `t_software`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `t_software_category`
--
ALTER TABLE `t_software_category`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `t_space`
--
ALTER TABLE `t_space`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `t_supply_power`
--
ALTER TABLE `t_supply_power`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `t_table`
--
ALTER TABLE `t_table`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `t_tablet`
--
ALTER TABLE `t_tablet`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `t_usb_connection`
--
ALTER TABLE `t_usb_connection`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `t_user`
--
ALTER TABLE `t_user`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `t_user_mobile`
--
ALTER TABLE `t_user_mobile`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `t_user_rol`
--
ALTER TABLE `t_user_rol`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `t_user_session`
--
ALTER TABLE `t_user_session`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `t_user_tablet`
--
ALTER TABLE `t_user_tablet`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `t_user_tracking`
--
ALTER TABLE `t_user_tracking`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `t_backup`
--
ALTER TABLE `t_backup`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `t_base_installation`
--
ALTER TABLE `t_base_installation`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `t_chasis`
--
ALTER TABLE `t_chasis`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `t_computer`
--
ALTER TABLE `t_computer`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `t_computer_component`
--
ALTER TABLE `t_computer_component`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `t_computer_os`
--
ALTER TABLE `t_computer_os`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `t_computer_os_license`
--
ALTER TABLE `t_computer_os_license`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `t_computer_session`
--
ALTER TABLE `t_computer_session`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `t_computer_software`
--
ALTER TABLE `t_computer_software`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `t_computer_user`
--
ALTER TABLE `t_computer_user`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `t_entry_supply`
--
ALTER TABLE `t_entry_supply`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `t_exit_supply`
--
ALTER TABLE `t_exit_supply`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `t_fan`
--
ALTER TABLE `t_fan`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `t_gpu`
--
ALTER TABLE `t_gpu`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `t_graphics_connection`
--
ALTER TABLE `t_graphics_connection`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `t_incidence`
--
ALTER TABLE `t_incidence`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `t_keyboard`
--
ALTER TABLE `t_keyboard`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `t_manteinance`
--
ALTER TABLE `t_manteinance`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `t_marker`
--
ALTER TABLE `t_marker`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `t_mobile`
--
ALTER TABLE `t_mobile`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `t_motherboard`
--
ALTER TABLE `t_motherboard`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `t_mouse`
--
ALTER TABLE `t_mouse`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `t_net`
--
ALTER TABLE `t_net`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `t_net_connection`
--
ALTER TABLE `t_net_connection`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `t_os`
--
ALTER TABLE `t_os`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `t_os_license`
--
ALTER TABLE `t_os_license`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `t_os_session`
--
ALTER TABLE `t_os_session`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `t_partition`
--
ALTER TABLE `t_partition`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `t_pci_connection`
--
ALTER TABLE `t_pci_connection`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `t_place`
--
ALTER TABLE `t_place`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `t_printer`
--
ALTER TABLE `t_printer`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `t_projector`
--
ALTER TABLE `t_projector`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `t_ram`
--
ALTER TABLE `t_ram`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `t_ram_connection`
--
ALTER TABLE `t_ram_connection`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `t_rol`
--
ALTER TABLE `t_rol`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `t_sata_connection`
--
ALTER TABLE `t_sata_connection`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `t_screen`
--
ALTER TABLE `t_screen`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `t_session`
--
ALTER TABLE `t_session`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `t_software`
--
ALTER TABLE `t_software`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `t_software_category`
--
ALTER TABLE `t_software_category`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `t_space`
--
ALTER TABLE `t_space`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `t_supply_power`
--
ALTER TABLE `t_supply_power`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `t_table`
--
ALTER TABLE `t_table`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `t_tablet`
--
ALTER TABLE `t_tablet`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `t_usb_connection`
--
ALTER TABLE `t_usb_connection`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `t_user`
--
ALTER TABLE `t_user`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `t_user_mobile`
--
ALTER TABLE `t_user_mobile`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `t_user_rol`
--
ALTER TABLE `t_user_rol`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `t_user_session`
--
ALTER TABLE `t_user_session`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `t_user_tablet`
--
ALTER TABLE `t_user_tablet`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `t_user_tracking`
--
ALTER TABLE `t_user_tracking`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `t_computer_software`
--
ALTER TABLE `t_computer_software`
  ADD CONSTRAINT `t_computer_software_ibfk_1` FOREIGN KEY (`computer_id`) REFERENCES `t_computer` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
