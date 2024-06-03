-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Temps de generació: 02-11-2023 a les 10:14:18
-- Versió del servidor: 10.4.24-MariaDB
-- Versió de PHP: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de dades: `tienda_ropa`
--

-- --------------------------------------------------------

--
-- Estructura de la taula `detalles_pedidos`
--

CREATE TABLE `detalles_pedidos` (
  `id_detalle_pedido` bigint(20) UNSIGNED NOT NULL,
  `id_pedido` bigint(20) UNSIGNED NOT NULL,
  `cantidad_productos` int(11) NOT NULL,
  `precio_total` decimal(8,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Bolcament de dades per a la taula `detalles_pedidos`
--

INSERT INTO `detalles_pedidos` (`id_detalle_pedido`, `id_pedido`, `cantidad_productos`, `precio_total`) VALUES
(15, 35, 2, '69.97'),
(16, 36, 1, '19.99'),
(17, 37, 1, '19.99'),
(18, 38, 1, '19.99'),
(19, 39, 1, '19.99'),
(21, 41, 2, '39.98');

-- --------------------------------------------------------

--
-- Estructura de la taula `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de la taula `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Bolcament de dades per a la taula `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(5, '2023_09_20_071848_create_clientes_table', 1),
(6, '2023_09_20_071946_create_clientes_table', 2),
(7, '2023_09_20_072045_create_productos_table', 3),
(8, '2023_09_20_072120_create_pedidos_compra_table', 4),
(9, '2023_09_20_072158_create_detalles_pedido_table', 5),
(11, '2023_10_03_071627_create_users_table', 7),
(43, '2023_10_17_111247_add_role_to_users_table', 9),
(70, '2023_10_16_065410_create_clientes_table', 10),
(88, '2014_10_12_000000_create_users_table', 11),
(89, '2014_10_12_100000_create_password_reset_tokens_table', 11),
(90, '2014_10_12_100000_create_password_resets_table', 11),
(91, '2019_08_19_000000_create_failed_jobs_table', 11),
(92, '2019_12_14_000001_create_personal_access_tokens_table', 11),
(93, '2023_10_16_065410_create_pedidos_compra_table', 11),
(94, '2023_10_16_065411_create_detalles_pedidos_table', 11),
(95, '2023_10_16_065411_create_productos_table', 11),
(96, '2023_10_18_072820_add_updated_at_to_users_table', 11),
(97, '2023_10_18_073111_update_users_table', 11),
(98, '2023_10_23_074317_add_column_role_id_user_table', 11),
(99, '2023_10_25_075724_create_tallas_table', 12),
(100, '2023_10_25_075752_create_producto_talla_table', 13),
(101, '2023_10_29_210755_create_pedidos_compra', 14),
(102, '2023_10_29_210927_create_detalles_pedidos', 15),
(103, '2023_10_30_105928_add_user_id_to_pedidos_compra', 16);

-- --------------------------------------------------------

--
-- Estructura de la taula `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de la taula `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de la taula `pedidos_compra`
--

CREATE TABLE `pedidos_compra` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `fecha_pedido` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `total_pedido` decimal(8,2) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Bolcament de dades per a la taula `pedidos_compra`
--

INSERT INTO `pedidos_compra` (`id`, `fecha_pedido`, `total_pedido`, `user_id`) VALUES
(35, '2023-11-02 06:26:59', '70.97', 5),
(36, '2023-10-30 11:25:36', '19.99', 9),
(37, '2023-10-30 11:29:51', '19.99', 9),
(38, '2023-10-30 11:31:14', '19.99', 9),
(39, '2023-10-30 11:40:10', '19.99', 3),
(40, '2023-10-30 11:45:06', '79.96', 9),
(41, '2023-10-31 07:23:55', '39.98', 3),
(44, '2023-11-01 23:00:00', '123.00', 5);

-- --------------------------------------------------------

--
-- Estructura de la taula `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de la taula `productos`
--

CREATE TABLE `productos` (
  `id_producto` bigint(20) UNSIGNED NOT NULL,
  `nom_producto` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `descripcion` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `precio` decimal(8,2) NOT NULL,
  `categoria` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Bolcament de dades per a la taula `productos`
--

INSERT INTO `productos` (`id_producto`, `nom_producto`, `descripcion`, `precio`, `categoria`) VALUES
(1, 'I am the high', 'Experimenta el estilo urbano al máximo con nuestra camiseta \"I Am at the High\". Una declaración audaz para quienes desean destacar en la ciudad.', '19.99', 'Camiseta'),
(2, 'Lesson', 'Descubre el toque urbano y moderno con nuestra camiseta \"Lesson\". Una lección de estilo que resalta tu autenticidad en las calles.', '29.99', 'Camiseta'),
(3, 'Blood urban', 'Explora la oscura elegancia y la rebeldía en cada costura con nuestra camiseta \"Blood Urban\". Diseñada para aquellos que abrazan la singularidad y desafían las normas, esta prenda te sumergirá en la esencia intrépida de la moda urbana. ', '29.99', 'Sudadera'),
(4, 'Street heart', 'Street Heart, la camiseta que late al ritmo de la ciudad. Con un diseño vibrante y moderno, esta prenda captura la esencia del corazón urbano. Perfecta para aquellos que viven y respiran el pulso de la calle.', '29.99', 'Sudadera'),
(5, 'Bearxx', 'Sumérgete en el estilo urbano con nuestra camiseta \"Bearxx\". Un diseño audaz y contemporáneo que captura la esencia única de la moda en la ciudad.', '29.99', 'Camiseta'),
(6, 'Big steps in silence', 'Conquista las calles con nuestra camiseta \"Big Steps in Silence\". Un estilo urbano que habla a través de la elegancia y la simplicidad, dando pasos firmes hacia la moda contemporánea.', '29.99', 'Camiseta'),
(7, 'Street urban smile', 'Descubre el auténtico encanto urbano con nuestra camiseta \"Street Urban Smile\". Una fusión de estilo y comodidad que refleja la alegría y la esencia de la vida en la ciudad. Sonríe y muestra tu verdadero estilo en las calles.', '29.99', 'Sudadera'),
(8, 'Urban melting smile', 'Sumérgete en la esencia del estilo urbano con nuestra exclusiva camiseta \"Sonrisa Derretida Urbana\". Esta prenda fusiona la frescura del diseño urbano con una dosis de creatividad derretida, creando una pieza única que captura la energía de la ciudad.', '29.99', 'Sudadera');

-- --------------------------------------------------------

--
-- Estructura de la taula `producto_talla`
--

CREATE TABLE `producto_talla` (
  `id_producto_talla` bigint(20) UNSIGNED NOT NULL,
  `id_producto` bigint(20) UNSIGNED NOT NULL,
  `id_talla` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Bolcament de dades per a la taula `producto_talla`
--

INSERT INTO `producto_talla` (`id_producto_talla`, `id_producto`, `id_talla`, `created_at`, `updated_at`) VALUES
(151, 1, 1, '2023-10-30 07:16:53', '2023-10-30 07:16:53'),
(152, 1, 2, '2023-10-30 07:16:53', '2023-10-30 07:16:53'),
(153, 1, 3, '2023-10-30 07:16:53', '2023-10-30 07:16:53'),
(154, 1, 4, '2023-10-30 07:16:53', '2023-10-30 07:16:53'),
(155, 1, 5, '2023-10-30 07:16:53', '2023-10-30 07:16:53'),
(156, 1, 11, '2023-10-30 07:16:53', '2023-10-30 07:16:53'),
(157, 2, 1, '2023-10-30 07:16:53', '2023-10-30 07:16:53'),
(158, 2, 2, '2023-10-30 07:16:53', '2023-10-30 07:16:53'),
(159, 2, 3, '2023-10-30 07:16:53', '2023-10-30 07:16:53'),
(160, 2, 4, '2023-10-30 07:16:53', '2023-10-30 07:16:53'),
(161, 2, 5, '2023-10-30 07:16:53', '2023-10-30 07:16:53'),
(162, 2, 11, '2023-10-30 07:16:53', '2023-10-30 07:16:53'),
(163, 3, 1, '2023-10-30 07:16:53', '2023-10-30 07:16:53'),
(164, 3, 2, '2023-10-30 07:16:53', '2023-10-30 07:16:53'),
(165, 3, 3, '2023-10-30 07:16:53', '2023-10-30 07:16:53'),
(166, 3, 4, '2023-10-30 07:16:53', '2023-10-30 07:16:53'),
(167, 3, 5, '2023-10-30 07:16:53', '2023-10-30 07:16:53'),
(168, 3, 11, '2023-10-30 07:16:53', '2023-10-30 07:16:53'),
(169, 4, 1, '2023-10-30 07:16:53', '2023-10-30 07:16:53'),
(170, 4, 2, '2023-10-30 07:16:53', '2023-10-30 07:16:53'),
(171, 4, 3, '2023-10-30 07:16:53', '2023-10-30 07:16:53'),
(172, 4, 4, '2023-10-30 07:16:53', '2023-10-30 07:16:53'),
(173, 4, 5, '2023-10-30 07:16:53', '2023-10-30 07:16:53'),
(174, 4, 11, '2023-10-30 07:16:53', '2023-10-30 07:16:53'),
(175, 5, 1, '2023-10-30 07:16:53', '2023-10-30 07:16:53'),
(176, 5, 2, '2023-10-30 07:16:53', '2023-10-30 07:16:53'),
(177, 5, 3, '2023-10-30 07:16:53', '2023-10-30 07:16:53'),
(178, 5, 4, '2023-10-30 07:16:53', '2023-10-30 07:16:53'),
(179, 5, 5, '2023-10-30 07:16:53', '2023-10-30 07:16:53'),
(180, 5, 11, '2023-10-30 07:16:53', '2023-10-30 07:16:53'),
(181, 6, 1, '2023-10-30 07:16:53', '2023-10-30 07:16:53'),
(182, 6, 2, '2023-10-30 07:16:53', '2023-10-30 07:16:53'),
(183, 6, 3, '2023-10-30 07:16:53', '2023-10-30 07:16:53'),
(184, 6, 4, '2023-10-30 07:16:53', '2023-10-30 07:16:53'),
(185, 6, 5, '2023-10-30 07:16:53', '2023-10-30 07:16:53'),
(186, 6, 11, '2023-10-30 07:16:53', '2023-10-30 07:16:53'),
(187, 7, 1, '2023-10-30 07:16:53', '2023-10-30 07:16:53'),
(188, 7, 2, '2023-10-30 07:16:53', '2023-10-30 07:16:53'),
(189, 7, 3, '2023-10-30 07:16:53', '2023-10-30 07:16:53'),
(190, 7, 4, '2023-10-30 07:16:53', '2023-10-30 07:16:53'),
(191, 7, 5, '2023-10-30 07:16:53', '2023-10-30 07:16:53'),
(192, 7, 11, '2023-10-30 07:16:53', '2023-10-30 07:16:53'),
(193, 8, 1, '2023-10-30 07:16:53', '2023-10-30 07:16:53'),
(194, 8, 2, '2023-10-30 07:16:53', '2023-10-30 07:16:53'),
(195, 8, 3, '2023-10-30 07:16:53', '2023-10-30 07:16:53'),
(196, 8, 4, '2023-10-30 07:16:53', '2023-10-30 07:16:53'),
(197, 8, 5, '2023-10-30 07:16:53', '2023-10-30 07:16:53'),
(198, 8, 11, '2023-10-30 07:16:53', '2023-10-30 07:16:53');

-- --------------------------------------------------------

--
-- Estructura de la taula `tallas`
--

CREATE TABLE `tallas` (
  `id_talla` bigint(20) UNSIGNED NOT NULL,
  `nom_talla` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Bolcament de dades per a la taula `tallas`
--

INSERT INTO `tallas` (`id_talla`, `nom_talla`, `created_at`, `updated_at`) VALUES
(1, 'XS', NULL, '2023-10-27 13:25:48'),
(2, 'S', NULL, NULL),
(3, 'M', NULL, NULL),
(4, 'L', NULL, NULL),
(5, 'XL', NULL, NULL),
(11, 'XXL', '2023-10-27 13:26:01', '2023-10-27 13:26:01');

-- --------------------------------------------------------

--
-- Estructura de la taula `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'normal'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Bolcament de dades per a la taula `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `role_id`, `role`) VALUES
(3, 'admin1', 'admin@gmail.com', NULL, '$2y$10$Lgs9poIkHrTurmAEXxo8TOEQHHP8Bc3r5ooczNE.OIpeRborLgCIm', '5fx1L5DN4bK8wfYSzuxkjnf10e0Ib2QaKBUswI8yCQFU8luUK42I1rc9iZ1h', '2023-10-24 06:44:43', '2023-10-31 07:24:43', 1, 'normal'),
(5, 'chupapio', 'chupapi@gmail.com', NULL, '$2y$10$fQ03rCk5yzk7lZReEusynekg0Ts.BKcx.89KVLO6yZt48B2oqgZ6q', NULL, '2023-10-24 07:54:14', '2023-10-28 23:16:41', 0, 'normal'),
(7, 'paolo', 'paolo@gmail.com', NULL, '$2y$10$Qt4gCiaJAigHHG/A9BBfROqoJRB2U4jr4SAB7QO6IxiLepXLPA5Sm', NULL, '2023-10-25 05:33:47', '2023-10-25 05:34:38', 0, 'normal'),
(8, 'Cristian', 'cristian@gmail.com', NULL, '$2y$10$GCsBgK8EsiyEfX8OUiSBJ.Y..0x61SiZME66W0eEYdcKClcgPF5P.', NULL, '2023-10-25 08:18:39', '2023-10-25 08:18:39', 0, 'normal'),
(9, 'Ruxyen', 'ruxyen@gmail.com', NULL, '$2y$10$ANYegklbE00HT5qNNHRrLuqw0JN2iF9LSYf4DRkBvUUnofsf4NoqW', NULL, '2023-10-27 09:30:36', '2023-10-27 09:30:36', 0, 'normal'),
(10, 'verg', 'verg@gmail.com', NULL, '$2y$10$QQfPAGF4ahVzxHorEozG8eZYTdlO21nlxxVe42D2c82qeMHn6EmbO', NULL, '2023-10-30 06:11:12', '2023-10-30 06:12:17', 0, 'normal'),
(11, 'hola', 'hola@gmail.com', NULL, '$2y$10$yTRGmiU0rvXcsLnGhnF6xefgkchbLB9YXGLPNGzorcZPpAafX2SO6', NULL, '2023-10-30 06:17:49', '2023-10-30 06:17:49', 0, 'normal');

--
-- Índexs per a les taules bolcades
--

--
-- Índexs per a la taula `detalles_pedidos`
--
ALTER TABLE `detalles_pedidos`
  ADD PRIMARY KEY (`id_detalle_pedido`),
  ADD KEY `detalles_pedidos_id_pedido_foreign` (`id_pedido`);

--
-- Índexs per a la taula `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Índexs per a la taula `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Índexs per a la taula `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Índexs per a la taula `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Índexs per a la taula `pedidos_compra`
--
ALTER TABLE `pedidos_compra`
  ADD PRIMARY KEY (`id`);

--
-- Índexs per a la taula `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Índexs per a la taula `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id_producto`);

--
-- Índexs per a la taula `producto_talla`
--
ALTER TABLE `producto_talla`
  ADD PRIMARY KEY (`id_producto_talla`),
  ADD KEY `producto_talla_id_producto_foreign` (`id_producto`),
  ADD KEY `producto_talla_id_talla_foreign` (`id_talla`);

--
-- Índexs per a la taula `tallas`
--
ALTER TABLE `tallas`
  ADD PRIMARY KEY (`id_talla`);

--
-- Índexs per a la taula `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT per les taules bolcades
--

--
-- AUTO_INCREMENT per la taula `detalles_pedidos`
--
ALTER TABLE `detalles_pedidos`
  MODIFY `id_detalle_pedido` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT per la taula `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT per la taula `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=104;

--
-- AUTO_INCREMENT per la taula `pedidos_compra`
--
ALTER TABLE `pedidos_compra`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT per la taula `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT per la taula `productos`
--
ALTER TABLE `productos`
  MODIFY `id_producto` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT per la taula `producto_talla`
--
ALTER TABLE `producto_talla`
  MODIFY `id_producto_talla` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=199;

--
-- AUTO_INCREMENT per la taula `tallas`
--
ALTER TABLE `tallas`
  MODIFY `id_talla` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT per la taula `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Restriccions per a les taules bolcades
--

--
-- Restriccions per a la taula `detalles_pedidos`
--
ALTER TABLE `detalles_pedidos`
  ADD CONSTRAINT `detalles_pedidos_id_pedido_foreign` FOREIGN KEY (`id_pedido`) REFERENCES `pedidos_compra` (`id`);

--
-- Restriccions per a la taula `producto_talla`
--
ALTER TABLE `producto_talla`
  ADD CONSTRAINT `producto_talla_id_producto_foreign` FOREIGN KEY (`id_producto`) REFERENCES `productos` (`id_producto`) ON DELETE CASCADE,
  ADD CONSTRAINT `producto_talla_id_talla_foreign` FOREIGN KEY (`id_talla`) REFERENCES `tallas` (`id_talla`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
