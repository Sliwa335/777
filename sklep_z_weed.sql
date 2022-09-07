-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 07 Wrz 2022, 10:14
-- Wersja serwera: 10.4.24-MariaDB
-- Wersja PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `sklep z mefedronem`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `dane zamówien`
--

CREATE TABLE `dane zamówien` (
  `id_zioła` int(11) NOT NULL,
  `Ilość Sprzedanych` text NOT NULL,
  `ilość w magazynie` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `dane zamówien`
--

INSERT INTO `dane zamówien` (`id_zioła`, `Ilość Sprzedanych`, `ilość w magazynie`) VALUES
(1, '12G', '38G'),
(2, '10G', '20G'),
(3, '40G', '60G'),
(4, '5G', '15G'),
(5, '2G', '8G');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `towar`
--

CREATE TABLE `towar` (
  `id_zioła` int(11) NOT NULL,
  `Asortyment` text NOT NULL,
  `Cena` text NOT NULL,
  `Dostępna ilość` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `towar`
--

INSERT INTO `towar` (`id_zioła`, `Asortyment`, `Cena`, `Dostępna ilość`) VALUES
(1, 'Purple Haze', '40 zł', '50G'),
(2, 'Sativa', '50 zł', '30G'),
(3, 'AK-47', '65zł', '100G'),
(4, 'Blueberry', '45zł', '20G'),
(5, 'Orange Bud', '67zł', '10G');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `wysyłka`
--

CREATE TABLE `wysyłka` (
  `id_zioła` int(11) NOT NULL,
  `Liczba Kupionych` text NOT NULL,
  `Liczba Wysłanych` text NOT NULL,
  `Liczba oczekujących na wysyłkę` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `wysyłka`
--

INSERT INTO `wysyłka` (`id_zioła`, `Liczba Kupionych`, `Liczba Wysłanych`, `Liczba oczekujących na wysyłkę`) VALUES
(132, '1', '0', '1'),
(133, '10', '1', '0'),
(134, '2', '1', '0'),
(135, '3', '1', '0'),
(136, '12', '1', '0');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `dane zamówien`
--
ALTER TABLE `dane zamówien`
  ADD PRIMARY KEY (`id_zioła`);

--
-- Indeksy dla tabeli `towar`
--
ALTER TABLE `towar`
  ADD PRIMARY KEY (`id_zioła`);

--
-- Indeksy dla tabeli `wysyłka`
--
ALTER TABLE `wysyłka`
  ADD PRIMARY KEY (`id_zioła`);

--
-- AUTO_INCREMENT dla zrzuconych tabel
--

--
-- AUTO_INCREMENT dla tabeli `dane zamówien`
--
ALTER TABLE `dane zamówien`
  MODIFY `id_zioła` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT dla tabeli `towar`
--
ALTER TABLE `towar`
  MODIFY `id_zioła` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT dla tabeli `wysyłka`
--
ALTER TABLE `wysyłka`
  MODIFY `id_zioła` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=137;

--
-- Ograniczenia dla zrzutów tabel
--

--
-- Ograniczenia dla tabeli `towar`
--
ALTER TABLE `towar`
  ADD CONSTRAINT `towar_ibfk_1` FOREIGN KEY (`id_zioła`) REFERENCES `dane zamówien` (`id_zioła`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
