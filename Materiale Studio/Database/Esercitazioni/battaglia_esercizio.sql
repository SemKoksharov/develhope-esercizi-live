-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Creato il: Nov 09, 2022 alle 15:34
-- Versione del server: 8.0.30
-- Versione PHP: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `battaglia_esercizio`
--

-- --------------------------------------------------------

--
-- Struttura della tabella `articoli`
--

CREATE TABLE `articoli` (
  `idart` int NOT NULL,
  `codart` varchar(20) NOT NULL,
  `desc` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dump dei dati per la tabella `articoli`
--

INSERT INTO `articoli` (`idart`, `codart`, `desc`) VALUES
(3, 'lol', '[value-3]'),
(4, 'lofl', '[value-3]'),
(5, 'lofsl', '[value-3]'),
(6, 'lfofsl', '[value-3]'),
(7, 'lffofsl', '[value-3]'),
(8, 'lffosfsl', '[value-3]'),
(9, 'lffofsfsl', '[value-3]'),
(10, 'lffosfsfsl', '[value-3]'),
(11, 'lffosffsfsl', '[value-3]'),
(12, 'yi', 'yui'),
(13, 'yiui', 'yuiyui'),
(14, 'uiouo', 'uoi'),
(15, 'wrewr', 'werwer'),
(16, 'tertert', 'tyuty'),
(17, 'rtyrty', 'uiouio'),
(18, 'werwerwer', 'rtertd'),
(19, 'rty', 'rty'),
(20, 'olo', 'olo'),
(21, 'si', 'si'),
(22, 'lalla', 'lollo'),
(23, 'Ivan', 'Frangisogni'),
(24, 'asdfasdd', 'adasd'),
(25, 'ads', 'asdasda'),
(26, 'asd', 'sda'),
(88, 'asdfasddff', 'adasd'),
(89, 'ads4f', 'asdasda'),
(90, 'asd123', 'sda'),
(91, 'asd321', 'sd'),
(92, 'asd5d', 'ad'),
(93, '6', 'asd'),
(94, 'as', 'asd'),
(95, 'das6', 'as'),
(96, 'd', 'das'),
(97, 'asdddddd', 'das'),
(98, 'asdg', 'd'),
(99, 'asdv', 'asd'),
(100, 's', 'asd'),
(101, 'gf', 'as'),
(102, 'g7', '7'),
(103, 'hcn', 'das7'),
(104, 'vbbb', 'dzz'),
(105, 'rrxx', 'cc'),
(106, '2rrvv', 'r'),
(107, 'e1qewr', '2r');

-- --------------------------------------------------------

--
-- Struttura della tabella `carico`
--

CREATE TABLE `carico` (
  `idcarico` int NOT NULL,
  `quantita` int DEFAULT NULL,
  `articoli_idart` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dump dei dati per la tabella `carico`
--

INSERT INTO `carico` (`idcarico`, `quantita`, `articoli_idart`) VALUES
(5, 10, 4),
(6, 1, 4),
(7, 13, 3),
(8, 13, 3);

-- --------------------------------------------------------

--
-- Struttura stand-in per le viste `differenza`
-- (Vedi sotto per la vista effettiva)
--
CREATE TABLE `differenza` (
`idart` int
,`codart` varchar(20)
,`totqtacar` decimal(32,0)
,`tot_acquisti` decimal(32,0)
,`tot_vendite` decimal(32,0)
,`totqtascar` decimal(32,0)
,`rimanenza` decimal(35,0)
);

-- --------------------------------------------------------

--
-- Struttura della tabella `fattura_acquisto`
--

CREATE TABLE `fattura_acquisto` (
  `idfattura_acquisto` int NOT NULL,
  `quantita` int DEFAULT NULL,
  `articoli_idart` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dump dei dati per la tabella `fattura_acquisto`
--

INSERT INTO `fattura_acquisto` (`idfattura_acquisto`, `quantita`, `articoli_idart`) VALUES
(1, 1, 3),
(2, 2, 3),
(3, 3, 3),
(4, 4, 3),
(5, 5, 4),
(6, 6, 4),
(7, 7, 4),
(8, 8, 5),
(9, 9, 5);

-- --------------------------------------------------------

--
-- Struttura della tabella `fattura_vendite`
--

CREATE TABLE `fattura_vendite` (
  `idfattura_vendite` int NOT NULL,
  `quantita` int DEFAULT NULL,
  `articoli_idart` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dump dei dati per la tabella `fattura_vendite`
--

INSERT INTO `fattura_vendite` (`idfattura_vendite`, `quantita`, `articoli_idart`) VALUES
(1, 1, 3),
(2, 2, 3),
(3, 3, 3),
(4, 4, 3),
(5, 5, 4),
(6, 6, 4),
(7, 7, 4),
(8, 8, 5),
(9, 9, 5);

-- --------------------------------------------------------

--
-- Struttura della tabella `scarico`
--

CREATE TABLE `scarico` (
  `idscarico` int NOT NULL,
  `quantita` int DEFAULT NULL,
  `articoli_idart` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dump dei dati per la tabella `scarico`
--

INSERT INTO `scarico` (`idscarico`, `quantita`, `articoli_idart`) VALUES
(5, 10, 4),
(6, 1, 4),
(7, 13, 3),
(8, 13, 3);

-- --------------------------------------------------------

--
-- Struttura stand-in per le viste `tot_acquisti`
-- (Vedi sotto per la vista effettiva)
--
CREATE TABLE `tot_acquisti` (
`articoli_idart` int
,`tot_acquisti` decimal(32,0)
);

-- --------------------------------------------------------

--
-- Struttura stand-in per le viste `tot_carico`
-- (Vedi sotto per la vista effettiva)
--
CREATE TABLE `tot_carico` (
`articoli_idart` int
,`totqtacar` decimal(32,0)
);

-- --------------------------------------------------------

--
-- Struttura stand-in per le viste `tot_scarico`
-- (Vedi sotto per la vista effettiva)
--
CREATE TABLE `tot_scarico` (
`articoli_idart` int
,`totqtascar` decimal(32,0)
);

-- --------------------------------------------------------

--
-- Struttura stand-in per le viste `tot_vendite`
-- (Vedi sotto per la vista effettiva)
--
CREATE TABLE `tot_vendite` (
`articoli_idart` int
,`tot_acquisti` decimal(32,0)
);

-- --------------------------------------------------------

--
-- Struttura per vista `differenza`
--
DROP TABLE IF EXISTS `differenza`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `differenza`  AS SELECT `articoli`.`idart` AS `idart`, `articoli`.`codart` AS `codart`, if((`tot_carico`.`totqtacar` is null),0,`tot_carico`.`totqtacar`) AS `totqtacar`, if((`tot_acquisti`.`tot_acquisti` is null),0,`tot_acquisti`.`tot_acquisti`) AS `tot_acquisti`, if((`tot_vendite`.`tot_acquisti` is null),0,`tot_vendite`.`tot_acquisti`) AS `tot_vendite`, if((`tot_scarico`.`totqtascar` is null),0,`tot_scarico`.`totqtascar`) AS `totqtascar`, (((if((`tot_carico`.`totqtacar` is null),0,`tot_carico`.`totqtacar`) + if((`tot_acquisti`.`tot_acquisti` is null),0,`tot_acquisti`.`tot_acquisti`)) - if((`tot_vendite`.`tot_acquisti` is null),0,`tot_vendite`.`tot_acquisti`)) - if((`tot_scarico`.`totqtascar` is null),0,`tot_scarico`.`totqtascar`)) AS `rimanenza` FROM ((((`articoli` left join `tot_acquisti` on((`articoli`.`idart` = `tot_acquisti`.`articoli_idart`))) left join `tot_carico` on((`articoli`.`idart` = `tot_carico`.`articoli_idart`))) left join `tot_scarico` on((`articoli`.`idart` = `tot_scarico`.`articoli_idart`))) left join `tot_vendite` on((`articoli`.`idart` = `tot_vendite`.`tot_acquisti`)))  ;

-- --------------------------------------------------------

--
-- Struttura per vista `tot_acquisti`
--
DROP TABLE IF EXISTS `tot_acquisti`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `tot_acquisti`  AS SELECT `fattura_acquisto`.`articoli_idart` AS `articoli_idart`, sum(`fattura_acquisto`.`quantita`) AS `tot_acquisti` FROM `fattura_acquisto` GROUP BY `fattura_acquisto`.`articoli_idart``articoli_idart`  ;

-- --------------------------------------------------------

--
-- Struttura per vista `tot_carico`
--
DROP TABLE IF EXISTS `tot_carico`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `tot_carico`  AS SELECT `carico`.`articoli_idart` AS `articoli_idart`, sum(`carico`.`quantita`) AS `totqtacar` FROM `carico` GROUP BY `carico`.`articoli_idart``articoli_idart`  ;

-- --------------------------------------------------------

--
-- Struttura per vista `tot_scarico`
--
DROP TABLE IF EXISTS `tot_scarico`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `tot_scarico`  AS SELECT `scarico`.`articoli_idart` AS `articoli_idart`, sum(`scarico`.`quantita`) AS `totqtascar` FROM `scarico` GROUP BY `scarico`.`articoli_idart``articoli_idart`  ;

-- --------------------------------------------------------

--
-- Struttura per vista `tot_vendite`
--
DROP TABLE IF EXISTS `tot_vendite`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `tot_vendite`  AS SELECT `fattura_vendite`.`articoli_idart` AS `articoli_idart`, sum(`fattura_vendite`.`quantita`) AS `tot_acquisti` FROM `fattura_vendite` GROUP BY `fattura_vendite`.`articoli_idart``articoli_idart`  ;

--
-- Indici per le tabelle scaricate
--

--
-- Indici per le tabelle `articoli`
--
ALTER TABLE `articoli`
  ADD PRIMARY KEY (`idart`),
  ADD UNIQUE KEY `codart_UNIQUE` (`codart`);

--
-- Indici per le tabelle `carico`
--
ALTER TABLE `carico`
  ADD PRIMARY KEY (`idcarico`,`articoli_idart`),
  ADD KEY `fk_carico_articoli1_idx` (`articoli_idart`);

--
-- Indici per le tabelle `fattura_acquisto`
--
ALTER TABLE `fattura_acquisto`
  ADD PRIMARY KEY (`idfattura_acquisto`,`articoli_idart`),
  ADD KEY `fk_fattura_acquisto_articoli1_idx` (`articoli_idart`);

--
-- Indici per le tabelle `fattura_vendite`
--
ALTER TABLE `fattura_vendite`
  ADD PRIMARY KEY (`idfattura_vendite`,`articoli_idart`),
  ADD KEY `fk_fattura_vendite_articoli_idx` (`articoli_idart`);

--
-- Indici per le tabelle `scarico`
--
ALTER TABLE `scarico`
  ADD PRIMARY KEY (`idscarico`,`articoli_idart`),
  ADD KEY `fk_scarico_articoli1_idx` (`articoli_idart`);

--
-- AUTO_INCREMENT per le tabelle scaricate
--

--
-- AUTO_INCREMENT per la tabella `articoli`
--
ALTER TABLE `articoli`
  MODIFY `idart` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=108;

--
-- AUTO_INCREMENT per la tabella `carico`
--
ALTER TABLE `carico`
  MODIFY `idcarico` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT per la tabella `fattura_acquisto`
--
ALTER TABLE `fattura_acquisto`
  MODIFY `idfattura_acquisto` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Limiti per le tabelle scaricate
--

--
-- Limiti per la tabella `carico`
--
ALTER TABLE `carico`
  ADD CONSTRAINT `fk_carico_articoli1` FOREIGN KEY (`articoli_idart`) REFERENCES `articoli` (`idart`);

--
-- Limiti per la tabella `fattura_acquisto`
--
ALTER TABLE `fattura_acquisto`
  ADD CONSTRAINT `fk_fattura_acquisto_articoli1` FOREIGN KEY (`articoli_idart`) REFERENCES `articoli` (`idart`);

--
-- Limiti per la tabella `fattura_vendite`
--
ALTER TABLE `fattura_vendite`
  ADD CONSTRAINT `fk_fattura_vendite_articoli` FOREIGN KEY (`articoli_idart`) REFERENCES `articoli` (`idart`);

--
-- Limiti per la tabella `scarico`
--
ALTER TABLE `scarico`
  ADD CONSTRAINT `fk_scarico_articoli1` FOREIGN KEY (`articoli_idart`) REFERENCES `articoli` (`idart`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
