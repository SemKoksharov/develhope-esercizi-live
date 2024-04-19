-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Creato il: Dic 19, 2022 alle 22:07
-- Versione del server: 8.0.31
-- Versione PHP: 8.1.12

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
-- Struttura della tabella `acquistati`
--

CREATE TABLE `acquistati` (
  `idcarico` int NOT NULL,
  `articoli_idart` int NOT NULL,
  `data_acquisto` date DEFAULT NULL,
  `quantita` int DEFAULT NULL,
  `prezzo_acquisto` decimal(10,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dump dei dati per la tabella `acquistati`
--

INSERT INTO `acquistati` (`idcarico`, `articoli_idart`, `data_acquisto`, `quantita`, `prezzo_acquisto`) VALUES
(1, 123, '2022-12-19', 10, '51'),
(2, 123, '2022-12-19', 10, '51'),
(3, 123, '2022-12-19', 10, '51'),
(4, 132, '2022-12-19', 10, '51'),
(6, 134, '2022-12-19', 10, '51'),
(7, 138, '2022-12-19', 10, '51'),
(8, 139, '2022-12-19', 10, '51'),
(9, 137, '2022-12-19', 10, '51'),
(44, 133, '2022-12-19', 10, '51');

-- --------------------------------------------------------

--
-- Struttura della tabella `articoli`
--

CREATE TABLE `articoli` (
  `idart` int NOT NULL,
  `codart` varchar(20) NOT NULL DEFAULT '0',
  `nome` varchar(45) NOT NULL DEFAULT 'nome',
  `descrizione` varchar(255) NOT NULL DEFAULT 'descrizione'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dump dei dati per la tabella `articoli`
--

INSERT INTO `articoli` (`idart`, `codart`, `nome`, `descrizione`) VALUES
(123, '0', 'semi uccelli', 'descrizione'),
(130, '1', 'Crocchette gatti', 'descrizione'),
(131, '2', 'crocchette cani', 'descrizione'),
(132, '3', 'cibo maiali', 'descrizione'),
(133, '4', 'cibo cavalli', 'descrizione'),
(134, '5', 'cibo persone', 'descrizione'),
(135, '6', 'cibo galline', 'descrizione'),
(136, '7', 'polli di razza', 'descrizione'),
(137, '8', 'canarini inseparabili', 'descrizione'),
(138, '9', 'galline che volano per davvero', 'descrizione'),
(139, '10', 'galli che fanno le uova', 'descrizione');

-- --------------------------------------------------------

--
-- Struttura della tabella `venduti`
--

CREATE TABLE `venduti` (
  `idscarico` int NOT NULL,
  `articoli_idart` int NOT NULL,
  `data_vendita` date DEFAULT NULL,
  `quantita` int DEFAULT NULL,
  `prezzo_vendita` decimal(10,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dump dei dati per la tabella `venduti`
--

INSERT INTO `venduti` (`idscarico`, `articoli_idart`, `data_vendita`, `quantita`, `prezzo_vendita`) VALUES
(0, 123, '2022-12-19', 5, '201'),
(1, 123, '2022-12-19', 2, '51'),
(2, 123, '2022-12-19', 3, '51'),
(3, 123, '2022-12-19', 2, '51'),
(4, 132, '2022-12-19', 23, '51'),
(6, 134, '2022-12-19', 10, '51'),
(7, 138, '2022-12-19', 4, '51'),
(8, 139, '2022-12-19', 4, '51'),
(9, 137, '2022-12-19', 3, '51'),
(44, 133, '2022-12-19', 3, '51');

--
-- Indici per le tabelle scaricate
--

--
-- Indici per le tabelle `acquistati`
--
ALTER TABLE `acquistati`
  ADD PRIMARY KEY (`idcarico`,`articoli_idart`),
  ADD KEY `fk_carico_articoli1_idx` (`articoli_idart`);

--
-- Indici per le tabelle `articoli`
--
ALTER TABLE `articoli`
  ADD PRIMARY KEY (`idart`),
  ADD UNIQUE KEY `codart_UNIQUE` (`codart`);

--
-- Indici per le tabelle `venduti`
--
ALTER TABLE `venduti`
  ADD PRIMARY KEY (`idscarico`,`articoli_idart`),
  ADD KEY `fk_scarico_articoli1_idx` (`articoli_idart`);

--
-- AUTO_INCREMENT per le tabelle scaricate
--

--
-- AUTO_INCREMENT per la tabella `acquistati`
--
ALTER TABLE `acquistati`
  MODIFY `idcarico` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT per la tabella `articoli`
--
ALTER TABLE `articoli`
  MODIFY `idart` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=140;

--
-- Limiti per le tabelle scaricate
--

--
-- Limiti per la tabella `acquistati`
--
ALTER TABLE `acquistati`
  ADD CONSTRAINT `fk_carico_articoli1` FOREIGN KEY (`articoli_idart`) REFERENCES `articoli` (`idart`);

--
-- Limiti per la tabella `venduti`
--
ALTER TABLE `venduti`
  ADD CONSTRAINT `fk_scarico_articoli1` FOREIGN KEY (`articoli_idart`) REFERENCES `articoli` (`idart`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
