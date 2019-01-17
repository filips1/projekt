-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 17 Sty 2019, 21:16
-- Wersja serwera: 10.1.37-MariaDB
-- Wersja PHP: 7.3.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `kolekcja_gier`
--
CREATE DATABASE IF NOT EXISTS `kolekcja_gier` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `kolekcja_gier`;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `gry`
--

CREATE TABLE `gry` (
  `ID_gry` int(11) NOT NULL,
  `Nazwa_gry` varchar(255) NOT NULL,
  `ID_konsoli` int(11) NOT NULL DEFAULT '0',
  `Producent_gry` varchar(255) DEFAULT NULL,
  `Rok_produkcji` int(11) DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `gry`
--

INSERT INTO `gry` (`ID_gry`, `Nazwa_gry`, `ID_konsoli`, `Producent_gry`, `Rok_produkcji`) VALUES
(1, 'Defender', 1, 'Williams Electronics', 1981),
(2, 'Mario Bros.', 1, 'Nintendo', 1983),
(3, 'Space Invaders', 1, 'Atari', 1978),
(4, 'Super Mario Bros 3', 3, 'Nintendo', 1984),
(5, 'Super C', 3, 'Konami', 1988),
(6, 'Castlevania 4', 4, 'Konami', 1991),
(7, 'Super Smash Bros', 7, 'Nintendo', 1999),
(8, 'Super Smash Bros Melee', 10, 'Nintendo', 2001),
(9, 'Super Mario Galaxy', 11, 'Nintendo', 2007),
(10, 'Sonic The Hedgehog', 5, 'Sega', 1991),
(21, 'Atari Logo', 1, 'Atari', 1981),
(12, 'Atari Pac-Man', 32, 'Atari', 1982),
(13, 'Pac-Man', 1, 'Atari', 1982),
(14, 'Pac-Man Junior', 1, 'Atari', 1984),
(15, 'Mrs. Pac-Man', 1, 'Atari', 1983),
(16, 'Pac-Man', 3, 'Namco', 1987),
(19, 'Waluigi Tacostand', 7, 'Nintendo', 1991),
(20, 'Parodius da', 3, 'Konami', 1989),
(22, 'Donkey Kong', 1, 'Nintendo', 1981);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `konsole`
--

CREATE TABLE `konsole` (
  `ID_konsoli` int(11) NOT NULL,
  `Nazwa_konsoli` varchar(255) NOT NULL,
  `Rok_produkcji` int(11) DEFAULT '0',
  `Producent_konsoli` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `konsole`
--

INSERT INTO `konsole` (`ID_konsoli`, `Nazwa_konsoli`, `Rok_produkcji`, `Producent_konsoli`) VALUES
(1, 'Atari 2600', 1978, 'Atari'),
(2, 'Magnavox Oddysey 2', 1978, 'Magnavox'),
(3, 'NES/Famicom', 1984, 'Nintendo'),
(4, 'SNES/Super Famicom', 1990, 'Nintendo'),
(5, 'Sega Genesis/Mega Drive', 1988, 'Sega'),
(6, 'Sega Saturn', 1994, 'Sega'),
(7, 'Nintendo 64', 1996, 'Nintendo'),
(36, 'PC-FX', 1992, 'NEC'),
(13, 'Atari Lynx', 1989, 'Atari'),
(10, 'Gamecube', 2001, 'Nintendo'),
(11, 'Wii', 2006, 'Nintendo'),
(14, 'Atari Jaguar CD', 1994, 'Atari'),
(15, 'Atari Jaguar CD', 1994, 'Atari'),
(32, 'Atari 5200', 1985, 'Atari'),
(31, 'Atari 7800', 1987, 'Atari'),
(30, 'Atari 7800', 1987, 'Atari'),
(29, 'Atari 8bit', 1981, 'Atari'),
(21, 'Atari Jaguar CD', 1996, 'Atari'),
(22, 'Atari Jaguar Cd', 1993, 'Atari'),
(37, 'Atari St', 1995, 'Atari'),
(38, 'TurboGrapx', 1998, 'NEC'),
(28, 'PC Engine', 1988, 'NEC');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `gry`
--
ALTER TABLE `gry`
  ADD PRIMARY KEY (`ID_gry`);

--
-- Indeksy dla tabeli `konsole`
--
ALTER TABLE `konsole`
  ADD PRIMARY KEY (`ID_konsoli`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT dla tabeli `gry`
--
ALTER TABLE `gry`
  MODIFY `ID_gry` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT dla tabeli `konsole`
--
ALTER TABLE `konsole`
  MODIFY `ID_konsoli` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
