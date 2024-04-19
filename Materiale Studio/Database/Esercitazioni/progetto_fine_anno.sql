-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Creato il: Feb 02, 2023 alle 10:42
-- Versione del server: 8.0.30
-- Versione PHP: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `progetto_fine_anno`
--

-- --------------------------------------------------------

--
-- Struttura della tabella `annunci`
--

CREATE TABLE `annunci` (
  `idannunci` int NOT NULL,
  `data` date DEFAULT NULL,
  `titolo` varchar(45) DEFAULT NULL,
  `testo` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Struttura della tabella `eventi`
--

CREATE TABLE `eventi` (
  `idEventi` int NOT NULL,
  `tipologia` enum('online','dal_vivo') DEFAULT NULL,
  `data_inizio` date DEFAULT NULL,
  `ora_inizio` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Struttura della tabella `giochi`
--

CREATE TABLE `giochi` (
  `idgiochi` int NOT NULL,
  `nome` varchar(45) DEFAULT NULL,
  `descrizione` varchar(45) DEFAULT NULL,
  `immagine` varchar(45) DEFAULT NULL,
  `genere` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Struttura della tabella `news`
--

CREATE TABLE `news` (
  `idnews` int NOT NULL,
  `data` date DEFAULT NULL,
  `titolo` varchar(45) DEFAULT NULL,
  `testo` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Struttura della tabella `pref_giochi`
--

CREATE TABLE `pref_giochi` (
  `utenti_idutenti` int NOT NULL,
  `giochi_idgiochi` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Struttura della tabella `utenti`
--

CREATE TABLE `utenti` (
  `idutenti` int NOT NULL,
  `email` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  `ruolo` enum('amministratore','moderatore','giocatore','organizzatore') CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `idannunci` int NOT NULL,
  `ideventi` int NOT NULL,
  `idnews` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Indici per le tabelle scaricate
--

--
-- Indici per le tabelle `annunci`
--
ALTER TABLE `annunci`
  ADD PRIMARY KEY (`idannunci`);

--
-- Indici per le tabelle `eventi`
--
ALTER TABLE `eventi`
  ADD PRIMARY KEY (`idEventi`);

--
-- Indici per le tabelle `giochi`
--
ALTER TABLE `giochi`
  ADD PRIMARY KEY (`idgiochi`);

--
-- Indici per le tabelle `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`idnews`);

--
-- Indici per le tabelle `pref_giochi`
--
ALTER TABLE `pref_giochi`
  ADD PRIMARY KEY (`utenti_idutenti`,`giochi_idgiochi`),
  ADD KEY `fk_utenti_has_giochi_giochi1_idx` (`giochi_idgiochi`),
  ADD KEY `fk_utenti_has_giochi_utenti_idx` (`utenti_idutenti`);

--
-- Indici per le tabelle `utenti`
--
ALTER TABLE `utenti`
  ADD PRIMARY KEY (`idutenti`,`idannunci`,`ideventi`,`idnews`),
  ADD KEY `fk_utenti_annunci1_idx` (`idannunci`),
  ADD KEY `eventi_idx` (`ideventi`),
  ADD KEY `pippo_idx` (`idnews`);

--
-- AUTO_INCREMENT per le tabelle scaricate
--

--
-- AUTO_INCREMENT per la tabella `annunci`
--
ALTER TABLE `annunci`
  MODIFY `idannunci` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT per la tabella `eventi`
--
ALTER TABLE `eventi`
  MODIFY `idEventi` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT per la tabella `giochi`
--
ALTER TABLE `giochi`
  MODIFY `idgiochi` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT per la tabella `news`
--
ALTER TABLE `news`
  MODIFY `idnews` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT per la tabella `utenti`
--
ALTER TABLE `utenti`
  MODIFY `idutenti` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Limiti per le tabelle scaricate
--

--
-- Limiti per la tabella `pref_giochi`
--
ALTER TABLE `pref_giochi`
  ADD CONSTRAINT `fk_utenti_has_giochi_giochi1` FOREIGN KEY (`giochi_idgiochi`) REFERENCES `giochi` (`idgiochi`),
  ADD CONSTRAINT `fk_utenti_has_giochi_utenti` FOREIGN KEY (`utenti_idutenti`) REFERENCES `utenti` (`idutenti`);

--
-- Limiti per la tabella `utenti`
--
ALTER TABLE `utenti`
  ADD CONSTRAINT `eventi` FOREIGN KEY (`ideventi`) REFERENCES `eventi` (`idEventi`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `fk_utenti_annunci1` FOREIGN KEY (`idannunci`) REFERENCES `annunci` (`idannunci`),
  ADD CONSTRAINT `pippo` FOREIGN KEY (`idnews`) REFERENCES `news` (`idnews`) ON DELETE RESTRICT ON UPDATE RESTRICT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
