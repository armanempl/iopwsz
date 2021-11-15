-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 13 Lis 2021, 01:54
-- Wersja serwera: 10.4.19-MariaDB
-- Wersja PHP: 7.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `io`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `asortyment`
--

CREATE TABLE `asortyment` (
  `id_ksiazka` int(4) NOT NULL,
  `tytul` text COLLATE utf8_polish_ci NOT NULL,
  `autor` text COLLATE utf8_polish_ci NOT NULL,
  `cena` double NOT NULL,
  `rok_wydania` varchar(4) COLLATE utf8_polish_ci NOT NULL,
  `wydawnictwo` text COLLATE utf8_polish_ci NOT NULL,
  `gatunek` text COLLATE utf8_polish_ci NOT NULL,
  `img` text COLLATE utf8_polish_ci NOT NULL,
  `ilosc_odslon` int(6) NOT NULL,
  `ilosc_szt` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `asortyment`
--

INSERT INTO `asortyment` (`id_ksiazka`, `tytul`, `autor`, `cena`, `rok_wydania`, `wydawnictwo`, `gatunek`, `img`, `ilosc_odslon`, `ilosc_szt`) VALUES
(1, 'C++ dla każdego', 'ktos', 85, '2015', 'Helion', 'naukowe', 'https://static01.helion.com.pl/global/okladki/326x466/cppdk.png', 5, 7),
(2, 'Język C++. Szkoła programowania. Wydanie VI', 'na pewno', 60, '2016', 'Helion', 'naukowe', 'https://static01.helion.com.pl/global/okladki/326x466/cppri6.png', 5, 12),
(3, 'Matura Focus 1', 'anglik', 75, '2016', 'Pearson Longman', 'naukowe', 'https://www.pearson.pl/fileadmin/_processed_/a/d/csm_focus-sb1-nc-cov_e65f4beac5.png', 3, 9),
(4, 'Zrozumieć JavaScript. Wprowadzenie do programowania', 'Marijn Haverbeke', 99, '2016', 'Helion', 'naukowe', 'https://static01.helion.com.pl/global/okladki/326x466/zrojsc.png', 16, 6),
(5, 'JavaScript - mocne strony', 'Douglas Crockford', 50, '2018', 'Helion', 'naukowe', 'https://static01.helion.com.pl/global/okladki/326x466/jscmoc.png', 23, 11);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `historia_zamowienie`
--

CREATE TABLE `historia_zamowienie` (
  `id_h_zamowienie` int(4) NOT NULL,
  `id_zamowienie` int(4) NOT NULL,
  `data` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `klient`
--

CREATE TABLE `klient` (
  `id_klient` int(4) NOT NULL,
  `imie` varchar(32) COLLATE utf8_polish_ci NOT NULL,
  `nazwisko` varchar(32) COLLATE utf8_polish_ci NOT NULL,
  `adres_zamieszkania` text COLLATE utf8_polish_ci NOT NULL,
  `adres_wysylki` text COLLATE utf8_polish_ci NOT NULL,
  `paragon` int(11) NOT NULL,
  `id_konto` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `konto`
--

CREATE TABLE `konto` (
  `id_konto` int(4) NOT NULL,
  `login` varchar(16) COLLATE utf8_polish_ci NOT NULL,
  `haslo` varchar(64) COLLATE utf8_polish_ci NOT NULL,
  `poziom_uprawnien` enum('Klient','Kasjer','Administrator','') COLLATE utf8_polish_ci NOT NULL,
  `data_logowania` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `Imie` varchar(200) COLLATE utf8_polish_ci DEFAULT NULL,
  `Nazwisko` varchar(200) COLLATE utf8_polish_ci DEFAULT NULL,
  `Kraj` varchar(200) COLLATE utf8_polish_ci DEFAULT NULL,
  `Miasto` varchar(200) COLLATE utf8_polish_ci DEFAULT NULL,
  `Kod` varchar(200) COLLATE utf8_polish_ci DEFAULT NULL,
  `Ulica` varchar(200) COLLATE utf8_polish_ci DEFAULT NULL,
  `Numer_domu` int(200) DEFAULT NULL,
  `mail` varchar(100) COLLATE utf8_polish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `konto`
--

INSERT INTO `konto` (`id_konto`, `login`, `haslo`, `poziom_uprawnien`, `data_logowania`, `Imie`, `Nazwisko`, `Kraj`, `Miasto`, `Kod`, `Ulica`, `Numer_domu`, `mail`) VALUES
(1, 'Pawi', '$2y$10$KBuRuEA9sS8ORcpSigRbZugXw72nHSALQ110cmLEny4h0h0d9ZVcu', 'Klient', '2021-11-13 00:11:55', 'Pawel', 'Kolawa', 'Polska', 'Stary Sącz', '33-340', 'Wegierska', 45, 'kolawa14p@gmail.com'),
(2, 'Pawi2', '$2y$10$.4gvmyVZ2zcbu0/NJvU.CODO19Wysgo5m9LfAziniscXthnliJIUy', 'Klient', '2021-11-13 00:15:08', 'Pawel', 'Kolawa', 'Albania', 'Stary Sącz', '33-340', 'Wegierska', 45, 'kolawa141p@gmail.com');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `pracownik`
--

CREATE TABLE `pracownik` (
  `id_pracownik` int(4) NOT NULL,
  `imie` text COLLATE utf8_polish_ci NOT NULL,
  `nazwisko` text COLLATE utf8_polish_ci NOT NULL,
  `adres_zamieszkania` text COLLATE utf8_polish_ci NOT NULL,
  `data_logowania` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `zamowienie`
--

CREATE TABLE `zamowienie` (
  `id_zamowienie` int(4) NOT NULL,
  `id_ksiazka` int(4) NOT NULL,
  `rodzaj_przesylki` enum('List polecony priorytetowy','Kurier DeHaEl','','') COLLATE utf8_polish_ci NOT NULL,
  `rodzaj zapłaty` enum('Przelew','Karta płatnicza','','') COLLATE utf8_polish_ci NOT NULL,
  `id_klient` int(4) NOT NULL,
  `status_zamowienia` enum('Nowe zamówienie','Zaksięgowano wpłatę','Wysłano','') COLLATE utf8_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `asortyment`
--
ALTER TABLE `asortyment`
  ADD PRIMARY KEY (`id_ksiazka`);

--
-- Indeksy dla tabeli `historia_zamowienie`
--
ALTER TABLE `historia_zamowienie`
  ADD PRIMARY KEY (`id_h_zamowienie`),
  ADD KEY `id_zamowienie` (`id_zamowienie`);

--
-- Indeksy dla tabeli `klient`
--
ALTER TABLE `klient`
  ADD PRIMARY KEY (`id_klient`),
  ADD KEY `id_konto` (`id_konto`);

--
-- Indeksy dla tabeli `konto`
--
ALTER TABLE `konto`
  ADD PRIMARY KEY (`id_konto`);

--
-- Indeksy dla tabeli `pracownik`
--
ALTER TABLE `pracownik`
  ADD PRIMARY KEY (`id_pracownik`);

--
-- Indeksy dla tabeli `zamowienie`
--
ALTER TABLE `zamowienie`
  ADD PRIMARY KEY (`id_zamowienie`),
  ADD KEY `id_klient` (`id_klient`),
  ADD KEY `id_ksiazka` (`id_ksiazka`);

--
-- AUTO_INCREMENT dla zrzuconych tabel
--

--
-- AUTO_INCREMENT dla tabeli `asortyment`
--
ALTER TABLE `asortyment`
  MODIFY `id_ksiazka` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT dla tabeli `historia_zamowienie`
--
ALTER TABLE `historia_zamowienie`
  MODIFY `id_h_zamowienie` int(4) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `klient`
--
ALTER TABLE `klient`
  MODIFY `id_klient` int(4) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `konto`
--
ALTER TABLE `konto`
  MODIFY `id_konto` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT dla tabeli `pracownik`
--
ALTER TABLE `pracownik`
  MODIFY `id_pracownik` int(4) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `zamowienie`
--
ALTER TABLE `zamowienie`
  MODIFY `id_zamowienie` int(4) NOT NULL AUTO_INCREMENT;

--
-- Ograniczenia dla zrzutów tabel
--

--
-- Ograniczenia dla tabeli `historia_zamowienie`
--
ALTER TABLE `historia_zamowienie`
  ADD CONSTRAINT `historia_zamowienie_ibfk_1` FOREIGN KEY (`id_zamowienie`) REFERENCES `zamowienie` (`id_zamowienie`);

--
-- Ograniczenia dla tabeli `klient`
--
ALTER TABLE `klient`
  ADD CONSTRAINT `klient_ibfk_1` FOREIGN KEY (`id_konto`) REFERENCES `konto` (`id_konto`);

--
-- Ograniczenia dla tabeli `zamowienie`
--
ALTER TABLE `zamowienie`
  ADD CONSTRAINT `zamowienie_ibfk_1` FOREIGN KEY (`id_klient`) REFERENCES `klient` (`id_klient`),
  ADD CONSTRAINT `zamowienie_ibfk_2` FOREIGN KEY (`id_ksiazka`) REFERENCES `asortyment` (`id_ksiazka`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
