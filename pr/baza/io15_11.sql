-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 15 Lis 2021, 04:13
-- Wersja serwera: 10.4.21-MariaDB
-- Wersja PHP: 8.0.12

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
(1, 'C++ dla każdego', 'Jesse Liberty, Siddhartha Rao, Bradley L. Jones', 85, '2015', 'Helion', 'naukowe', 'https://static01.helion.com.pl/global/okladki/326x466/cppdk.png', 5, 7),
(2, 'Język C++. Szkoła programowania. Wydanie VI', 'Stephen Prata', 60, '2016', 'Helion', 'naukowe', 'https://static01.helion.com.pl/global/okladki/326x466/cppri6.png', 5, 12),
(3, 'Matura Focus 1', 'Vaughan Jones, Sue Kay', 75, '2016', 'Pearson Longman', 'naukowe', 'https://www.pearson.pl/fileadmin/_processed_/a/d/csm_focus-sb1-nc-cov_e65f4beac5.png', 3, 9),
(4, 'Zrozumieć JavaScript. Wprowadzenie do programowania', 'Marijn Haverbeke', 99, '2016', 'Helion', 'naukowe', 'https://static01.helion.com.pl/global/okladki/326x466/zrojsc.png', 16, 6),
(5, 'JavaScript - mocne strony', 'Douglas Crockford', 50, '2018', 'Helion', 'naukowe', 'https://static01.helion.com.pl/global/okladki/326x466/jscmoc.png', 23, 11),
(6, 'C++. Podróż po języku dla zaawansowanych. Wydanie II', 'Bjarne Stroustrup', 35, '2015', 'Helion', 'naukowe', 'https://static01.helion.com.pl/global/okladki/326x466/cppoz2.png', 8, 25),
(7, 'JavaScript. Techniki zaawansowane', 'Tomasz Sochacki', 55, '2021', 'Helion', 'naukowe', 'https://static01.helion.com.pl/global/okladki/326x466/zaazaj.png', 12, 9),
(8, 'Uczenie głębokie i sztuczna inteligencja.', 'Jon Krohn, Grant Beyleveld, Aglaé Bassens', 65, '2021', 'Helion', 'naukowe', 'https://static01.helion.com.pl/global/okladki/326x466/uczgsi.png', 10, 5),
(9, 'Bezpieczeństwo sieci w Pythonie. Wydanie II', 'José Manuel Ortega', 71, '2018', 'Helion', 'naukowe', 'https://static01.helion.com.pl/global/okladki/326x466/bezsp2.png', 6, 5),
(10, 'ASP.NET Core 3. Zaawansowane programowanie. Wydanie VIII', 'Adam Freeman', 180, '2019', 'Helion', 'naukowe', 'https://static01.helion.com.pl/global/okladki/326x466/aspnm8.png', 31, 14),
(11, 'Python. Wprowadzenie. Wydanie V', 'Mark Lutz', 100, '2020', 'Helion', 'naukowe', 'https://static01.helion.com.pl/global/okladki/326x466/pytho5.png', 11, 6),
(12, 'LEGO Microgame. Podstawy programowania gier w Unity', 'Jacek Ross', 25, '2021', 'Helion', 'naukowe', 'https://static01.helion.com.pl/global/okladki/326x466/legomp.png', 21, 16),
(13, 'PHP 8 i SQL. Programowanie dla początkujących w 43 lekcjach', 'Mariusz Duka', 55, '2021', 'Helion', 'naukowe', 'https://static01.helion.com.pl/global/okladki/326x466/ph8sql.png', 13, 11),
(14, 'Opowieści z Narnii. Tom 1-2: Lew, Czarownica i stara szafa, Książę Kaspian', 'Clive Staples Lewis', 85, '2005', 'Media Rodzina', 'fantastyka', 'https://cf1-taniaksiazka.statiki.pl/images/large/A22/37199001350KS.jpg', 17, 20),
(15, 'Mitologia', 'Jan Parandowski', 30, '1992', 'Puls', 'mitologia', 'https://cf1-taniaksiazka.statiki.pl/images/large/A7A/54663202320KS.jpg', 5, 15),
(16, 'Władca Pierścieni: Drużyna Pierścienia', 'J.R.R. Tolkien', 20, '2012', 'Amber', 'fantastyka', 'https://s.lubimyczytac.pl/upload/books/159000/159957/170x243.jpg', 15, 10),
(17, 'Wesele', 'Stanisław Wyspiański', 15, '2021', 'Greg', 'literatura polska', 'https://cf1-taniaksiazka.statiki.pl/images/large/BE6/9788375179217.jpg', 15, 20),
(18, 'Potop', 'Henryk Sienkiewicz', 35, '2010', 'Literat', 'literatura polska', 'https://s.lubimyczytac.pl/upload/books/4970000/4970917/905153-170x243.jpg', 14, 15),
(19, 'Zbrodnia i kara', 'Fiodor Dostojewski', 18, '2021', 'Greg', 'powieść', 'https://cf1-taniaksiazka.statiki.pl/images/large/39B/36075701465KS.jpg', 2, 5),
(20, 'Władca Pierścieni. Tom 2. Dwie wieże', 'J. R. R. Tolkien', 15, '2015', 'Zysk', 'fantastyka', 'https://cf1-taniaksiazka.statiki.pl/images/large/437/978838116520433.jpg', 11, 15),
(21, 'Władca Pierścieni. Tom 3. Powrót króla.', 'J. R. R. Tolkien', 38, '2017', 'Zysk', 'fantastyka', 'https://cf1-taniaksiazka.statiki.pl/images/large/AA1/9788381161756.jpg', 14, 19),
(22, 'Harry Potter i Kamień Filozoficzny', 'J. K. Rowling', 25, '2016', 'Media Rodzina', 'fantastyka', 'https://cf1-taniaksiazka.statiki.pl/images/large/081/9788380082328.jpg', 25, 22),
(23, 'Harry Potter i Komnata Tajemnic', 'J. K. Rowling', 35, '2016', 'Media Rodzina', 'fantastyka', 'https://cf1-taniaksiazka.statiki.pl/images/large/F34/9788380082489.jpg', 15, 15),
(24, 'Harry Potter i Więzień Azkabanu', 'J. K. Rowling', 25, '2016', 'Media Rodzina', 'fantastyka', 'https://cf1-taniaksiazka.statiki.pl/images/large/802/9788380082151.jpg', 9, 15),
(25, 'Harry Potter 4 Czara Ognia', 'J. K. Rowling', 27, '2016', 'Media Rodzina', 'fantastyka', 'https://cf1-taniaksiazka.statiki.pl/images/large/E2E/978838008238033.jpg', 6, 15),
(26, 'Harry Potter i Zakon Feniksa', 'J. K. Rowling', 50, '2016', 'Media Rodzina', 'fantastyka', 'https://cf1-taniaksiazka.statiki.pl/images/large/9B1/9788380082410.jpg', 15, 15),
(27, 'Harry Potter i Książę Półkrwi', 'J. K. Rowling', 38, '2016', 'Media Rodzina', 'fantastyka', 'https://cf1-taniaksiazka.statiki.pl/images/large/305/9788380082229.jpg', 15, 15),
(28, 'Harry Potter i Insygnia Śmierci', 'J. K. Rowling', 29, '2016', 'Media Rodzina', 'fantastyka', 'https://cf1-taniaksiazka.statiki.pl/images/large/F2D/9788380082236.jpg', 20, 15),
(29, 'Harry Potter i Przeklęte Dziecko. Część 1 i 2. Wydanie poszerzone', 'J. K. Rowling', 28, '2019', 'Media Rodzina', 'fantastyka', 'https://cf1-taniaksiazka.statiki.pl/images/large/471/9788380086593.jpg', 18, 20),
(30, 'Ludzie Smileya\r\n', 'John Le Carré', 30, '2014', 'Sonia Draga', 'kryminał', 'https://cf1-taniaksiazka.statiki.pl/images/large/D2E/9788375088717.jpg', 19, 5),
(31, 'Szamo', 'Krzysztof Stanowski', 65, '2021', 'Kanał Sportowy', 'biografia', 'https://gfx.r-gol.com/media/res/products/67/149067/795x1035/2080697450543_1.jpg', 10, 5),
(32, 'Kowal. Prawdziwa historia', 'Wojciech Kowalczyk, Krzysztof Stanowski', 65, '2021', 'Kanał Sportowy', 'biografia', 'https://gfx.r-gol.com/media/res/products/66/149066/795x1035/2080697450542_1.jpg', 10, 5),
(33, 'Spalony. Autobiografia', 'Andrzej Iwan', 65, '2021', 'Kanał Sportowy', 'biografia', 'https://gfx.r-gol.com/media/res/products/64/149064/795x1035/2080697450540_1.jpg', 15, 5),
(34, 'Python dla testera', 'Piotr Wróblewski', 45, '2021', 'Helion', 'naukowe', 'https://static01.helion.com.pl/global/okladki/326x466/pyttes.png', 6, 5),
(35, 'Java. Efektywne programowanie. Wydanie III', 'Joshua Bloch', 48, '2021', 'Helion', 'naukowe', 'https://static01.helion.com.pl/global/okladki/326x466/javep3.png', 9, 10),
(36, 'Jak działa Linux. Podręcznik administratora. Wydanie II', 'Brian Ward', 44, '2021', 'Helion', 'naukowe', 'https://static01.helion.com.pl/global/okladki/326x466/jakli2.png', 11, 10),
(37, 'Kierunek jakość. Jak unikać błędów w projekcie', 'Aleksandra Kunysz', 28, '2021', 'Helion', 'naukowe', 'https://static01.helion.com.pl/global/okladki/326x466/jaktob.png', 10, 10),
(38, 'Kod. Ukryty język komputerów', 'Charles Petzold', 58, '2021', 'Helion', 'naukowe', 'https://static01.helion.com.pl/global/okladki/326x466/kodukr.png', 10, 15),
(39, 'Jak Unix tworzył historię', 'Brian W. Kernighan', 40, '2021', 'Helion', 'naukowe', 'https://static01.helion.com.pl/global/okladki/326x466/jakuth.png', 10, 10),
(40, 'Linux. Wprowadzenie do wiersza poleceń. Wydanie II', 'William Shotts', 65, '2021', 'Helion', 'naukowe', 'https://static01.helion.com.pl/global/okladki/326x466/linwp2.png', 29, 15),
(41, 'Superinteligencja. Scenariusze, strategie, zagrożenia', 'Nick Bostrom', 35, '2019', 'Helion', 'naukowe', 'https://static01.helion.com.pl/global/okladki/326x466/supinv.png', 15, 15),
(42, 'Praktyczny kurs SQL. Wydanie III', 'Danuta Mendrala, Marcin Szeliga', 30, '2017', 'Helion', 'naukowe', 'https://static01.helion.com.pl/global/okladki/326x466/pksql3.png', 18, 25);

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
(2, 'Pawi2', '$2y$10$.4gvmyVZ2zcbu0/NJvU.CODO19Wysgo5m9LfAziniscXthnliJIUy', 'Klient', '2021-11-13 00:15:08', 'Pawel', 'Kolawa', 'Albania', 'Stary Sącz', '33-340', 'Wegierska', 45, 'kolawa141p@gmail.com'),
(3, 'kunkol', '$2y$10$MduK2CEHOj7iSlJYMGS.5eYB71SyZriGrlkHJ03jPKFvqzOgZ5zNu', 'Klient', '2021-11-15 03:13:39', 'Konrad', 'Kulka', 'Polska', 'Ropa', '38-312', 'Daleko 1', 15, 'kk@poczta.pl');

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
  MODIFY `id_ksiazka` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

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
  MODIFY `id_konto` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

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
