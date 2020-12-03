-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Gazdă: 127.0.0.1
-- Timp de generare: nov. 26, 2020 la 10:59 AM
-- Versiune server: 10.4.14-MariaDB
-- Versiune PHP: 7.2.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Bază de date: `licenta`
--

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `papers`
--

CREATE TABLE `papers` (
  `id` int(10) NOT NULL,
  `user_id` int(10) NOT NULL COMMENT 'the user who added the paper',
  `volume` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `publication` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(7) COLLATE utf8mb4_unicode_ci DEFAULT 'lucrare',
  `uploaded_at` date NOT NULL,
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'titlu',
  `authors` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'ion simeria, tudor balac',
  `publisher` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'editura',
  `pages` int(5) NOT NULL DEFAULT 0,
  `website` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'https://scholar.google.com/',
  `country` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'romania'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Eliminarea datelor din tabel `papers`
--

INSERT INTO `papers` (`id`, `user_id`, `volume`, `publication`, `type`, `uploaded_at`, `title`, `authors`, `publisher`, `pages`, `website`, `country`) VALUES
(3, 13, 'Literatura', 'Exemplu 1 ', 'carte', '2020-08-18', 'titlu', 'Dumitru Cristache', 'editura', 0, 'https://scholar.google.com/', 'romania'),
(4, 13, 'Electrica', 'Exemplu 2', 'articol', '2020-08-18', 'titlu', 'Dumitru Cristache', 'editura', 0, 'https://scholar.google.com/', 'romania'),
(5, 13, 'Mecanica cuantica', 'scaraatomica', 'articol', '2020-08-18', 'titlu', 'Dumitru Cristache', 'editura', 0, 'https://scholar.google.com/', 'romania'),
(6, 13, 'Algebra ', 'ecuatiisisisteme', 'articol', '2020-08-18', 'titlu', 'ion simeria, tudor balac', 'editura', 0, 'https://scholar.google.com/', 'romania'),
(7, 13, 'Literatura', 'tineretealuieminescu', 'articol', '2020-08-18', 'titlu', 'ion simeria, tudor balac', 'editura', 0, 'https://scholar.google.com/', 'romania'),
(8, 14, 'Mecanica necuantica', 'legea lui newton', 'articol', '2020-09-22', 'titlu', 'ion simeria', 'editura123', 0, 'https://scholar.google.com/', 'anglia'),
(10, 13, 'Circuite', 'masurarevalori', 'articol', '2020-08-18', 'titlu', 'ion simeria, tudor balac', 'editura', 0, 'https://scholar.google.com/', 'romania'),
(11, 11, 'Gramatica', 'verbepredicative', 'carte', '2020-08-18', 'titlu', 'ion simeria, tudor balac', 'editura', 0, 'https://scholar.google.com/', 'romania'),
(19, 11, 'Programare', 'claseinjava', 'articol', '2018-08-18', 'titlu', 'ion simeria, tudor balac', 'editura', 0, 'https://scholar.google.com/', 'romania'),
(21, 11, 'calculatoare', 'managementulresurselor', 'articol', '2020-08-18', 'titlu', 'ion simeria, tudor balac', 'editura', 0, 'https://scholar.google.com/', 'romania'),
(23, 14, 'Fizica moleculelor9019', 'particule', 'articol', '2010-08-19', 'titlu99', 'ion simeria, tudor balac, sofronie vali, larisa bageac', 'editura', 901, 'https://scholar.google.com/', 'romania'),
(25, 14, 'Fizica msoleculelor', 'atomulparticulelor9', 'articol', '2020-09-01', 'titlu', 'ion simeria, tudor balac', 'editura99', 0, 'https://scholar.google.com/', 'romania'),
(34, 14, 'Fizica', 'Forta mecania', 'articol', '2018-08-07', 'titlu23', 'ion simeria, tudor', 'editura', 0, 'https://scholar.google.com/', 'romania'),
(37, 11, 'Programare', 'OOP', 'carte', '2019-08-21', 'titlu', 'ion simeria, tudor balac', 'editura', 0, 'https://scholar.google.com/', 'romania'),
(39, 20, 'Pescarie', 'Crap', 'articol', '2020-08-22', 'titlu', 'ion simeria, tudor balac', 'editura', 0, 'https://scholar.google.com/', 'romania'),
(40, 18, 'Lichide', 'Suc', 'articol', '2020-08-22', 'titlu', 'ion simeria, tudor balac', 'editura', 0, 'https://scholar.google.com/', 'romania'),
(41, 18, 'Luni', 'Hello', 'carte', '2020-08-22', 'titlu', 'ion simeria, tudor balac', 'editura', 0, 'https://scholar.google.com/', 'romania'),
(46, 14, 'III', 'Adevarul vietuitoarelor', 'articol', '2020-06-08', 'Viperele in Delta', 'Ion Simache', 'Balot', 89, 'www.google.ro', 'romania'),
(47, 14, 'IV', 'Pescuitul sportiv', 'articol', '2020-03-01', 'Titlu', 'Balas Tania', 'Mal si prada', 15, 'http://www.google.ro', 'Albania'),
(49, 14, 'III', 'Gradinarit', 'carte', '2020-09-30', 'Morcovii deliciosi', 'Tania Rupa', 'Rasaduri', 12, 'http://www.google.com', 'romania'),
(52, 21, '5', 'IEEE', 'articol', '2011-04-05', 'Cyber-Physical Systems: A Review', 'Mihalache Florin ,Jaouhar Fattahi', 'Bucuresti', 66556, 'https://www.google.com/', 'Bulgaria'),
(53, 21, '5', 'IEEE', 'articol', '2020-04-05', 'Cyber-Physical Systems: A Review 2', 'Mihalache Florin ,Jaouhar Fattahi', 'Bucuresti', 66556, 'https://www.google.com/', 'Bulgaria'),
(54, 21, '55', 'IEEE', 'articol', '2019-04-05', 'Cyber-Physical Systems: A Review 0.1', 'Mihalache Florin ,Jaouhar Fattahi', 'Bucuresti', 66556, 'https://www.google.com/', 'Bulgaria'),
(55, 22, '1', 'Pubons', 'carte', '2020-11-11', 'Academic Branch Libraries in Changing Times', 'Sanda Florentina Mihalache,Jaouhar Fattahi', 'Romca', 69569, 'https://www.google.com/', 'Romania');

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `resetpasswords`
--

CREATE TABLE `resetpasswords` (
  `id` int(11) NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Eliminarea datelor din tabel `resetpasswords`
--

INSERT INTO `resetpasswords` (`id`, `code`, `email`) VALUES
(5, '82342', 'pffasfs@mail.com'),
(6, '15f310c23a1667', 'florea.user@gmail.com'),
(7, '15f310d8065d05', 'tanarmelancolic@gmail.com'),
(8, '15f310ebb8b917', 'tanarmelancolic@gmail.com'),
(9, '15f310ec925fca', 'tanarmelancolic@gmail.com'),
(10, '15f310ff4b2041', 'tanarmelancolic@gmail.com'),
(11, '15f3115348d41e', 'tanarmelancolic@gmail.com'),
(14, '15f3123f38fae1', 'tanarmelancolic@gmail.com'),
(17, '15f35418a8df84', 'floreauser@gmail.com'),
(18, '15f3541f5af889', 'floreauser@gmailcom'),
(19, '15f354208d6c73', 'floreausergmailcom');

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `users`
--

CREATE TABLE `users` (
  `user_id` int(10) NOT NULL,
  `first_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `department` int(2) DEFAULT NULL COMMENT 'where the user teaches',
  `registered_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Eliminarea datelor din tabel `users`
--

INSERT INTO `users` (`user_id`, `first_name`, `last_name`, `email`, `password`, `role`, `department`, `registered_at`) VALUES
(6, 'Adrian', 'Cristi', 'adrian@yahoo.com', '\r\n$2y$12$6AEhf9qqRkGRyWT9jpNRf.fJZda6mR7ou7HMX4/0IsuNJ/cECkk1C\r\n', 'prof', 1, '2020-08-18 09:47:06'),
(7, 'Maria', 'Tantu', 'tantumaria@yahoo.com', '$2y$10$Ar3oQn1CK79IcwKytc4IhOiO4AscZALyqkiykirtQVCTuUGdX0Tsm', 'prof', 2, '2020-08-18 09:47:06'),
(8, 'Ana', 'G', 'ana89@yahoo.com', '$2y$10$e1R80qpnVg8Dy60C9z0lA.NDRudkOPu1F2K3oFnpA943AGrdidVXy', 'prof', 1, '2020-08-18 09:47:06'),
(9, 'Elena', 'G', 'elena65@yahoo.com', '$2y$10$e1R80qpnVg8Dy60C9z0lA.NDRudkOPu1F2K3oFnpA943AGrdidVXy', 'prof', 2, '2020-08-18 09:47:06'),
(10, 'Ioana', 'Gancu', 'gancu@gmail.com', '$2y$10$QgSCv6XYoKj..bqZOy9PjeSO4zkZwMv2P8fe3MSMGBXzahEGVip1O', 'prof', 1, '2020-08-18 09:47:06'),
(11, 'Laura', 'Tancu', 'tanculaura@mail.com', '$2y$10$.eZFFIf/BLxy8SQb7G/EFuzwLkcVYB.aHclSwRVlBKIi2dsK0vUf6', 'director', 2, '2020-08-18 09:47:06'),
(12, 'Stefan', 'Florea', 'tanarmelancolic@gmail.com', '$2y$10$ArezIsi/z7Q3bPCrTle1ZuQB49CuvllZkivJD0dJSlDyKpP8A9t3e', 'prof', 1, '2020-08-18 09:47:06'),
(13, 'Dumitru', 'Cristache', 'dumitrucristache81@yahoo.com', '$2y$10$p1CqJRRHhQd.UgfZuAaireEFD0iWgmiHsZhsRM6ySd.1EFISlZDHm', 'admin', NULL, '2020-08-18 09:47:06'),
(14, 'Stefania', 'Geolgau', 'geolgaustefania@yahoo.com', '$2y$10$uTZI.MWCeKIPxGN0M2/5QO/nBLWl0ClbnWSfoFfiqgSl4MOlcqoUG', 'prof', 2, '2020-08-18 09:47:06'),
(18, 'Iulia', 'Giulcan', 'iulia64@yahoo.com', ' $2y$12$TPHXJQROlL/nfppEbTjQZ.g31trM3yYbpsitDVskIPCHLaGyvPBty ', 'director', 1, '2020-08-18 10:04:29'),
(20, 'Carina', 'Maria', 'carinam@yahoo.com', '$2y$10$CsAW2/T1qw6/bajTUOnVwuK5MWI8fxRgTLaq7FULiHFBrv7ovFeu6', 'prof', 1, '2020-08-21 21:24:02'),
(21, 'V', 'Constantin', 'dumitru@yahoo.com', '$2y$10$WiGQ6fdnhPRoK2ja9hyqv.FaN59GDRynNwk8QZow0ie9OWKek.US6', 'director', 1, '2020-11-26 09:48:51'),
(22, 'M', 'Mariana', 'mariana@yahoo.com', '$2y$10$mQlaH2r6.QiY3caVPBAm0O8BZPCDrrRz1atG1PkDRNGUDvVF64Th2', 'director', 2, '2020-11-26 09:49:55');

--
-- Indexuri pentru tabele eliminate
--

--
-- Indexuri pentru tabele `papers`
--
ALTER TABLE `papers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_paper_user` (`user_id`);

--
-- Indexuri pentru tabele `resetpasswords`
--
ALTER TABLE `resetpasswords`
  ADD PRIMARY KEY (`id`);

--
-- Indexuri pentru tabele `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT pentru tabele eliminate
--

--
-- AUTO_INCREMENT pentru tabele `papers`
--
ALTER TABLE `papers`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT pentru tabele `resetpasswords`
--
ALTER TABLE `resetpasswords`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT pentru tabele `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- Constrângeri pentru tabele eliminate
--

--
-- Constrângeri pentru tabele `papers`
--
ALTER TABLE `papers`
  ADD CONSTRAINT `fk_paper_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
