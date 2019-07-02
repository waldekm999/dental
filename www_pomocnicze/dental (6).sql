-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 02 Lip 2019, 21:00
-- Wersja serwera: 10.1.36-MariaDB
-- Wersja PHP: 7.2.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `dental`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_03_02_101320_add_users_details', 1),
(4, '2019_03_02_104158_add_specializations_table', 1),
(5, '2019_03_02_104220_add_roles_table', 1),
(6, '2019_03_02_104238_add_visits_table', 1),
(7, '2019_03_02_113517_add_user_status', 1),
(8, '2019_03_11_203552_add_foreigns_to_visits', 1),
(9, '2019_03_12_210844_create_specializations_has_user_table', 1),
(10, '2019_03_12_211744_create_roles_has_user_table', 1),
(11, '2019_03_14_200646_add_status_to_visits', 1),
(12, '2019_03_19_201552_change_visits_table', 1),
(13, '2019_03_19_202727_change_date_visits_table', 1),
(14, '2019_03_19_203019_adde_newdate_visits_table', 1),
(15, '2019_06_17_103047_create_visit_details_table', 1),
(16, '2019_06_17_110929_add_foreign_to_visit_details', 2);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `roles`
--

INSERT INTO `roles` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'user', '2019-03-02 11:25:08', '2019-03-02 11:25:08'),
(2, 'pre_user', '2019-03-02 11:25:08', '2019-03-02 11:25:08'),
(3, 'admin', '2019-03-02 11:25:08', '2019-03-02 11:25:08');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `roles_has_user`
--

CREATE TABLE `roles_has_user` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `specializations`
--

CREATE TABLE `specializations` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `specializations`
--

INSERT INTO `specializations` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'stomatologia', '2019-03-02 11:25:08', '2019-03-02 11:25:08'),
(2, 'chirurgia', '2019-03-02 11:25:08', '2019-03-02 11:25:08'),
(3, 'higienizacja', '2019-03-02 11:25:08', '2019-03-02 11:25:08'),
(4, 'protetyka', '2019-03-02 11:25:08', '2019-03-02 11:25:08'),
(5, 'rtg', '2019-03-02 11:25:08', '2019-03-02 11:25:08'),
(6, 'administracja', '2019-03-02 11:25:08', '2019-03-02 11:25:08');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `specializations_has_user`
--

CREATE TABLE `specializations_has_user` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `specialization_id` int(10) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `specializations_has_user`
--

INSERT INTO `specializations_has_user` (`id`, `specialization_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 2, 102, NULL, NULL),
(2, 1, 102, NULL, NULL),
(5, 1, 104, NULL, NULL),
(6, 6, 105, NULL, NULL),
(7, 3, 105, NULL, NULL),
(8, 1, 106, NULL, NULL),
(9, 2, 107, NULL, NULL),
(10, 5, 108, NULL, NULL),
(11, 2, 109, NULL, NULL),
(12, 4, 110, NULL, NULL),
(13, 1, 110, NULL, NULL),
(16, 4, 111, NULL, NULL),
(17, 1, 111, NULL, NULL),
(18, 5, 112, NULL, NULL),
(19, 6, 112, NULL, NULL),
(20, 1, 101, NULL, NULL),
(21, 1, 114, NULL, NULL),
(22, 1, 116, '2019-03-16 18:19:00', '2019-03-16 18:19:00'),
(24, 3, 103, '2019-03-21 15:06:17', '2019-03-21 15:06:17'),
(25, 6, 116, '2019-03-21 15:09:59', '2019-03-21 15:09:59');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `surname` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pesel` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` enum('patient','staff') COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `post_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `status` enum('active','inactive') COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `surname`, `pesel`, `phone`, `type`, `city`, `post_code`, `address`, `description`, `status`) VALUES
(1, 'Radosław', 'szczepanska.klara@onet.pl', NULL, '$2y$10$TbSEqoLwQlRkVNZdEm.2Su93Mr0RFzPe9VKFFmolS9bVwyooU1nZu', NULL, '2019-03-02 11:25:00', '2019-04-08 18:07:34', 'Urbański', '91234419643', '0048 913 067 884', 'patient', 'Kraków', '31-956', 'Brzozowa 12', NULL, NULL),
(2, 'Tomasz', 'kowalska.mariusz@gazeta.pl', NULL, '$2y$10$2HaA8q1Sltvs2kWZx.3NYOZuYtL77eln7I/GcC8vkbYhwrqEsg1ay', NULL, '2019-03-02 11:25:00', '2019-03-21 15:48:27', 'Lis', '63648581605', '0048(82)0844915', 'patient', 'Lubin', '30-609', 'Niepodległości 44A/401', NULL, NULL),
(3, 'Ksawery', 'bak.kalina@wojciechowska.pl', NULL, '$2y$10$DyACAQUS7YN3n1GxMmzg3eZhWqTcG0uQITUblKOjsMEZm.MN3bMVS', NULL, '2019-03-02 11:25:00', '2019-03-02 11:25:00', 'Woźniak', '28111549223', '+48 51 605 14 39', 'patient', 'Łomża', '49-751', 'Lisia 23A/47', NULL, NULL),
(4, 'Patryk', 'aniela79@nowicka.pl', NULL, '$2y$10$cWv6NmBbTj/x3agBNQdBZehwvHMmzdfXpAAxsMeknFZhEOMQCAupy', NULL, '2019-03-02 11:25:00', '2019-03-02 11:25:00', 'Duda', '6290751584', '+48 39 942 71 40', 'patient', 'Kraśnik', '89-666', 'Modlińska 56/40', NULL, NULL),
(5, 'Anna', 'patryk.zalewski@kubiak.net', NULL, '$2y$10$YqOnbr0GVbvb81zAUMO61e3y9.tSg/FiJQHNpbDTrrVGVN0raEPue', NULL, '2019-03-02 11:25:01', '2019-03-21 15:46:12', 'Andrzejewska', '46283622315', '+48 436 025 106', 'patient', 'Dzierżoniów', '46-068', NULL, NULL, NULL),
(6, 'Fabian', 'ikwiatkowski@onet.pl', NULL, '$2y$10$Pcj7DPn6S1R6jjxC2BIk0eXYqgmqpRbDhWmf/J46IzgJWvo03O/HO', NULL, '2019-03-02 11:25:01', '2019-04-11 06:51:30', 'Czarnecki', '99569107347', '0048 06 017 70 97', 'patient', 'Otwock', '88-902', 'Legnicka 02A', NULL, NULL),
(7, 'Olaf', 'marianna.wlodarczyk@marciniak.pl', NULL, '$2y$10$6TUA0xZegeyw0S3idga5XOV5AMxlRcZIWD1Kk60oHQ5Z9dZlkQETG', NULL, '2019-03-02 11:25:01', '2019-03-02 11:25:01', 'Głowacki', '60962944951', '(68) 632 92 89', 'patient', 'Zakopane', '22-416', 'Sucha 07/01', NULL, NULL),
(8, 'Mikołaj', 'uszulc@wp.pl', NULL, '$2y$10$l6JJTMgyzmF7s4Sc4mnyN.XoZLhXTrrtNXj46Ld4AQXryuSHg0aE.', NULL, '2019-03-02 11:25:01', '2019-03-02 11:25:01', 'Pawlak', '24774308925', '0048 14 620 33 62', 'patient', 'Łódź', '65-528', 'Orkana Władysława 08A/56', NULL, NULL),
(9, 'Alex', 'kazmierczak.kornelia@gmail.com', NULL, '$2y$10$g2xbWIEXYSbWOsvKr0YkyOeN3MW/7iUsNifQWrjR4JzoyefniJryW', NULL, '2019-03-02 11:25:01', '2019-03-02 11:25:01', 'Tomaszewska', '53129318552', '927 495 989', 'patient', 'Świdwin', '69-768', 'Krasińskiego Zygmunta 10A', NULL, NULL),
(10, 'Stanisław', 'szczepanski.jakub@onet.pl', NULL, '$2y$10$GpBkab.gbWWBiFnnQktTOeRThTE3WV.DQHocAh0.JJFvVO7WxsExC', NULL, '2019-03-02 11:25:01', '2019-03-02 11:25:01', 'Sadowska', '18915008287', '0048(80)9577642', 'patient', 'Gdynia', '55-176', 'Rybacka 78A', NULL, NULL),
(11, 'Dagmara', 'fchmielewski@jasinska.pl', NULL, '$2y$10$tL49eN.94RMzXkaSKggtG.dTV/Y0FcKU3x6/yoFpPQbWaGOC8bmZ.', NULL, '2019-03-02 11:25:01', '2019-03-02 11:25:01', 'Lewandowski', '23803005017', '0048(29)5342246', 'patient', 'Zawiercie', '54-447', 'Morcinka Gustawa 24/18', NULL, NULL),
(12, 'Anna', 'dawid.dabrowski@wp.pl', NULL, '$2y$10$IXcFTnv7Q40P9D2yZweb5ujgHQScnJ9OfjAkO3gIlkYLj0GPUGIdC', NULL, '2019-03-02 11:25:01', '2019-03-02 11:25:01', 'Krawczyk', '58988301352', '+48 633 745 388', 'patient', 'Lędziny', '62-060', 'Sowińskiego Józefa 23A', NULL, NULL),
(13, 'Oliwia', 'wojciechowski.lena@blaszczyk.com', NULL, '$2y$10$drleHt8SqeS50NMnAtsyxe.QSkbUeO.512kk71Iw6vc9mmd8I/vu2', NULL, '2019-03-02 11:25:01', '2019-03-02 11:25:01', 'Wróbel', '87437693693', '0048(30)6085399', 'patient', 'Łomianki', '55-706', 'Dąbrowskiej Marii 87A/39', NULL, NULL),
(14, 'Tomasz', 'ernest14@gazeta.pl', NULL, '$2y$10$1P78VircGOkzjXBJ39Ei9.xjyXbJO.w75i42OQg6Eq0OwgnImZN.G', NULL, '2019-03-02 11:25:01', '2019-03-02 11:25:01', 'Wiśniewski', '15262838415', '+48 92 238 93 39', 'patient', 'Gliwice', '59-646', 'Obrońców Westerplatte 56', NULL, NULL),
(15, 'Anna', 'alex87@pawlak.net', NULL, '$2y$10$KlbspytoGa22KjLr92hIxO5yYGNtvQfhd0xUKHbUXNb5.OZ8PDlkm', NULL, '2019-03-02 11:25:01', '2019-03-02 11:25:01', 'Jasiński', '26520146187', '+48 123 561 546', 'patient', 'Sochaczew', '62-447', 'Królowej Jadwigi 19A/82', NULL, NULL),
(16, 'Wojciech', 'patrycja43@gmail.com', NULL, '$2y$10$9ZfIgV3IFsFgJEM2PNWMlulscm0i6MdjFoUN3dmHAahwygGHrYoAK', NULL, '2019-03-02 11:25:01', '2019-03-02 11:25:01', 'Szczepański', '67485339536', '0048(47)1688668', 'patient', 'Tarnów', '15-868', 'Niedziałkowskiego Mieczysława 27A/23', NULL, NULL),
(17, 'Marta', 'antoni.kaczmarczyk@dabrowska.net', NULL, '$2y$10$HmcsVgxDOL5zJ13/IijEfuIkg4SBg8RIe//SJVgJDoPddcspZAfQe', NULL, '2019-03-02 11:25:01', '2019-03-02 11:25:01', 'Jankowski', '92571126502', '+48 38 454 80 92', 'patient', 'Pilchowo', '36-169', '1 Maja 86A/89', NULL, NULL),
(18, 'Laura', 'malwina14@rutkowska.pl', NULL, '$2y$10$zRwX/SNdZuQB6vnKHLXlW.gvcUtFbqkW8/ZqoH12DHc8KmfricmyG', NULL, '2019-03-02 11:25:01', '2019-03-02 11:25:01', 'Wróbel', '46886288685', '350607260', 'patient', 'Radomsko', '38-734', 'Żeromskiego Stefana 26A', NULL, NULL),
(19, 'Róża', 'czarnecka.magdalena@zakrzewska.pl', NULL, '$2y$10$T8fYF01klTRIAmE1bL.akOoZfU.eeksDtVmg4zJi2c9luFrlDYng.', NULL, '2019-03-02 11:25:01', '2019-03-02 11:25:01', 'Mazurek', '14952076479', '(20) 493 24 38', 'patient', 'Postęp', '29-089', 'Okulickiego Leopolda 39A/40', NULL, NULL),
(20, 'Aleksander', 'adamczyk.juliusz@onet.pl', NULL, '$2y$10$tAJAgRne1RD8sesfjOxm6OxLyr2eA/uSmY51zWQpu4NpMQ64JAPcG', NULL, '2019-03-02 11:25:02', '2019-03-02 11:25:02', 'Walczak', '50477295533', '+48 41 206 79 75', 'patient', 'Wągrowiec', '19-381', 'Jagiellońska 13A/63', NULL, NULL),
(21, 'Aleksandra', 'kucharska.kornel@kozlowska.net', NULL, '$2y$10$uo6k5xosKldhDVZBediORuU1sEBieQ37.rTxUxWVBLwug.l3vjFha', NULL, '2019-03-02 11:25:02', '2019-03-02 11:25:02', 'Szymczak', '82358099459', '0048 702 746 326', 'patient', 'Pęcice', '76-121', 'Działkowa 36/19', NULL, NULL),
(22, 'Robert', 'agata.czerwinski@gmail.com', NULL, '$2y$10$GPLuuhMwSQdnmE4rE0GSKusbni/NvJqFLqUHmB4SvQ5VwWONfVqua', NULL, '2019-03-02 11:25:02', '2019-03-02 11:25:02', 'Szczepański', '69242383066', '0048(77)9693396', 'patient', 'Płock', '51-718', 'Długa 21/73', NULL, NULL),
(23, 'Józef', 'sokolowska.kajetan@wp.pl', NULL, '$2y$10$JY76JIfLKBJOcJhtvHw8nun5vEEUJRDvEMIbsW.XESi83RRus2Ne2', NULL, '2019-03-02 11:25:02', '2019-03-02 11:25:02', 'Marciniak', '9605581331', '0048 160 185 448', 'patient', 'Brodnica', '17-848', 'Mokra 82A', NULL, NULL),
(24, 'Tola', 'sebastian.dabrowska@dabrowska.pl', NULL, '$2y$10$fTKBrsW/Wn81hUQsKWh8yeDMu52xqO1jQ4R/A755.AFDPh4n491q6', NULL, '2019-03-02 11:25:02', '2019-03-02 11:25:02', 'Wilk', '54203550095', '+48(84)5970916', 'patient', 'Kamień', '01-199', 'Czwartaków 30/60', NULL, NULL),
(25, 'Maciej', 'duda.sara@yahoo.com', NULL, '$2y$10$8K.nzxPwhkZnZeDdnZ0Rs.2ImeG8YCJzm.DXNN5RncnJX9KE3tUqy', NULL, '2019-03-02 11:25:02', '2019-03-02 11:25:02', 'Mazur', '33153702058', '+48(18)5527434', 'patient', 'Lubartów', '67-692', 'Wysoka 07', NULL, NULL),
(26, 'Rafał', 'marcelina45@interia.pl', NULL, '$2y$10$o7Nzk2gnH.RreuPrTxFOl.Z4w7zn4AqJ2W0RFSP4PGO6RlgaK0v/6', NULL, '2019-03-02 11:25:02', '2019-03-02 11:25:02', 'Piotrowska', '87549269525', '(70) 674 86 77', 'patient', 'Bogatynia', '81-864', 'Pawia 02', NULL, NULL),
(27, 'Krzysztof', 'marianna22@krupa.com.pl', NULL, '$2y$10$R0Gp2nl5aPDNwJ2IKqIceexqOnapDBgd.ASVHiFkwDDWQqDTG94RW', NULL, '2019-03-02 11:25:02', '2019-03-02 11:25:02', 'Zawadzki', '57242312805', '+48 131 495 654', 'patient', 'Przemyśl', '89-416', 'Struga Andrzeja 47A', NULL, NULL),
(28, 'Aurelia', 'szymczak.natasza@baran.pl', NULL, '$2y$10$5D3YdlEWMCvA.I7vJ5ZufuU/gJxkTx9qUG.rMHqRIr0FSQnbmaNlq', NULL, '2019-03-02 11:25:02', '2019-03-02 11:25:02', 'Laskowski', '32590785533', '0048 62 355 05 10', 'patient', 'Piła', '54-488', 'Kopalniana 17', NULL, NULL),
(29, 'Fabian', 'marika.rutkowska@baranowska.net', NULL, '$2y$10$65uvn1/sZ.GTmm4bpdwNgOmkSTOZ2Om/CMB2Sn7MJ64KqAVMdvl5y', NULL, '2019-03-02 11:25:02', '2019-03-02 11:25:02', 'Borkowska', '63837037602', '0048 45 781 46 92', 'patient', 'Lublin', '09-163', 'Żurawia 86A/79', NULL, NULL),
(30, 'Ksawery', 'aurelia.olszewska@wp.pl', NULL, '$2y$10$0ueAGAqJy/p4050Br9i1uOB3SCgLlplMWeddGsUl4vFT40zXAA3Cm', NULL, '2019-03-02 11:25:02', '2019-03-02 11:25:02', 'Witkowska', '89489168253', '0048 359 127 110', 'patient', 'Pieszyce', '89-628', 'Reymonta Władysława 90', NULL, NULL),
(31, 'Alicja', 'sebastian.kaminska@kozlowska.com', NULL, '$2y$10$FHl8/LEuymRuRhNQOphuLe7KJJBdlKQtYfegMikQVwvzMYWwgXEtm', NULL, '2019-03-02 11:25:02', '2019-03-02 11:25:02', 'Nowak', '16315922204', '580 044 456', 'patient', 'Jadowniki', '19-721', 'Wojska Polskiego Al. 62/74', NULL, NULL),
(32, 'Hubert', 'tola62@brzezinska.net', NULL, '$2y$10$fti8OqQbvCXJT9J.xxxQjeuRKBokhJeu/befiBUd3zF9/1hCD70iW', NULL, '2019-03-02 11:25:02', '2019-03-02 11:25:02', 'Michalska', '39485579562', '(57) 574 00 32', 'patient', 'Kalisz', '59-089', 'Waryńskiego Ludwika 51/36', NULL, NULL),
(33, 'Błażej', 'jaworski.andrzej@makowska.org', NULL, '$2y$10$boQl3GLq9AFX21..P.ayjuppxhF7CyHLO0oqikLelJl/QvFHFTBIi', NULL, '2019-03-02 11:25:02', '2019-03-02 11:25:02', 'Tomaszewska', '31998374722', '0048 136 558 217', 'patient', 'Ustka', '08-163', 'Daleka 16A/83', NULL, NULL),
(34, 'Juliusz', 'tola.kaczmarek@gazeta.pl', NULL, '$2y$10$.K9Dh9OJjdPf8d3oBAU.nusFnQbqAkAfLZftotWOEVUfB9/BBvzj6', NULL, '2019-03-02 11:25:02', '2019-03-02 11:25:02', 'Kowalski', '26879040708', '+48(57)1997943', 'patient', 'Gdynia', '35-611', 'Zgierska 17A/98', NULL, NULL),
(35, 'Albert', 'nina.olszewski@jasinski.pl', NULL, '$2y$10$2WPLLDXhV32cTBIw22UB5ONZhAQfk3QyEcRMIBI9xgq9AChK4MDO6', NULL, '2019-03-02 11:25:03', '2019-03-02 11:25:03', 'Lewandowski', '60342057139', '+48 206 643 597', 'patient', 'Świebodzin', '83-257', 'Krzywa 07A/81', NULL, NULL),
(36, 'Maria', 'nina.cieslak@onet.pl', NULL, '$2y$10$Jm/CyLvQjZuAbQ08ngf.pO.aWVBKFPcN6WwD79oxfr8/FyYEjxqpS', NULL, '2019-03-02 11:25:03', '2019-03-02 11:25:03', 'Sawicka', '49601449833', '+48 43 051 68 43', 'patient', 'Kętrzyn', '05-942', 'Pola Wincentego 31A', NULL, NULL),
(37, 'Piotr', 'tomaszewski.wojciech@bak.pl', NULL, '$2y$10$.qa9DxqfkT.O8edvzFl/7uaHv7zNHL1H/3V9DMWou2VBz46JA8KCO', NULL, '2019-03-02 11:25:03', '2019-03-02 11:25:03', 'Jakubowski', '51719470319', '293235518', 'patient', 'Głogów', '02-817', 'Wolności 19A/63', NULL, NULL),
(38, 'Milena', 'makowski.nikodem@gazeta.pl', NULL, '$2y$10$pY7u/RVppUSUGI5wX5RG0.7SyEkjuLMvxZTNknKjydAcQTfCgEtYi', NULL, '2019-03-02 11:25:03', '2019-03-02 11:25:03', 'Makowski', '74598791150', '+48 22 375 35 77', 'patient', 'Żywiec', '70-894', 'Witosa Wincentego 65', NULL, NULL),
(39, 'Ewelina', 'mazur.roksana@wp.pl', NULL, '$2y$10$zb88ZVCbtOxzGK5YuvD8L.2/oExG5RHm2Vh/.Bn3tnvovvTrOTU6u', NULL, '2019-03-02 11:25:03', '2019-03-02 11:25:03', 'Piotrowski', '45937809028', '996169313', 'patient', 'Leszno', '18-581', 'Cisowa 46A/93', NULL, NULL),
(40, 'Blanka', 'xbak@onet.pl', NULL, '$2y$10$TxypCF5CRj/dPOSYkEhJ2OtUMU5mFw7bd72M3oS7zOhs20N42nVaq', NULL, '2019-03-02 11:25:03', '2019-03-02 11:25:03', 'Kowalczyk', '17780799382', '(56) 183 60 87', 'patient', 'Krapkowice', '57-868', 'Rolnicza 19A/80', NULL, NULL),
(41, 'Jędrzej', 'fprzybylska@pietrzak.pl', NULL, '$2y$10$2ZwfLpC26Vmw4CqcNX0PIOv9/Y7dNI9WCJwoqiAKeLaEPSgRA01bS', NULL, '2019-03-02 11:25:03', '2019-03-02 11:25:03', 'Kalinowska', '1261255521', '0048 103 966 128', 'patient', 'Ruda Śląska', '44-053', 'Tysiąclecia 74A/75', NULL, NULL),
(42, 'Dagmara', 'zuzanna.szewczyk@wp.pl', NULL, '$2y$10$ZKpmOrwUIqs.sNbXOquyr.BRY7KisUVRyL.yEzQaWXnpCtrWfbf02', NULL, '2019-03-02 11:25:03', '2019-03-02 11:25:03', 'Brzeziński', '93925808516', '054 739 459', 'patient', 'Grodzisk Mazowiecki', '48-669', 'Barlickiego Norberta 23/25', NULL, NULL),
(43, 'Konstanty', 'fmajewski@mazur.pl', NULL, '$2y$10$.wtdxMKJmifSW/1OuFI4uueAxRj0vTsryy5l2CsLQsdtTysfudnEO', NULL, '2019-03-02 11:25:03', '2019-03-02 11:25:03', 'Wysocki', '38794192604', '+48 554 022 099', 'patient', 'Wilkowice', '38-148', 'Kłosowa 67', NULL, NULL),
(44, 'Daniel', 'pkucharski@pawlowska.com', NULL, '$2y$10$K9dHWFhv.u/7cChfLnxRGOqD7xnLKxZbUtmN9pguX6L78SnW8B1r2', NULL, '2019-03-02 11:25:03', '2019-03-02 11:25:03', 'Król', '74709948906', '+48 218 343 129', 'patient', 'Pułtusk', '32-319', 'Skośna 42/45', NULL, NULL),
(45, 'Julia', 'gkrupa@onet.pl', NULL, '$2y$10$.wYP8NPtFsDhCTzTGP8yROdJ/tWJzdHUYtbyOPBGOZe9hQtkssyzm', NULL, '2019-03-02 11:25:03', '2019-03-02 11:25:03', 'Duda', '78345078964', '+48 76 866 41 93', 'patient', 'Ostrowiec Świętokrzyski', '20-734', 'Lwowska 44A/18', NULL, NULL),
(46, 'Leonard', 'mieszko69@gmail.com', NULL, '$2y$10$BoNt4M2.8vosJkGsiEGeFu4H.sdtdtI.w25dLy1O3eGAKYHiU3lly', NULL, '2019-03-02 11:25:03', '2019-03-02 11:25:03', 'Kamiński', '67888758259', '+48 87 730 41 93', 'patient', 'Turek', '48-932', 'Łabędzia 60', NULL, NULL),
(47, 'Marcelina', 'michalina.szymczak@wilk.info', NULL, '$2y$10$tMOURJVAgnvSvVAzW2eO2OeR06mwdfYXXfQxzacrPf6ZOQMv4berK', NULL, '2019-03-02 11:25:03', '2019-03-02 11:25:03', 'Kowalski', '62961028774', '647130251', 'patient', 'Starachowice', '07-862', 'Parkowa 68', NULL, NULL),
(48, 'Bianka', 'pchmielewski@gmail.com', NULL, '$2y$10$2kaMESz.w.bGL/jdVy.FGOW5QDcK.RpzSOJvfvWgFQdoxayeLkhei', NULL, '2019-03-02 11:25:03', '2019-03-02 11:25:03', 'Sobczak', '33680729317', '+48(15)4295701', 'patient', 'Jeziorna', '69-463', 'Okólna 92/67', NULL, NULL),
(49, 'Bianka', 'hmajewska@yahoo.com', NULL, '$2y$10$54OiB14ZCNc73t14JMNYKOjzZI5T890K3102DAKEeT37Xz4m8IF0e', NULL, '2019-03-02 11:25:03', '2019-03-02 11:25:03', 'Gajewski', '15366631533', '0048 038 258 631', 'patient', 'Wola Kiedrzyńska', '06-146', 'Małopolska 57A', NULL, NULL),
(50, 'Krzysztof', 'maria37@yahoo.com', NULL, '$2y$10$gUofsccYG7Jx5/b/32lPIu/jE93W5kXGTlQwckHfu7mRiKVCN/JWG', NULL, '2019-03-02 11:25:04', '2019-03-02 11:25:04', 'Czarnecka', '72536659102', '(42) 385 30 54', 'patient', 'Konin', '67-574', 'Konarskiego Stanisława 49', NULL, NULL),
(51, 'Jacek', 'bmajewska@maciejewska.info', NULL, '$2y$10$yWeH1FP6hfa1ZsoGj7KKhe2vU/l38Nflp1LR71mUjhHMc0eBZ/G6e', NULL, '2019-03-02 11:25:04', '2019-03-02 11:25:04', 'Sawicki', '37122330453', '0048 713 720 787', 'patient', 'Szczawin', '42-234', 'Sokola 91', NULL, NULL),
(52, 'Zuzanna', 'konrad.sadowska@piotrowski.com.pl', NULL, '$2y$10$QJulyoYTqH/iHYD7nmzEhuYAzUaJFBhiMb8OYuizkLSjxgE8tjJmu', NULL, '2019-03-02 11:25:04', '2019-03-02 11:25:04', 'Maciejewska', '68250952380', '0048(76)7583231', 'patient', 'Rzeszów', '12-382', 'Wielkopolska 96A', NULL, NULL),
(53, 'Hubert', 'jczarnecka@michalak.info', NULL, '$2y$10$hxGatF9fmNjgOur0.mWzIO7I3JVeEbSd8KQN2p7GmiOt/ilNxS3gW', NULL, '2019-03-02 11:25:04', '2019-03-02 11:25:04', 'Ziółkowski', '17909804613', '+48 710 446 245', 'patient', 'Iława', '49-034', 'Lechicka 10', NULL, NULL),
(54, 'Paulina', 'mazurek.karolina@onet.pl', NULL, '$2y$10$jCMSO8XEUwi0RHcc1IApMuTrTV7X1OPAJfZgtMLWpe9MZwixOjQN.', NULL, '2019-03-02 11:25:04', '2019-03-02 11:25:04', 'Wasilewska', '74135481453', '(39) 003 50 46', 'patient', 'Gniezno', '16-948', 'Stroma 14A', NULL, NULL),
(55, 'Elżbieta', 'ryszard82@gmail.com', NULL, '$2y$10$BUzZs614TGKIGzPMOr6zauar8cvS9NJk2LtfIlCClgBthfdoTY/t2', NULL, '2019-03-02 11:25:04', '2019-03-02 11:25:04', 'Baranowski', '10857299950', '218264860', 'patient', 'Sanok', '08-122', 'Miarki Karola 65', NULL, NULL),
(56, 'Urszula', 'malwina14@onet.pl', NULL, '$2y$10$6X.I2binOuDpMrSjHHQdZuQBgrasNPxMeSujyIKusUKK2iR8d8iNS', NULL, '2019-03-02 11:25:04', '2019-03-02 11:25:04', 'Kamiński', '69786993363', '0048(73)8457895', 'patient', 'Lędziny', '85-617', 'Królewska 83A/74', NULL, NULL),
(57, 'Łukasz', 'purbanski@interia.pl', NULL, '$2y$10$E5tOG21fJoTZLJFRipy61Oy7jD/h6OnQkv3w8hmteyNIUEycE2KwG', NULL, '2019-03-02 11:25:04', '2019-03-02 11:25:04', 'Zawadzka', '13649430419', '0048(57)8977877', 'patient', 'Starachowice', '84-429', 'Sucharskiego Henryka 18A', NULL, NULL),
(58, 'Łukasz', 'sebastian25@wp.pl', NULL, '$2y$10$9ch/Suxpt.UK3.8X1EXELe.RlYxDLVhngjFAK0FO4TSe1SY0yiyW6', NULL, '2019-03-02 11:25:04', '2019-03-02 11:25:04', 'Przybylski', '90759677275', '+48(38)7373603', 'patient', 'Sieradz', '27-618', 'Magazynowa 35A', NULL, NULL),
(59, 'Marcelina', 'agata.wilk@interia.pl', NULL, '$2y$10$8pY2GHRi7cXCCXE9hL/LaOPDIIzpV1QSB8TycPsXlxwsodtRLW7ai', NULL, '2019-03-02 11:25:04', '2019-03-02 11:25:04', 'Wójcik', '10380419418', '754895778', 'patient', 'Nowa Sól', '31-520', 'Husarska 46A/40', NULL, NULL),
(60, 'Sebastian', 'upiotrowski@yahoo.com', NULL, '$2y$10$zcjuysQZfBJefI6llXTpi.KF2egEqlQw5eM2RkU5zWtqMXv4O/pja', NULL, '2019-03-02 11:25:04', '2019-03-02 11:25:04', 'Urbański', '93309429889', '+48(35)7666179', 'patient', 'Pabianice', '96-048', 'Łomżyńska 53', NULL, NULL),
(61, 'Maurycy', 'izabela.wozniak@duda.com.pl', NULL, '$2y$10$h/2TnUbezRxuiIrAXC1Exe/gEoeH/YTnEpeU/Rg2i4MabaHvS9mR2', NULL, '2019-03-02 11:25:04', '2019-03-02 11:25:04', 'Wysocki', '87193221292', '563 029 536', 'patient', 'Sosnowiec', '44-171', 'Władysława IV 28A/52', NULL, NULL),
(62, 'Eliza', 'skubiak@kozlowski.pl', NULL, '$2y$10$9zJ4QamcFoI0zHcJPZ/aTuPv8BHxQb3g6pi6x/OiQd3qZnGE5QmkS', NULL, '2019-03-02 11:25:04', '2019-03-02 11:25:04', 'Dąbrowska', '28914526118', '581025482', 'patient', 'Inowrocław', '86-854', 'Wiejska 94A/46', NULL, NULL),
(63, 'Laura', 'eliza45@wisniewska.com.pl', NULL, '$2y$10$snBTb22tWPGzLmuKmAnpv.0VFwycLjSHuIBTTb.yZ5snajwa8n6Y6', NULL, '2019-03-02 11:25:04', '2019-03-02 11:25:04', 'Szczepański', '19336949077', '(47) 372 93 64', 'patient', 'Brodnica', '16-867', 'Chorzowska 50', NULL, NULL),
(64, 'Aniela', 'jlewandowski@wisniewski.pl', NULL, '$2y$10$C6GwG8PJavHjLGDvX4aQt.gXfb8ZodTYmIlM./4Q/jcjOXUUGAQjO', NULL, '2019-03-02 11:25:04', '2019-03-02 11:25:04', 'Kaczmarek', '85551967589', '331361891', 'patient', 'Inowrocław', '12-320', 'Szczecińska 50A/89', NULL, NULL),
(65, 'Michał', 'gabriela.wroblewski@wp.pl', NULL, '$2y$10$A75igmUL6ww6v86rIHwU/.4Y8i6Pt0fTkL0Sef3F0TI.kmnE0ZZyO', NULL, '2019-03-02 11:25:05', '2019-03-02 11:25:05', 'Jakubowski', '43833288581', '251 193 505', 'patient', 'Bochnia', '10-394', 'Barlickiego Norberta 13', NULL, NULL),
(66, 'Julianna', 'czerwinski.zuzanna@yahoo.com', NULL, '$2y$10$S.tDjfNA237HC1kLZ2b8QeSb6hUHVtquBBCoXSXZQAoLlt/Y445Bm', NULL, '2019-03-02 11:25:05', '2019-03-02 11:25:05', 'Borkowska', '64974805734', '0048 42 179 19 14', 'patient', 'Kraków', '94-154', 'Beskidzka 46A', NULL, NULL),
(67, 'Anastazja', 'krol.sonia@krajewski.pl', NULL, '$2y$10$/Lf5Jij77H0jfScXD0niyepgftUiYJQ4I.cEq2Cxss3FZzUDc4z/y', NULL, '2019-03-02 11:25:05', '2019-03-02 11:25:05', 'Głowacka', '62775012129', '+48 93 447 08 91', 'patient', 'Łomianki', '34-819', 'Wesoła 15A', NULL, NULL),
(68, 'Daniela', 'mroz.aleksandra@onet.pl', NULL, '$2y$10$2D3L6D0du.dlgEIbL11OAuBVqgC1h5XBKIMdE/2h5sPmNsaLPiJXm', NULL, '2019-03-02 11:25:05', '2019-03-02 11:25:05', 'Brzezińska', '77756035821', '0048(01)0646008', 'patient', 'Tczew', '25-210', 'Leśna 84/84', NULL, NULL),
(69, 'Gabriel', 'lucja37@yahoo.com', NULL, '$2y$10$G9IxG1OxhmKJwFg/DQgJQuSoHerRWrvjvJMIkpHo8wJTYM0iH1fT2', NULL, '2019-03-02 11:25:05', '2019-03-02 11:25:05', 'Olszewska', '75500210210', '+48(96)9449569', 'patient', 'Radom', '14-461', 'Lazurowa 32A', NULL, NULL),
(70, 'Paulina', 'jkrajewska@wp.pl', NULL, '$2y$10$0LmuqLJ9VZGt5RePweY6zOBZG3.cN26yHZgx/aLe1Ve2dzSE0KKz6', NULL, '2019-03-02 11:25:05', '2019-03-02 11:25:05', 'Michalak', '29856243963', '0048(11)4766221', 'patient', 'Gorzów Wielkopolski', '38-235', 'Malczewskiego Jacka 49A/88', NULL, NULL),
(71, 'Krzysztof', 'vjankowski@szymanski.org', NULL, '$2y$10$CkYa/I0gT7rImkhj6MGZJuZF4GVT0eWgaVNgsSN/WMnC.gSEhHYMe', NULL, '2019-03-02 11:25:05', '2019-03-02 11:25:05', 'Gajewski', '19486536753', '+48 296 409 742', 'patient', 'Wola Kiedrzyńska', '90-205', 'Topolowa 72A', NULL, NULL),
(72, 'Konrad', 'lena10@jankowska.net', NULL, '$2y$10$kKsm74yqUKM.NOSsNoqCZuaiomXTeNmyaU6gESI4XvVBnOGup6MwC', NULL, '2019-03-02 11:25:05', '2019-03-02 11:25:05', 'Zawadzki', '5934064755', '513 913 909', 'patient', 'Grodzisk Mazowiecki', '78-137', 'Makuszyńskiego Kornela 29', NULL, NULL),
(73, 'Jędrzej', 'lidia.makowska@pawlak.pl', NULL, '$2y$10$wIR0kD91NlXHhsBBpeTc.egv40DSYs6eIdD18fmhrblZJRSb10NQW', NULL, '2019-03-02 11:25:05', '2019-03-02 11:25:05', 'Laskowski', '18596612337', '0048 093 132 829', 'patient', 'Szczecin', '98-160', 'Księżycowa 37A', NULL, NULL),
(74, 'Marcelina', 'marek82@nowakowska.pl', NULL, '$2y$10$rv/aHDFp0ZxR1k7Ifusk6OaLnkPeN7vYAgJBlwStsBXHVWj4OZIB6', NULL, '2019-03-02 11:25:05', '2019-03-02 11:25:05', 'Kołodziej', '94905070649', '129 032 753', 'patient', 'Olsztyn', '97-731', 'Wyzwolenia 21', NULL, NULL),
(75, 'Daniel', 'kacper91@kolodziej.pl', NULL, '$2y$10$GDfUkZ9g853dOdZaF19oJ.biyUxfJUS0Gtaau6orB2PCW1C8jKKmu', NULL, '2019-03-02 11:25:05', '2019-03-02 11:25:05', 'Wiśniewska', '49724261170', '303169718', 'patient', 'Józefów', '52-270', 'Mostowa 91/74', NULL, NULL),
(76, 'Leonard', 'qpiotrowski@krupa.pl', NULL, '$2y$10$6Xt10Cqo.2C1luGMNmIscOh3ppGGjWdEMg4C4z5TE1pBx3EaIiszW', NULL, '2019-03-02 11:25:05', '2019-03-02 11:25:05', 'Zawadzki', '92175175310', '+48 575 498 619', 'patient', 'Szteklin', '22-671', 'Rynek 32A/95', NULL, NULL),
(77, 'Olgierd', 'radoslaw.kowalska@gorska.pl', NULL, '$2y$10$t4THN0feii1T6ID8FN7rY.2pv43VQ1DjHpK.f.qLLY/fjJygmt7AS', NULL, '2019-03-02 11:25:05', '2019-03-02 11:25:05', 'Cieślak', '78189546981', '+48 78 654 21 66', 'patient', 'Knurów', '02-442', 'Sąsiedzka 71/85', NULL, NULL),
(78, 'Fabian', 'czarnecka.nikola@wp.pl', NULL, '$2y$10$slLXKX.0IzqIJ7lelAjQieqY199vRKcv4DfphWVZWkQxf9L1CWjPS', NULL, '2019-03-02 11:25:05', '2019-03-02 11:25:05', 'Majewska', '80865689900', '+48 197 745 458', 'patient', 'Jemielnica', '39-192', 'Świętojańska 16', NULL, NULL),
(79, 'Natalia', 'nadia79@yahoo.com', NULL, '$2y$10$AymogJ/sAsxHkpC1av/gZuqxfj.cAnKgyieZ4dW/qX2TN.4QAJ6a2', NULL, '2019-03-02 11:25:05', '2019-03-02 11:25:05', 'Sadowski', '5305006357', '+48 84 411 64 45', 'patient', 'Białystok', '92-403', 'Zwierzyniecka 40/08', NULL, NULL),
(80, 'Krystian', 'leonard78@sobczak.pl', NULL, '$2y$10$If9M9DNQYO8wIysSRcBux.NAapbOsp.fSAxOd60SgrnB/TUaK5aFK', NULL, '2019-03-02 11:25:06', '2019-03-02 11:25:06', 'Kozłowski', '1539861856', '0048 970 253 716', 'patient', 'Giżycko', '27-065', 'Szeroka 50A', NULL, NULL),
(81, 'Grzegorz', 'witold.michalak@onet.pl', NULL, '$2y$10$jBbATmJF89.gO72nGohmwOVg01qTdUgDyQpoDJFLUw6iRx7tRup2q', NULL, '2019-03-02 11:25:06', '2019-03-02 11:25:06', 'Sadowski', '68433245888', '0048 643 153 627', 'patient', 'Malbork', '41-278', 'Dąbrowskiej Marii 87A', NULL, NULL),
(82, 'Natan', 'nowak.alex@gazeta.pl', NULL, '$2y$10$Q04xWAxQSRB2dSZKGX0nh.KMuX.7oDYt0.IZYUfAJbf9/wBZVUFTe', NULL, '2019-03-02 11:25:06', '2019-03-02 11:25:06', 'Kaźmierczak', '93353131292', '265 021 106', 'patient', 'Iława', '29-410', 'Sowińskiego Józefa 62', NULL, NULL),
(83, 'Łukasz', 'nowicka.wiktoria@onet.pl', NULL, '$2y$10$8RrKK06jsdAok0Prz1VGS.wYM5PWOs7Hjz/gpXuVXDMSw38hz66UW', NULL, '2019-03-02 11:25:06', '2019-03-02 11:25:06', 'Kozłowska', '82825489317', '0048(26)1839809', 'patient', 'Gliwice', '15-194', 'Małachowskiego Stanisława 76A/18', NULL, NULL),
(84, 'Tadeusz', 'wilk.katarzyna@andrzejewska.net', NULL, '$2y$10$SBLS/91T8la3XIVexXhewu4brcXuAztPaTwOivg1FyyUr0coakyzi', NULL, '2019-03-02 11:25:06', '2019-03-02 11:25:06', 'Zakrzewska', '56811252923', '(32) 266 17 45', 'patient', 'Świdnica', '31-635', 'Niemcewicza Juliana Ursyna 10', NULL, NULL),
(85, 'Antoni', 'mwieczorek@kubiak.com.pl', NULL, '$2y$10$IuZVwJkoWU1je7c8IQNRquBqyf2pAPlOTuegAHpRPfkX4GaIcgg6.', NULL, '2019-03-02 11:25:06', '2019-03-02 11:25:06', 'Sokołowski', '38121388583', '+48 90 812 17 14', 'patient', 'Konin', '94-371', 'Świętokrzyska 98/28', NULL, NULL),
(86, 'Dominik', 'kaminska.liwia@gazeta.pl', NULL, '$2y$10$TeeSrXxZfpXsJuvfJXpz.eQRxKKHI.oafTxhlcE0ETbWGl99nH3ge', NULL, '2019-03-02 11:25:06', '2019-03-02 11:25:06', 'Brzeziński', '11175545016', '+48 921 023 512', 'patient', 'Łomianki', '96-146', 'Dworcowa 47A', NULL, NULL),
(87, 'Monika', 'alicja.maciejewska@gazeta.pl', NULL, '$2y$10$1z6EUpkd8iehS2esHStip.xG4XinGU335urZDU403S74KMnYZA73q', NULL, '2019-03-02 11:25:06', '2019-03-02 11:25:06', 'Maciejewski', '68636744305', '+48(91)9418685', 'patient', 'Chorzów', '02-108', 'Olimpijska 50A', NULL, NULL),
(88, 'Jeremi', 'brzezinski.ida@dudek.com', NULL, '$2y$10$TW.gtn9mvIi7pLQNWu7LLecTEQnJQl7ZAxaXazpMFhR11pyucpinq', NULL, '2019-03-02 11:25:06', '2019-03-02 11:25:06', 'Grabowski', '11809302860', '+48 86 508 91 50', 'patient', 'Boguszów-Gorce', '91-027', 'Traugutta Romualda 40/61', NULL, NULL),
(89, 'Gabriel', 'duda.agnieszka@cieslak.net', NULL, '$2y$10$iVUcYM2neP7vQffk7tIg/eAWpqfONveC9wH9Hp3KLqJN2EhZH3YEa', NULL, '2019-03-02 11:25:06', '2019-03-02 11:25:06', 'Krawczyk', '3451511318', '196935906', 'patient', 'Sieradz', '17-322', 'Botaniczna 40A/70', NULL, NULL),
(90, 'Alan', 'weronika.michalski@tomaszewski.com.pl', NULL, '$2y$10$tugyJ3r0S2iZ5/J1MnfZ0u7YHPNseFfEtJijNu73JK5eSIJwmUwOK', NULL, '2019-03-02 11:25:06', '2019-03-02 11:25:06', 'Stępień', '7970255159', '+48 75 596 77 57', 'patient', 'Jelcz-Laskowice', '81-440', 'Wańkowicza Melchiora 49', NULL, NULL),
(91, 'Marcin', 'justyna.gorecka@wp.pl', NULL, '$2y$10$B1NR4cbpepNn3gn/YufIrOhoxv3CRUpXIZYLGvJ3zgmz4LaduCCYO', NULL, '2019-03-02 11:25:06', '2019-03-02 11:25:06', 'Błaszczyk', '69321237543', '0048 758 959 338', 'patient', 'Głogów', '70-213', 'Ligonia Juliusza 79', NULL, NULL),
(92, 'Mariusz', 'kubiak.witold@jakubowska.pl', NULL, '$2y$10$APBdisRkmXyykppgBkdPyu2UP9nH5sJ.0Ncb9t/C7lvlfQOzpIgGW', NULL, '2019-03-02 11:25:06', '2019-03-02 11:25:06', 'Piotrowski', '73535297329', '+48 05 384 15 55', 'patient', 'Rynarzewo', '52-855', 'Wyspiańskiego Stanisława 09A', NULL, NULL),
(93, 'Sonia', 'asawicki@szymanska.net', NULL, '$2y$10$wNzz69OBHeXSkM13C75VAe/mPiXzCb06.rm4zVWV8Ircyyw44fZRy', NULL, '2019-03-02 11:25:06', '2019-03-02 11:25:06', 'Jankowska', '5729745847', '+48 870 763 415', 'patient', 'Opole', '20-867', 'Wańkowicza Melchiora 66A/89', NULL, NULL),
(94, 'Maks', 'ada.wroblewska@andrzejewska.pl', NULL, '$2y$10$ZXFWNdKE8GocmIG0JQrTd.G54yBX7q/e5mt1wlhh3W7PfGIhGnjFG', NULL, '2019-03-02 11:25:07', '2019-03-02 11:25:07', 'Jasiński', '33587822252', '0048(20)0673237', 'patient', 'Józefów', '69-541', 'Konopnickiej Marii 51A', NULL, NULL),
(95, 'Grzegorz', 'sandra.duda@onet.pl', NULL, '$2y$10$l24/bGATtS9Ekaw5WvqUi.ymoMGmwOzSF7XM3ZGsHlqVu28J3C6Jm', NULL, '2019-03-02 11:25:07', '2019-03-02 11:25:07', 'Zielińska', '87556564995', '0048(65)7744242', 'patient', 'Łomża', '80-427', 'Handlowa 36', NULL, NULL),
(96, 'Marcin', 'szymon.olszewski@chmielewski.pl', NULL, '$2y$10$oOJebExm7vSJf/ceYnCLFOlS3O9XyccGg11CR7RtElwA3oBHdKWG.', NULL, '2019-03-02 11:25:07', '2019-03-21 16:03:34', 'Adamski', '21917600070', '48 49 752 22 61', 'patient', 'Pieszyce', '18-317', 'Rybacka 20', NULL, NULL),
(97, 'Robert', 'sokolowska.kornelia@adamska.com.pl', NULL, '$2y$10$5ZKUL4zVU2W02A6D.O7Une441RB7HZtJMuYK3O12cY0h5krrcC5wa', NULL, '2019-03-02 11:25:07', '2019-03-02 11:25:07', 'Kaczmarczyk', '0647897200', '+48(92)8968612', 'patient', 'Kuźnica Masłońska', '70-084', 'Śląska 76/23', NULL, NULL),
(98, 'Damian', 'milosz.piotrowska@wrobel.com.pl', NULL, '$2y$10$XpFUUjG8SibH2zISXOurtuERib3l3d/cC4a7.T1gNknJGrCYW.Y6y', NULL, '2019-03-02 11:25:07', '2019-03-02 11:25:07', 'Głowacka', '96610306032', '+48(74)5534848', 'patient', 'Cieszyn', '53-630', 'Złota 58/12', NULL, NULL),
(99, 'Weronika', 'jerzy09@szymanski.org', NULL, '$2y$10$5vi2.Mb.XDJOwT8EW4Zw2u7I1Ou68TKulpn5j0cpyW3zdXdng0tBe', NULL, '2019-03-02 11:25:07', '2019-03-02 11:25:07', 'Szczepański', '95153446976', '+48 18 286 75 61', 'patient', 'Piotrków Trybunalski', '04-807', 'Kleeberga Franciszka 52', NULL, NULL),
(100, 'Janina', 'qjankowski@wp.pl', NULL, '$2y$10$H2KnenY/Y2HlN91pcBTd5uCs6YR6LSQ.VKYN3w0XNY8jdzBYmvbUe', NULL, '2019-03-02 11:25:07', '2019-03-02 11:25:07', 'Wysocka', '57655095756', '0048(61)7370986', 'patient', 'Sosnowiec', '73-856', 'Lawendowa 56/91', NULL, NULL),
(101, 'Łukasz', 'lukasz@sobczak.pl', NULL, '$2y$10$FGO.gaOGAoU9Fd9JQSkQo.zVxOJBSG2spW23kmGFUsrJCjLjmAUna', NULL, '2019-03-02 11:25:07', '2019-04-11 18:25:17', 'Sobczak', '63515212940', '+48 446 275 265', 'staff', 'Kamienica Królewska', '94-021', 'Wyszkowska 12', 'Węch jego i głowa zarastały wówczas bujnie i dziko siwym włosem, sterczącym nieregularnie. Azaliż szedł tedy na wprost', 'active'),
(102, 'Fabina', 'dsobczak@gmail.com', NULL, '$2y$10$ET.I16MjsPnsrlaEqKV6JOomly0g6DfZS.2JR2ukwMPaPcSTJFfF2', NULL, '2019-03-02 11:25:07', '2019-04-08 18:01:28', 'Ziółkowska', '63499248126', '+48(95)4064510', 'staff', 'Wyszków', '77-147', 'Wąska 49/13', 'Tantalidów, cały smutny i jałowy Olimp, więdnący od lat w tym pustym mieszkaniu. Nalewał do.', 'active'),
(103, 'Michalina', 'wojciech08@tomaszewska.org', NULL, '$2y$10$9wenwzHZ1c3QL1eXbMMy7uPV8MyqOgMOWVhR3V3K0q.HDVK6PD9OS', NULL, '2019-03-02 11:25:07', '2019-04-08 18:02:47', 'Wysocka', '59591848994', '0048 87 976 10 88', 'staff', 'Pułtusk', '80-819', 'Zabramma 34', 'Ach, ten dziki obłęd popłochu, pisany błyszczącą, czarną linią na tablicy podłogi. Ach, te krzyki.', 'inactive'),
(104, 'Kamil', 'sadowska.maja@grabowski.pl', NULL, '$2y$10$mUzZQbi6WiAic2NZYVPPX.r.VBk3WO3aE9pE2erqw.GK5nKkMgTBW', NULL, '2019-03-02 11:25:07', '2019-03-02 11:25:07', 'Rutkowski', '79291728574', '+48 70 712 13 81', 'staff', 'Krapkowice', '49-996', 'Rejtana Tadeusza 15/78', 'Nie chcemy z nim bez sprzeciwu, w dziwnej zgodzie, zdrętwiały spokojną grozą, odpoznając.', 'active'),
(105, 'Nina', 'sara.przybylska@wroblewska.pl', NULL, '$2y$10$LocvTjO5qKy3u0ic.9EOM.7dOWMJdrlM2WpaVOr4K/3B9Mntqb5.m', NULL, '2019-03-02 11:25:07', '2019-03-02 11:25:07', 'Sawicki', '65408111007', '+48 104 377 724', 'staff', 'Jaworzno', '54-737', 'Bukowa 99A/19', 'Przestrzeń sklepu rozszerzyła się w wytrawnych, doskonałych i skomplikowanych materiałach, my.', 'active'),
(106, 'Błażej', 'izabela.przybylska@wieczorek.com.pl', NULL, '$2y$10$tkOlF7yqmZ98s03gkB9aOOazNPXADdBktpSFKP58f5Tn/hC1kZl/q', NULL, '2019-03-02 11:25:07', '2019-03-02 11:25:07', 'Dudek', '70741777290', '+48 20 441 94 63', 'staff', 'Jastarnia', '17-388', 'Mała 53A/85', 'Zdawało się, że zasklepiają się w głębi miasta, żeby tak rzec, ulice podwójne, ulice sobowtóry. Ulice pełne zgiełku zatem', 'active'),
(107, 'Olaf', 'gajewska.krzysztof@borkowska.net', NULL, '$2y$10$7FAEyV2n2RjszqwssbHpzOzdl9UNDzAyfuv5.2so5/9O3y8BId.5y', NULL, '2019-03-02 11:25:07', '2019-03-02 11:25:07', 'Borkowski', '55500989447', '0048(96)9620069', 'staff', 'Bieruń', '36-159', 'Szmaragdowa 65A/85', 'Nie poprzestając na wylęganiu coraz nowych egzemplarzy, ojciec mój mówił: - Jakże pełna uroku i.', 'active'),
(108, 'Jagoda', 'anna.krajewski@adamska.pl', NULL, '$2y$10$z9HLPO8dgiufTuFQEf3T2.1bbt67RbOB.PQLUUJKdupoLajdXrXT2', NULL, '2019-03-02 11:25:07', '2019-03-02 11:25:07', 'Makowski', '77770924690', '515094869', 'staff', 'Jastarnia', '70-581', 'Robotnicza 35', 'Głowonogi, żółwie i ogromne kraby, zawieszone na belkach sufitu jako kandelabry i pająki.', 'active'),
(109, 'Hubert', 'damian.kazmierczak@malinowski.org', NULL, '$2y$10$vNJid8AeaHbq/1Yzzio32u1TYv7DD46984Nv2kELjcruj45enZsYe', NULL, '2019-03-02 11:25:08', '2019-03-02 11:25:08', 'Sokołowski', '82816567210', '+48 443 010 143', 'staff', 'Zduńska Wola', '91-144', 'Niecała 65/85', 'Broda jego zjeżyła się dziwnie, wiechcie i pędzle włosów, strzelające z brodawek, z brwi, z czego tam po ręką', 'active'),
(110, 'Karola', 'amelia72@glowacka.com.pl', NULL, '$2y$10$FmTeS1D/MQym5uwqtNSRKeZsiFsHoTGS.LdIZYSmX2bZKOd3PnjwW', NULL, '2019-03-02 11:25:08', '2019-03-02 11:25:08', 'Górska', '63745846750', '147555563', 'staff', 'Czechowice-Dziedzice', '40-212', 'Węglowa 04A', 'Było to w tym punkcie sprzeniewierzyć się jej i przechylić w te wątpliwe, ryzykowne i dwuznaczne.', 'active'),
(111, 'Grzegorz', 'agata16@lewandowska.pl', NULL, '$2y$10$z3juCa1SBaJ.UrYHFCKd0enMfaMKa2y3HdrRJK8ab39HditleuNo.', NULL, '2019-03-02 11:25:08', '2019-03-02 11:25:08', 'Mróz', '60770379875', '0048 25 372 55 47', 'staff', 'Kielce', '37-983', 'Żółkiewskiego Stanisława 25', 'O, ironio tych nazw, tych pozorów! Czy jest w gruncie rzeczy wysłowić niewymowną udatność tej.', 'active'),
(112, 'Elżbieta', 'helena.olszewska@nowak.com', NULL, '$2y$10$CmgcOyc/mXlAVc0p.M3s6.Paem6JuH.xfKO7Z2n6bINCGvd7UncmW', NULL, '2019-03-02 11:25:08', '2019-03-02 11:25:08', 'Stępień', '68536389240', '0048 158 951 416', 'staff', 'Nowy Sącz', '42-842', 'Patriotów 02A/16', 'Wielkie i ciemne tłumy płynęły w ciemności, w hałaśliwym zmieszaniu, w szurgocie tysięcy nóg, w.', 'active'),
(113, 'Iga', 'mjablonska@wp.pl', NULL, '$2y$10$S0W6Md/JYie7K65yI3.aLeQhDUQtFpEolRU/z8oFY5WOqs9SenLCK', NULL, '2019-03-04 19:29:30', '2019-03-04 19:58:19', 'Jankowska', '55354108544', '(14) 840 87 92', 'staff', 'Lędziny', '24-583', NULL, 'Czarne oczy wbiły się we śnie przewiercić, przewędrować na wskroś całe wielkie lato: cisza.', 'inactive'),
(114, 'Aleksandra', 'lis.inga@wp.pl', NULL, '$2y$10$hZRWF/HW7/BaPBe00X93D.zmlWU93LJSe5xvliKTnWSxiBZhgeYj2', NULL, '2019-03-04 19:32:56', '2019-03-04 19:32:56', 'Nowak', '58276269411', '+48 94 522 52 44', 'staff', 'Lubin', '17-367', NULL, 'Ale rozpacz smrodliwego zaułka tak długo biła głową w ślepy parkan z poziomych desek, zamykającą i.', 'active'),
(116, 'Waldek', 'waldekm999@wp.pl', NULL, 'secret', NULL, '2019-03-16 18:19:00', '2019-04-12 09:10:02', 'Małecki', '12345678999', '999999999', 'staff', 'Opole', '45-860', NULL, NULL, 'inactive'),
(117, 'Jerzy', 'jurek@wp.pl', NULL, 'secret', NULL, '2019-03-19 10:47:34', '2019-03-19 10:47:34', 'Dziambok', '99121212345', '980765432', 'patient', 'Opole', '42-300', NULL, NULL, NULL),
(119, 'Janek', 'janek@dzbanek.pl', NULL, '$2y$10$IGynDWyPKzLbQ.jzj6TpLe.8I0IceWuWdw9W6RoHYVTEasbmcFFsO', '52X2uj52UuMwvbkUAj3FtB0eRZp4dewBj1MpKqF4nefcObom9f98iw0hT8Dm', '2019-04-05 17:32:24', '2019-04-11 06:50:50', 'Dzbanek', '12345678991', '999999999', 'patient', 'Ozimek', '45-100', 'Jodłowa 1', NULL, NULL),
(120, 'Zenon', 'zenek@wp.pl', NULL, '$2y$10$vdosmoa45VAd3jE/nBU0BuiJjy81bpw3UXPkY9CNDuNDignKjk0Ou', NULL, '2019-04-05 17:34:39', '2019-04-05 17:34:39', 'Grednyj', '99121012345', '48 49 752 22 61', 'patient', 'Opole', '45-860', NULL, NULL, NULL),
(121, 'Janek', 'janek@onet.pl', NULL, '$2y$10$0lh5ej1luM5DnhXQ0l.X/eHh7cayoC.gISYtol.aesmc0Mdq.SgNS', NULL, '2019-04-05 17:41:03', '2019-04-05 17:41:03', 'Dziambok', '12345612345', '123456789', 'patient', 'Ozimek', '45-100', NULL, NULL, NULL),
(122, 'Amelia', 'waldekm999@gmail.com', NULL, '$2y$10$LfQAwlONV3Bb2dqQqQvnaeS/CdG5eHY.xG.l4qH8e2RGH3gnauzBe', 'qIZm31kCpSQU4cae6Z3oCZAhhn3MrHELL4y3aZyZ7aEP06uRuqgq0ij5RBLp', '2019-04-11 18:18:58', '2019-04-12 09:50:36', 'Bogdanowska', '98765432189', '666999888', 'patient', 'Opole', '45-865', 'Pużaka 234', NULL, NULL),
(123, 'Renata', 'k.piernikorz@op.pl', NULL, '$2y$10$HADsAC1B09tDgRt8zWdGruWbF4yZCVCPhmVQBU1feLXYF1i1xkW92', NULL, '2019-06-21 06:30:04', '2019-06-21 06:30:04', 'Piekorz', '87526613626', '502035247', 'patient', 'Opole', '45-860', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `visits`
--

CREATE TABLE `visits` (
  `id` int(10) UNSIGNED NOT NULL,
  `doctor_id` bigint(20) UNSIGNED NOT NULL,
  `patient_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `status` char(24) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `time_in` time NOT NULL,
  `time_out` time NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `visits`
--

INSERT INTO `visits` (`id`, `doctor_id`, `patient_id`, `created_at`, `updated_at`, `description`, `status`, `time_in`, `time_out`, `date`) VALUES
(8, 106, 12, '2019-03-02 11:25:07', '0000-00-00 00:00:00', 'całkiem spoko wizyta', 'wizyta', '12:00:00', '12:30:00', '2019-03-10'),
(9, 106, 12, NULL, NULL, NULL, 'wizyta', '09:30:00', '10:00:00', '2019-03-27'),
(10, 107, 16, NULL, NULL, NULL, 'wizyta', '10:00:00', '11:00:00', '2019-03-25'),
(11, 107, 96, '2019-03-19 20:43:44', '2019-03-19 20:43:44', 'haha', 'wizyta', '08:00:00', '08:30:00', '2019-04-23'),
(12, 107, 96, '2019-03-19 20:54:17', '2019-03-19 20:54:17', 'To nie będzie łatwa wizyta', 'wizyta', '09:00:00', '09:30:00', '2019-04-12'),
(13, 109, 68, '2019-03-19 21:04:58', '2019-03-19 21:04:58', NULL, 'wizyta', '10:00:00', '10:30:00', '2019-04-23'),
(14, 102, 45, '2019-03-19 21:07:18', '2019-03-19 21:07:18', NULL, 'wizyta', '00:00:11', '11:30:00', '2019-04-23'),
(15, 107, 96, '2019-03-19 21:11:53', '2019-03-19 21:11:53', NULL, 'wizyta', '10:30:00', '11:00:00', '2019-03-29'),
(16, 102, 5, '2019-03-25 19:05:21', '2019-03-25 19:05:21', NULL, 'wizyta', '10:00:00', '10:30:00', '2019-05-06'),
(17, 107, 119, '2019-04-11 06:27:33', '2019-04-11 06:27:33', 'Próbna wizyta celem zdefiniowania listy dla pojedynczego pacjenta', 'wizyta', '12:00:00', '12:30:00', '2019-05-16'),
(18, 105, 119, '2019-04-11 06:47:55', '2019-04-11 06:47:55', 'kolejna wizyta naszego Janka', 'wizyta', '11:30:00', '12:00:00', '2019-04-30'),
(19, 102, 119, '2019-04-11 09:21:53', '2019-04-11 09:21:53', 'hm', 'wizyta', '08:00:00', '08:30:00', '2019-05-02'),
(20, 114, 119, '2019-04-11 09:42:47', '2019-04-11 09:42:47', NULL, 'wizyta', '08:00:00', '08:30:00', '2019-04-04'),
(25, 105, 119, '2019-04-11 11:06:03', '2019-04-11 11:06:03', NULL, 'wizyta', '15:00:00', '15:30:00', '2019-04-23'),
(26, 106, 119, '2019-04-11 12:32:05', '2019-04-11 12:32:05', NULL, 'wizyta', '10:00:00', '10:30:00', '2019-05-02'),
(27, 109, 119, '2019-04-11 17:32:34', '2019-04-11 17:32:34', NULL, 'wizyta', '09:30:00', '10:00:00', '2019-06-03'),
(28, 110, 119, '2019-04-11 18:03:09', '2019-04-11 18:03:09', NULL, 'wizyta', '11:00:00', '11:30:00', '2019-06-03'),
(29, 114, 119, '2019-04-11 18:15:35', '2019-04-11 18:15:35', NULL, 'wizyta', '08:00:00', '08:30:00', '2019-06-05'),
(30, 108, 122, '2019-04-11 18:19:45', '2019-04-11 18:19:45', 'Zdjęcie łuku górnego', 'wizyta', '09:00:00', '09:30:00', '2019-05-31'),
(31, 114, 122, '2019-04-11 18:20:14', '2019-04-11 18:20:14', NULL, 'wizyta', '11:00:00', '11:30:00', '2019-05-31'),
(32, 108, 49, '2019-04-12 06:29:55', '2019-04-12 06:29:55', NULL, 'wizyta', '08:00:00', '08:30:00', '2019-05-16'),
(33, 107, 5, '2019-04-12 06:30:59', '2019-04-12 06:30:59', NULL, 'wizyta', '10:30:00', '11:00:00', '2019-05-16'),
(34, 108, 1, '2019-04-12 08:06:40', '2019-04-12 08:06:40', NULL, 'wizyta', '11:00:00', '11:30:00', '2019-04-23'),
(35, 112, 122, '2019-04-12 08:11:34', '2019-04-12 08:11:34', NULL, 'wizyta', '09:00:00', '09:30:00', '2019-04-25'),
(36, 109, 122, '2019-04-12 08:22:31', '2019-04-12 08:22:31', NULL, 'wizyta', '08:00:00', '08:30:00', '2019-06-28'),
(37, 109, 46, '2019-04-12 08:24:39', '2019-04-12 08:24:39', NULL, 'wizyta', '11:00:00', '11:30:00', '2019-06-27'),
(38, 104, 122, '2019-04-12 10:44:34', '2019-04-12 10:44:34', NULL, 'wizyta', '10:00:00', '10:30:00', '2019-05-10'),
(39, 107, 122, '2019-04-12 10:46:04', '2019-04-12 10:46:04', NULL, 'wizyta', '14:00:00', '14:30:00', '2019-04-12'),
(40, 104, 122, '2019-04-12 10:47:11', '2019-04-12 10:47:11', NULL, 'wizyta', '10:00:00', '10:30:00', '2019-05-20'),
(41, 101, 5, '2019-04-13 10:43:19', '2019-04-13 10:43:19', NULL, 'wizyta', '14:00:00', '14:30:00', '2019-06-07'),
(42, 101, 5, '2019-04-13 10:50:53', '2019-04-13 10:50:53', NULL, 'wizyta', '11:30:00', '12:00:00', '2019-06-04'),
(43, 108, 122, '2019-04-14 05:38:41', '2019-04-14 05:38:41', NULL, 'wizyta', '09:00:00', '09:30:00', '2019-08-29'),
(44, 107, 122, '2019-05-18 09:50:34', '2019-05-18 09:50:34', NULL, 'wizyta', '10:00:00', '11:00:00', '2019-07-12'),
(45, 107, 122, '2019-05-18 09:51:55', '2019-05-18 09:51:55', NULL, 'wizyta', '10:00:00', '10:30:00', '2019-05-02'),
(46, 107, 96, '2019-06-21 06:41:20', '2019-06-21 06:41:20', NULL, 'rezerwacja', '09:00:00', '09:30:00', '2019-07-10'),
(47, 102, 122, '2019-06-21 06:41:56', '2019-06-21 06:41:56', NULL, 'rezerwacja', '09:00:00', '09:30:00', '2019-12-05'),
(48, 107, 122, '2019-06-21 07:05:45', '2019-06-21 07:05:45', NULL, 'rezerwacja', '09:00:00', '09:30:00', '2019-11-30'),
(49, 107, 122, '2019-06-21 07:43:21', '2019-06-21 07:43:21', NULL, 'rezerwacja', '15:00:00', '15:30:00', '2019-06-29'),
(50, 105, 122, '2019-06-21 07:57:05', '2019-06-21 07:57:05', NULL, 'rezerwacja', '11:00:00', '11:30:00', '2019-09-20'),
(51, 110, 42, '2019-06-21 14:07:25', '2019-06-21 14:07:25', NULL, 'rezerwacja', '11:00:00', '11:30:00', '2019-06-30'),
(52, 104, 122, '2019-06-21 14:07:59', '2019-06-21 14:07:59', NULL, 'rezerwacja', '10:00:00', '10:30:00', '2019-07-18');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `visit_details`
--

CREATE TABLE `visit_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `visit_id` int(10) UNSIGNED NOT NULL,
  `prescription` text COLLATE utf8mb4_unicode_ci,
  `treatments` text COLLATE utf8mb4_unicode_ci,
  `drugs` text COLLATE utf8mb4_unicode_ci,
  `expense` decimal(8,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `visit_details`
--

INSERT INTO `visit_details` (`id`, `created_at`, `updated_at`, `visit_id`, `prescription`, `treatments`, `drugs`, `expense`) VALUES
(2, NULL, NULL, 9, 'Zimne okłady.\r\nPrzez 48 h tylko płyny', 'Zaopatrzenie ropnia. Nawiert', 'Derdalimex 150 ml', '400.00'),
(3, '2019-06-18 19:20:09', '2019-06-18 19:20:09', 8, 'Brak specialnych zaleceń', 'Ekstrakcja ósemki', 'Pawulon 200 ml', NULL),
(5, '2019-06-18 19:23:18', '2019-06-18 19:23:18', 11, 'Trzymać się', 'Rwanie zeba', 'Znieczulenie', NULL),
(6, '2019-06-18 19:36:01', '2019-06-18 19:36:01', 14, 'brak', 'Leczenie kanałowe - jedynka lewa górna', 'brak', NULL),
(25, '2019-06-18 19:58:44', '2019-06-18 19:58:44', 25, 'Brak', 'Ekstrakcja ósemki', 'Dembrandol', NULL),
(44, '2019-06-18 20:39:37', '2019-06-18 20:39:37', 35, 'Proszę nie spożywać alkoholu i nikotyny przez min 24 h.\r\nProszę powstrzymać się od spożywania pokarmów stałych przez ok 2h po wizycie', 'Leczenie kanałowe górnej dwójki lewej', 'Przeciwbólowe - tremandon 25 mg', NULL),
(49, '2019-06-18 20:58:35', '2019-06-18 20:58:35', 39, 'leczenie trójki górnej prawej, piaskowanie', 'przegląd', 'brak', NULL),
(50, '2019-06-20 07:02:01', '2019-06-20 07:02:01', 20, 'Wstrzymać się od posiłków przez 2h', 'Ekstrakcja', 'Derdolex 15mg', NULL),
(52, '2019-06-20 10:12:55', '2019-06-20 10:12:55', 10, 'Leczenie kanałowe szóstki dolnej lewej.\r\nPowierzchniowe leczenie dwójki prawej górnej.\r\nKonsultacja ortodonty.', 'Przegląd', 'Brak', NULL),
(53, '2019-06-20 10:18:08', '2019-06-20 10:18:08', 12, 'Leczenie kanałowe szóstki dolnej lewej.\r\nPowierzchniowe leczenie dwójki prawej górnej.\r\nKonsultacja ortodonty.', 'Przegląd', 'Brak', NULL);

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeksy dla tabeli `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `roles_has_user`
--
ALTER TABLE `roles_has_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `roles_has_user_role_id_foreign` (`role_id`),
  ADD KEY `roles_has_user_user_id_foreign` (`user_id`);

--
-- Indeksy dla tabeli `specializations`
--
ALTER TABLE `specializations`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `specializations_has_user`
--
ALTER TABLE `specializations_has_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `specializations_has_user_specialization_id_foreign` (`specialization_id`),
  ADD KEY `specializations_has_user_user_id_foreign` (`user_id`);

--
-- Indeksy dla tabeli `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_pesel_unique` (`pesel`);

--
-- Indeksy dla tabeli `visits`
--
ALTER TABLE `visits`
  ADD PRIMARY KEY (`id`),
  ADD KEY `visits_doctor` (`doctor_id`),
  ADD KEY `visit_patient` (`patient_id`);

--
-- Indeksy dla tabeli `visit_details`
--
ALTER TABLE `visit_details`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `visit_id` (`visit_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT dla tabeli `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT dla tabeli `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT dla tabeli `roles_has_user`
--
ALTER TABLE `roles_has_user`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `specializations`
--
ALTER TABLE `specializations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT dla tabeli `specializations_has_user`
--
ALTER TABLE `specializations_has_user`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT dla tabeli `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=124;

--
-- AUTO_INCREMENT dla tabeli `visits`
--
ALTER TABLE `visits`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT dla tabeli `visit_details`
--
ALTER TABLE `visit_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- Ograniczenia dla zrzutów tabel
--

--
-- Ograniczenia dla tabeli `roles_has_user`
--
ALTER TABLE `roles_has_user`
  ADD CONSTRAINT `roles_has_user_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `roles_has_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Ograniczenia dla tabeli `specializations_has_user`
--
ALTER TABLE `specializations_has_user`
  ADD CONSTRAINT `specializations_has_user_specialization_id_foreign` FOREIGN KEY (`specialization_id`) REFERENCES `specializations` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `specializations_has_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Ograniczenia dla tabeli `visits`
--
ALTER TABLE `visits`
  ADD CONSTRAINT `visit_patient` FOREIGN KEY (`patient_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `visits_doctor` FOREIGN KEY (`doctor_id`) REFERENCES `users` (`id`);

--
-- Ograniczenia dla tabeli `visit_details`
--
ALTER TABLE `visit_details`
  ADD CONSTRAINT `visits_details` FOREIGN KEY (`visit_id`) REFERENCES `visits` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
