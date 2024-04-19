-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Creato il: Gen 09, 2023 alle 11:45
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
-- Database: `pizzeria`
--

DELIMITER $$
--
-- Procedure
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `verifica_login` (IN `login` VARCHAR(255), IN `parola_segreta` VARCHAR(255))   BEGIN
	select count(clienti.id_cliente)  AS verif
    from clienti
    where clienti.email=login AND clienti.password=parola_segreta;
END$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Struttura della tabella `clienti`
--

CREATE TABLE `clienti` (
  `id_cliente` int NOT NULL,
  `nome` varchar(255) NOT NULL,
  `cognome` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dump dei dati per la tabella `clienti`
--

INSERT INTO `clienti` (`id_cliente`, `nome`, `cognome`, `email`, `password`) VALUES
(14, 'Vincenzo', 'Menniti', 'mennitivincenzo0000@gmail.com', 'pass');

-- --------------------------------------------------------

--
-- Struttura della tabella `ordini`
--

CREATE TABLE `ordini` (
  `id_ordine` int NOT NULL,
  `orario_corrente` time DEFAULT NULL,
  `data_corrente` date DEFAULT NULL,
  `data_prenotazione` date DEFAULT NULL,
  `ora_prenotazione` time DEFAULT NULL,
  `clienti_id_cliente` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dump dei dati per la tabella `ordini`
--

INSERT INTO `ordini` (`id_ordine`, `orario_corrente`, `data_corrente`, `data_prenotazione`, `ora_prenotazione`, `clienti_id_cliente`) VALUES
(100, '11:28:55', '2022-12-14', '2022-12-14', '11:28:00', 14),
(101, '11:28:55', '2022-12-14', '2022-12-14', '11:28:00', 14);

-- --------------------------------------------------------

--
-- Struttura della tabella `personale`
--

CREATE TABLE `personale` (
  `id_personale` int NOT NULL,
  `nome` varchar(255) NOT NULL,
  `cognome` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Struttura della tabella `pizze`
--

CREATE TABLE `pizze` (
  `id_pizza` int NOT NULL,
  `nome_pizza` varchar(255) NOT NULL DEFAULT '1',
  `prezzo` float DEFAULT NULL,
  `ingredienti` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dump dei dati per la tabella `pizze`
--

INSERT INTO `pizze` (`id_pizza`, `nome_pizza`, `prezzo`, `ingredienti`) VALUES
(1, 'Margherita', 5, 'non so'),
(2, 'Tonno-Cipolla', 6, 'cipolle di tropea');

-- --------------------------------------------------------

--
-- Struttura della tabella `prenotazioni`
--

CREATE TABLE `prenotazioni` (
  `idprenotazioni` int NOT NULL,
  `quantita` int DEFAULT NULL,
  `id_ordine` int NOT NULL,
  `id_pizza` int NOT NULL,
  `note` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dump dei dati per la tabella `prenotazioni`
--

INSERT INTO `prenotazioni` (`idprenotazioni`, `quantita`, `id_ordine`, `id_pizza`, `note`) VALUES
(37, 10, 100, 2, ''),
(38, 10, 101, 1, '');

--
-- Indici per le tabelle scaricate
--

--
-- Indici per le tabelle `clienti`
--
ALTER TABLE `clienti`
  ADD PRIMARY KEY (`id_cliente`);

--
-- Indici per le tabelle `ordini`
--
ALTER TABLE `ordini`
  ADD PRIMARY KEY (`id_ordine`,`clienti_id_cliente`),
  ADD UNIQUE KEY `id_ordine_UNIQUE` (`id_ordine`),
  ADD KEY `fk_clienti_has_pizze_pizze1_idx` (`orario_corrente`),
  ADD KEY `fk_clienti_has_pizze_clienti_idx` (`id_ordine`),
  ADD KEY `fk_ordini_clienti1_idx1` (`clienti_id_cliente`);

--
-- Indici per le tabelle `personale`
--
ALTER TABLE `personale`
  ADD PRIMARY KEY (`id_personale`);

--
-- Indici per le tabelle `pizze`
--
ALTER TABLE `pizze`
  ADD PRIMARY KEY (`id_pizza`);

--
-- Indici per le tabelle `prenotazioni`
--
ALTER TABLE `prenotazioni`
  ADD PRIMARY KEY (`idprenotazioni`,`id_ordine`,`id_pizza`),
  ADD KEY `pizza buona_idx` (`id_pizza`),
  ADD KEY `ordine_idx` (`id_ordine`);

--
-- AUTO_INCREMENT per le tabelle scaricate
--

--
-- AUTO_INCREMENT per la tabella `clienti`
--
ALTER TABLE `clienti`
  MODIFY `id_cliente` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT per la tabella `ordini`
--
ALTER TABLE `ordini`
  MODIFY `id_ordine` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;

--
-- AUTO_INCREMENT per la tabella `personale`
--
ALTER TABLE `personale`
  MODIFY `id_personale` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT per la tabella `pizze`
--
ALTER TABLE `pizze`
  MODIFY `id_pizza` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT per la tabella `prenotazioni`
--
ALTER TABLE `prenotazioni`
  MODIFY `idprenotazioni` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- Limiti per le tabelle scaricate
--

--
-- Limiti per la tabella `ordini`
--
ALTER TABLE `ordini`
  ADD CONSTRAINT `fk_ordini_clienti1` FOREIGN KEY (`clienti_id_cliente`) REFERENCES `clienti` (`id_cliente`);

--
-- Limiti per la tabella `prenotazioni`
--
ALTER TABLE `prenotazioni`
  ADD CONSTRAINT `ordine` FOREIGN KEY (`id_ordine`) REFERENCES `ordini` (`id_ordine`),
  ADD CONSTRAINT `pizza buona` FOREIGN KEY (`id_pizza`) REFERENCES `pizze` (`id_pizza`) ON DELETE RESTRICT ON UPDATE RESTRICT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
