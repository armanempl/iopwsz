-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 22 Lis 2021, 00:16
-- Wersja serwera: 10.4.21-MariaDB
-- Wersja PHP: 7.3.31

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
(42, 'Praktyczny kurs SQL. Wydanie III', 'Danuta Mendrala, Marcin Szeliga', 30, '2017', 'Helion', 'naukowe', 'https://static01.helion.com.pl/global/okladki/326x466/pksql3.png', 18, 25),
(43, 'English 4 IT. Praktyczny kurs języka angielskiego dla specjalistów IT i nie tylko', 'Beata Błaszczyk', 49.99, '2016', 'Helion', 'naukowa', 'https://static01.helion.com.pl/global/okladki/326x466/anginv.png', 12, 30),
(44, 'Okrutny książę. Tom 1', 'Holly Black', 29.99, '2018', 'Jaguar', 'fantastyka', 'https://bigimg.taniaksiazka.pl/images/popups/B8C/9788376867243.jpg', 10, 20),
(45, 'Chąśba', 'Katarzyna Puzyńska', 24.99, '2021', 'Prószyński i S-Ka', 'fantastyka', 'https://cf-taniaksiazka.statiki.pl/images/large/660/9788382343182.jpg', 1, 10),
(46, 'Wiedźmin. Tom 1. Ostatnie życzenie', 'Andrzej Sapkowski', 34.99, '2014', 'SuperNowa', 'fantastyka', 'https://cf-taniaksiazka.statiki.pl/images/large/123/68007901377KS.jpg', 43, 17),
(47, 'Zły król. Okrutny książę. Tom 2', 'Holly Black', 29.99, '2019', 'Jaguar', 'fantastyka', 'https://cf-taniaksiazka.statiki.pl/images/large/D11/9788376867649.jpg', 0, 0),
(48, 'Zły król. Okrutny książę. Tom 2', 'Holly Black', 29.99, '2019', 'Jaguar', 'fantastyka', 'https://cf-taniaksiazka.statiki.pl/images/large/D11/9788376867649.jpg', 9, 9),
(49, 'Niegrzeczni chłopcy dają najlepsze prezenty', 'Anna Langner', 34.99, '2021', 'Niegrzeczne Książki', 'kobiece', 'https://cf-taniaksiazka.statiki.pl/images/large/FA6/9788367014281.jpg', 58, 3),
(50, 'Zasypani zakochani', 'Agnieszka Lingas-Łoniewska', 41.99, '2021', 'Słowne', 'kobiece', 'https://cf-taniaksiazka.statiki.pl/images/large/D20/9788382510171.jpg', 1, 13),
(51, 'Solista, czyli on, ona i jego żona', 'Piotr C', 14.99, '2021', 'Novae Res', 'kobiece', 'https://cf-taniaksiazka.statiki.pl/images/large/C9F/9788382195996.jpg', 12, 9),
(52, 'Insulinooporność. Szybkie dania', 'Magdalena Makarowska, Dominika Musiałowska ', 30.99, '2019', 'Feeria', 'kuchenne', 'https://cf-taniaksiazka.statiki.pl/images/large/EF3/9788372298485.jpg', 8, 1),
(53, 'Dom pełen miłości. Przepisy na cztery pory roku', 'Agnieszka Maciąg', 18.99, '2021', 'Otwarte', 'kuchenne', 'https://cf-taniaksiazka.statiki.pl/images/large/ECD/9788381351256.jpg', 1, 14),
(54, 'Alaantkowe BLW', 'Anna Piszczek Joanna Anger ', 48.99, '2015', 'Mamania', 'kuchenne', 'https://cf-taniaksiazka.statiki.pl/images/large/A36/9788365087126.jpg', 11, 18),
(55, 'Mów mi Win', 'Harlan Coben', 25.99, '2021', 'Albatros', 'kryminał', 'https://cf-taniaksiazka.statiki.pl/images/large/EFC/9788382157079.jpg', 8, 10),
(56, 'Przepaść. Komisarz Forst. Tom 7', 'Remigiusz Mróz', 20.99, '2021', 'Filia', 'kryminał', 'https://cf-taniaksiazka.statiki.pl/images/large/8D0/9788381957120.jpg', 2, 40),
(57, 'Egzekucja. Joanna Chyłka. Tom 14', 'Remigiusz Mróz', 29.99, '2021', 'Czwarta Strona', 'kryminał', 'https://cf-taniaksiazka.statiki.pl/images/large/2A4/9788366981027.jpg', 19, 38),
(58, 'Kajko i Kokosz. Szkoła latania', 'Janusz Christa ', 14.99, '2021', 'Egmont', 'komiks', 'https://cf-taniaksiazka.statiki.pl/images/large/3E5/9788328159822.jpg', 11, 10),
(59, 'Heartstopper. Tom 1', 'Alice Oseman ', 71.99, '2021', 'Jaguar', 'komiks', 'https://cf-taniaksiazka.statiki.pl/images/large/BD5/9788382660074.jpg', 8, 2),
(60, 'Asteriks i Gryf. Asteriks. Album 39', 'Jean-Yves Ferrie Didier Conrad ', 13.99, '2021', 'Egmont', 'komiks', 'https://cf-taniaksiazka.statiki.pl/images/large/23F/9788328160873.jpg', 2, 6),
(61, 'TOPR. Żeby inni mogli przeżyć', 'Beata Sabała-Zielińska', 20.99, '2018', 'Prószyński i S-Ka', 'hobby', 'https://cf-taniaksiazka.statiki.pl/images/large/2CC/9788381233828.jpg', 2, 3),
(62, '220 splotów szydełkowych', '-', 49.99, '2017', 'RM', 'hobby', 'https://cf-taniaksiazka.statiki.pl/images/large/888/9788381514835.jpg', 8, 6),
(63, 'Snajper wchodzi pierwszy', 'Michał Wójcik Przemysław Wójtowicz ', 41.99, '2021', 'Znak', 'hobby', 'https://cf-taniaksiazka.statiki.pl/images/large/CD5/9788324072484.jpg', 3, 2),
(64, 'Czuła przewodniczka. Kobieca droga do siebie', 'Natalia de Barbaro', 80, '2021', 'Agora', 'poradnik', 'https://cf-taniaksiazka.statiki.pl/images/large/413/9788326836442.jpg', 80, 2),
(65, 'Potęga podświadomości', 'Joseph Murphy', 51.99, '2020', 'Świat Książki', 'poradnik', 'https://cf-taniaksiazka.statiki.pl/images/large/52E/9788381395199.jpg', 1, 3),
(66, 'Kicia Kocia i Nunuś. Idą święta', 'Anita Głowińska', 31, '2021', 'Media Rodzina', 'dziecięce', 'https://cf-taniaksiazka.statiki.pl/images/large/E0D/9788382650235.jpg', 3, 12),
(67, 'Gwiazdkowy Prosiaczek', 'J.K. Rowling', 32, '2021', 'Media Rodzina', 'dziecięce', 'https://cf-taniaksiazka.statiki.pl/images/large/FE6/9788382650082.jpg', 9, 40),
(68, 'Niesamowite przygody dziesięciu skarpetek (czterech prawych i sześciu lewych)', 'Justyna Bednarek', 30, '2015', 'Poradnia K', 'dziecięce', 'https://cf-taniaksiazka.statiki.pl/images/large/FF1/9788363960131.jpg', 43, 40),
(69, 'Prawdziwa historia Królowej Życia', 'Dagmara Kaźmierska', 23, '2021', 'Espr', 'reportaż', 'https://cf-taniaksiazka.statiki.pl/images/large/59B/9788396019103.jpg', 4, 3),
(70, 'Kajś. Opowieść o Górnym Śląsku', 'Zbigniew Rokita', 32, '2020', 'Czarne', 'reportaż', 'https://cf-taniaksiazka.statiki.pl/images/large/9C9/9788381910774.jpg', 1, 2),
(71, 'Gomora. Władza, strach i pieniądze w polskim Kościele', 'Stanisław Obirek, Artur Nowak ', 40, '2021', 'Agora', 'reportaż', 'https://cf-taniaksiazka.statiki.pl/images/large/526/9788326837388.jpg', 2, 12),
(72, 'Poznać przeszłość 3. Podręcznik do historii dla liceum ogólnokształcącego i technikum. Zakres podstawowy. Szkoły ponadpodstawowe', 'Anna Łaszkiewicz, Jarosław Kłaczkow, Stanisław Roszak', 50, '2021', 'Nowa Era', 'podręcznik', 'https://cf-taniaksiazka.statiki.pl/images/large/867/9788326741487.jpg', 41, 100),
(73, 'Odkryć fizykę 3. Podręcznik do fizyki dla liceum ogólnokształcącego i technikum. Zakres podstawowy. Szkoła ponadpodstawowa', 'Marcin Braun, Weronika Śliwa ', 41.99, '2021', 'Nowa Era', 'podręcznik', 'https://cf-taniaksiazka.statiki.pl/images/large/F75/9788326741906.jpg', 41, 97),
(74, 'Ponad słowami 3. Część 1. Język polski. Podręcznik dla liceum ogólnokształcącego i technikum. Zakres podstawowy i rozszerzony', 'Anna Równy, Joanna Ginter, Joanna Kościerzyńska, Anna Cisowska, Aleksandra Wróblewska, Małgorzata Matecka', 41, '2021', 'Nowa Era', 'podręcznik', 'https://cf-taniaksiazka.statiki.pl/images/large/253/9788326740459.jpg', 31, 81),
(75, 'Elf do zadań specjalnych. 24 opowiadania', 'Katarzyna Wierzbicka', 46, '2021', 'Zielona Sowa', 'fantastyka', 'https://cf-taniaksiazka.statiki.pl/images/large/2B2/9788382402292.jpg', 12, 4),
(76, 'Masz nową parę!', 'Anna Klimczewska', 61, '2021', 'Euro Pilot', 'kobiece', 'https://cf-taniaksiazka.statiki.pl/images/large/E46/9788382181111.jpg', 2, 3),
(77, 'Pętla', 'Kamil Staniszek', 40, '2021', 'Vesper', 'powieść', 'https://cf-taniaksiazka.statiki.pl/images/large/429/9788377313992.jpg', 2, 12),
(78, 'Szaleństwo Cthulhu, Kroniki Arkham', 'S.T. Joshi', 79, '2021', 'Vesper', 'fantastyka', 'https://cf-taniaksiazka.statiki.pl/images/large/4FA/9788377314005.jpg', 41, 2),
(79, 'Becoming. Moja historia. Dla młodych czytelniczek i czytelników', 'Michelle Obama', 40, '2021', 'Agora', 'młodzieżowa', 'https://cf-taniaksiazka.statiki.pl/images/large/C99/9788326838132.jpg', 2, 4),
(80, 'Bad boy i chłopczyca', 'Nicole Nwosu', 40, '2021', 'BeYA', 'młodzieżowa', 'https://cf-taniaksiazka.statiki.pl/images/large/E32/9788328382152.jpg', 4, 5),
(81, 'Grzeczni chłopcy nie kradną staników', 'Lauren Price', 28, '2021', 'BeYA', 'młodzieżowa', 'https://cf-taniaksiazka.statiki.pl/images/large/231/9788328382497.jpg', 51, 12),
(82, 'O niepodległość i prawa kobiet', 'Kamila Cybulska', 21, '2021', 'Instytut Pamięci Narodowej', 'literatura faktu', 'https://cf-taniaksiazka.statiki.pl/images/large/61A/9788382292862.jpg', 12, 4),
(83, 'My, trans', 'Piotr Jacoń', 29, '2021', 'RM', 'literatura faktu', 'https://cf-taniaksiazka.statiki.pl/images/large/619/9788381515627.jpg', 12, 1),
(84, 'Oddział Zamknięty. Napiętnowani marzeniami', 'Michał Grzesiek', 23, '2021', 'Sine Qua Non', 'literatura faktu', 'https://cf-taniaksiazka.statiki.pl/images/large/4D5/9788381295772.jpg', 3, 2),
(85, 'Kronos 2/2021 Neoplatonizm', '-', 24.99, '2021', 'Kronos', 'czasopismo', 'https://cf-taniaksiazka.statiki.pl/images/large/14A/5902490416598.jpg', 4, 40),
(86, 'Psotny faun mia i ja magiczna księga Tom 11', '-', 20, '2020', 'Media Service Zawada', 'czasopismo', 'https://cf-taniaksiazka.statiki.pl/images/large/CCF/978837994100133.jpg', 2, 12),
(88, 'Forbes Women 6/2020', '-', 30, '2020', 'Ringier Axel Springer Polska', 'czasopismo', 'https://cf-taniaksiazka.statiki.pl/images/large/A5D/9772657573008.jpg', 5, 2),
(89, 'Kronos 1/2020 Nietzsche Rilke', '-', 20, '2020', 'Kronos', 'czasopismo', 'https://cf-taniaksiazka.statiki.pl/images/large/186/9771897155203.jpg', 4, 1),
(90, 'Dziady. Część II', 'Adam Mickiewicz', 30, '2021', 'Greg', 'dramat', 'https://cf-taniaksiazka.statiki.pl/images/large/FB2/9788375178890.jpg', 67, 100),
(91, 'Człowiek w poszukiwaniu sensu. Głos nadziei z otchłani Holokaustu', 'Viktor Emil Frankl ', 40, '2019', 'Czarna Owca', 'dramat', 'https://cf-taniaksiazka.statiki.pl/images/large/E97/9788381433563.jpg', 2, 24),
(92, 'Obcy', 'Albert Camus', 31, '2021', 'Państwowy Instytut Wydawniczy', 'dramat', 'https://cf-taniaksiazka.statiki.pl/images/large/76E/9788381962308.jpg', 18, 60),
(93, 'Za zasłoną chmur. Wiatr ze wschodu. Tom 4', 'Maria Paszyńska', 29, '2021', 'Książnica', 'dramat', 'https://cf-taniaksiazka.statiki.pl/images/large/2CF/9788324584727.jpg', 40, 20),
(94, 'A bodaj Ci nóżka spuchła, czyli co nas śmieszyło i śmieszy', 'Jerzy Bralczyk, Michał Ogórek ', 35, '2021', 'Agora', 'humor', 'https://cf-taniaksiazka.statiki.pl/images/large/DF6/9788326836718.jpg', 12, 10),
(95, 'Matka siedzi z tyłu. Opowieści z d**y wzięte', 'Joanna Mokosa-Rykalska', 30, '2021', 'Wielka Litera', 'humor', 'https://cf-taniaksiazka.statiki.pl/images/large/00D/9788380326309.jpg', 20, 6),
(96, 'Folwark Zwierzęcy', 'George Orwell', 26, '2011', 'Muza', 'humor', 'https://cf-taniaksiazka.statiki.pl/images/large/408/52576101049KS.jpg', 12, 7),
(97, 'Nie w humorze', 'Fran Lebowitz', 31, '2021', 'Znak', 'humor', 'https://cf-taniaksiazka.statiki.pl/images/large/88D/9788324074785.jpg', 20, 11),
(98, 'Wielka encyklopedia koni', '=', 40, '2019', 'Arti', 'endyklopedia', 'https://cf-taniaksiazka.statiki.pl/images/large/97C/9788377409749.jpg', 1, 3),
(99, 'Popularny słownik poprawnej polszczyzny', 'Agata Gałczyk', 20, '2007', 'Arti', 'słownik', 'https://cf-taniaksiazka.statiki.pl/images/large/1AA/978837740645833.jpg', 3, 10),
(100, 'Mózg chce więcej dopamina naturalny dopalacz', 'Michael E Long ', 48, '2019', 'Feeria', 'encykopedia', 'https://cf-taniaksiazka.statiki.pl/images/large/DB9/9788372298331.jpg', 17, 21),
(101, 'Pakiet atlasów geograficznych. Szkoła podstawowa klasy 5-8', '-', 48, '2019', 'Demart', 'atlas', 'https://cf-taniaksiazka.statiki.pl/images/large/6B6/9788379122240.jpg', 4, 12),
(102, 'Atlas świata dla dzieci', '-', 21, '2021', 'Fenix', 'atlas', 'https://cf-taniaksiazka.statiki.pl/images/large/A70/9788379324842.jpg', 4, 12),
(103, 'Atlas polski z naklejkami i plakatem', 'Paulina Kaniewska', 40, '2016', 'Wilga', 'atlas', 'https://cf-taniaksiazka.statiki.pl/images/large/030/9788328039216.jpg', 5, 4),
(104, 'Zaklęcia ochronne. Jak pozbyć się negatywnej energii i odzyskać swoją moc', 'Arin Murphy-Hiscock', 22, '2020', 'Kobiece', 'nauki tajemne', 'https://cf-taniaksiazka.statiki.pl/images/large/E80/9788366520646.jpg', 2, 12),
(105, 'Fizyka kwantowa na co dzień', 'Ulrich Warnke', 41, '2021', 'Studio Astropsychologii', 'nauki tajemne', 'https://cf-taniaksiazka.statiki.pl/images/large/C7C/9788381714181.jpg', 4, 12),
(106, 'W domu czarownicy. Jak za pomocą rytuałów i zaklęć stworzyć przestrzeń pełną dobrej energii', 'Arin Murphy-Hiscock', 28, '2021', 'Kobiece', 'nauki tajemne', 'https://cf-taniaksiazka.statiki.pl/images/large/9B0/9788366967380.jpg', 2, 2),
(107, 'Magia księżycowa. Mity, zaklęcia, przepisy i rytuały', 'D. J. Conway', 21, '2021', 'Kobiece', 'nauki tajemne', 'https://cf-taniaksiazka.statiki.pl/images/large/37C/9788367014335.jpg', 5, 12),
(108, 'Trzy siostry', 'Heather Morris', 28, '2021', 'Marginesy', 'poezja', 'https://cf-taniaksiazka.statiki.pl/images/large/873/9788367022002.jpg', 4, 1),
(109, 'Almond', 'Won-Pyung Sohn', 22, '2021', 'Mova', 'poezja', 'https://cf-taniaksiazka.statiki.pl/images/large/8A7/9788366967434.jpg', 4, 12),
(110, 'Nigdy', 'Ken Follett', 33, '2021', 'Albatros', 'poezja', 'https://cf-taniaksiazka.statiki.pl/images/large/A6F/9788382157222.jpg', 4, 12),
(111, 'Sherlock Holmes. Wydanie Kompletne', 'Artur Conan Doyle', 130, '2017', 'Algo', 'opowiadanie', 'https://cf-taniaksiazka.statiki.pl/images/large/24E/978836488890833.jpg', 22, 3),
(112, 'Miasto z mgły', 'Carlos Ruiz Zafon', 33, '2021', 'Muza', 'opowiadanie', 'https://cf-taniaksiazka.statiki.pl/images/large/F1E/9788328716797.jpg', 3, 11),
(113, 'Kat miłości. Opowieści psychoterapeutyczne', 'Irvin D. Yalom', 22, '2021', 'Czarna Owca', 'opowiadanie', 'https://cf-taniaksiazka.statiki.pl/images/large/505/9788381437400.jpg', 4, 7),
(114, 'Sielanki', 'George Saunders', 31, '2021', 'Znak', 'opowiadanie', 'https://cf-taniaksiazka.statiki.pl/images/large/746/9788324063147.jpg', 3, 22),
(115, 'Wybór pism estetyczno-lit KMZ mk n', 'Jan Śniadecki', 5, '2021', 'Universitas', 'esej', 'https://cf-taniaksiazka.statiki.pl/images/large/B7F/978832420208933.jpg', 2, 3),
(116, 'Historia Fikcja (Auto)biografia w powieści brytyjskiej XX wieku ', 'Krystyna Stamirowska ', 12, '2020', 'Universitas', 'esej', 'https://cf-taniaksiazka.statiki.pl/images/large/BE9/979832420518833.jpg', 2, 2),
(117, 'Wprowadzenie do imaginarium literatury afrykańskiej cz 2 Rozliczenie z kolonializmem', 'Janusz Krzywicki', 7, '2020', 'Trio', 'esej', 'https://cf-taniaksiazka.statiki.pl/images/large/204/978837436114933.jpg', 1, 2),
(118, 'Przysłowia polskie', 'Grzegorz Strzeboński', 7, '2021', 'Greg', 'przysłowia', 'https://cf-taniaksiazka.statiki.pl/images/large/5B7/67663501465KS.jpg', 4, 8),
(119, 'Myśli na każdy dzień', 'Dolindo Ruotolo', 13, '2019', 'M', 'aforyzmy', 'https://cf-taniaksiazka.statiki.pl/images/large/B11/9788380435148.jpg', 4, 2),
(120, 'Ludzkie arcyludzkie', 'Fryderyk Nietzsche', 13, '2016', 'vis-a-vis Etiuda', 'aforyzmy', 'https://cf-taniaksiazka.statiki.pl/images/large/096/9788379980864.jpg', 12, 12),
(121, 'Innymi słowy. Niezwykłe słowa z różnych stron świata', 'Yee-Lum Mak', 17, '2018', 'Egmont', 'aforyzmy', 'https://cf-taniaksiazka.statiki.pl/images/large/20A/978832813294833.jpg', 4, 2);

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
  MODIFY `id_ksiazka` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=122;

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
