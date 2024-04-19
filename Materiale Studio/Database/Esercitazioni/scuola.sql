-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Creato il: Dic 27, 2022 alle 15:51
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
-- Database: `scuola`
--

-- --------------------------------------------------------

--
-- Struttura della tabella `corsi`
--

CREATE TABLE `corsi` (
  `idcorsi` int NOT NULL,
  `denominazione` varchar(45) NOT NULL,
  `anno` varchar(45) NOT NULL,
  `costo` decimal(10,0) NOT NULL,
  `limite_partecipanti` int NOT NULL,
  `minimo_partecipanti` int NOT NULL,
  `importo` decimal(10,0) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dump dei dati per la tabella `corsi`
--

INSERT INTO `corsi` (`idcorsi`, `denominazione`, `anno`, `costo`, `limite_partecipanti`, `minimo_partecipanti`, `importo`) VALUES
(1, 'CORSO BELLO', '1000/1001', '123', 11, 2, '0'),
(2, 'corso brutto', '22', '111', 2, 2, '0'),
(3, 'corso veloce', '3', '222', 3, 3, '0'),
(4, 'corso lento', '4', '333', 4, 4, '0'),
(5, 'corso normale', '5', '321', 5, 5, '0');

-- --------------------------------------------------------

--
-- Struttura della tabella `iscrizioni`
--

CREATE TABLE `iscrizioni` (
  `idiscrizioni` int NOT NULL,
  `studenti_idstudenti` int NOT NULL,
  `corsi_idcorsi` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dump dei dati per la tabella `iscrizioni`
--

INSERT INTO `iscrizioni` (`idiscrizioni`, `studenti_idstudenti`, `corsi_idcorsi`) VALUES
(3, 1, 1),
(4, 2, 2),
(5, 2, 3),
(6, 2, 4),
(7, 2, 5),
(8, 2, 1),
(9, 2, 1),
(10, 2, 1),
(11, 3, 3),
(12, 3, 5),
(13, 3, 3),
(14, 3, 1),
(15, 3, 4),
(16, 3, 1);

--
-- Trigger `iscrizioni`
--
DELIMITER $$
CREATE TRIGGER `iscrizioni_AFTER_INSERT` AFTER INSERT ON `iscrizioni` FOR EACH ROW BEGIN
		set @ultimo_id=(SELECT MAX(idiscrizioni) FROM scuola.iscrizioni);
        set @ultimo_id=(SELECT * FROM scuola.ultimo_idiscrizioni);
		INSERT INTO `scuola`.`pagamenti` (`pagato`, `data_pagamento`, `iscrizioni_idiscrizioni`) VALUES ('0', null, @ultimo_id);

END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Struttura stand-in per le viste `i_secchioni`
-- (Vedi sotto per la vista effettiva)
--
CREATE TABLE `i_secchioni` (
`idstudenti` int
,`nome` varchar(45)
,`cognome` varchar(45)
,`data_nascita` date
,`codice_fiscale` varchar(16)
,`totale_corsi` bigint
);

-- --------------------------------------------------------

--
-- Struttura della tabella `pagamenti`
--

CREATE TABLE `pagamenti` (
  `idpagamenti` int NOT NULL,
  `pagato` tinyint NOT NULL,
  `data_pagamento` date DEFAULT NULL,
  `iscrizioni_idiscrizioni` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dump dei dati per la tabella `pagamenti`
--

INSERT INTO `pagamenti` (`idpagamenti`, `pagato`, `data_pagamento`, `iscrizioni_idiscrizioni`) VALUES
(3, 0, NULL, 15),
(5, 1, '2022-12-23', 14),
(6, 1, '2022-12-23', 13),
(7, 1, '2022-12-23', 12),
(8, 0, NULL, 11),
(9, 1, '2022-12-23', 10),
(10, 0, NULL, 9),
(11, 1, '2022-12-23', 8),
(12, 0, NULL, 7),
(13, 1, '2022-12-23', 6),
(14, 0, NULL, 5),
(15, 1, '2022-12-23', 4),
(16, 0, NULL, 3);

-- --------------------------------------------------------

--
-- Struttura stand-in per le viste `pagati_e_non`
-- (Vedi sotto per la vista effettiva)
--
CREATE TABLE `pagati_e_non` (
`denominazione` varchar(45)
,`iscrizioni_per_corso` bigint
,`costo` decimal(10,0)
,`quanti_hanno_pagato` decimal(23,0)
,`totale_pagato` decimal(32,0)
);

-- --------------------------------------------------------

--
-- Struttura della tabella `studenti`
--

CREATE TABLE `studenti` (
  `idstudenti` int NOT NULL,
  `nome` varchar(45) NOT NULL,
  `cognome` varchar(45) NOT NULL,
  `data_nascita` date NOT NULL,
  `codice_fiscale` varchar(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dump dei dati per la tabella `studenti`
--

INSERT INTO `studenti` (`idstudenti`, `nome`, `cognome`, `data_nascita`, `codice_fiscale`) VALUES
(1, 'lollo', 'trollo', '2012-12-12', 'aaaaaaaaaa123456'),
(2, 'lollo', 'trollo', '2012-12-12', 'fg'),
(3, 'lollo', 'trollo', '2012-12-12', 'f'),
(4, 'lollo', 'trollo', '2012-12-12', 'gsd'),
(5, 'lollo', 'trollo', '2012-12-12', 's'),
(6, 'lollo', 'trollo', '2012-12-12', '4'),
(7, 'lollo', 'trollo', '2012-12-12', 'dg'),
(8, 'lollo', 'trollo', '2012-12-12', '1111'),
(9, 'lollo', 'trollo', '2012-12-12', '324'),
(10, 'lollo', 'trollo', '2012-12-12', '22222'),
(11, 'lollo', 'trollo', '2012-12-12', '222221'),
(12, 'dasd', 'asdasd', '2012-12-12', '2012-12-12'),
(13, 'aa', 'a', '2012-12-12', 'rwerw');

-- --------------------------------------------------------

--
-- Struttura stand-in per le viste `ultimo_idiscrizioni`
-- (Vedi sotto per la vista effettiva)
--
CREATE TABLE `ultimo_idiscrizioni` (
`MAX(idiscrizioni)` int
);

-- --------------------------------------------------------

--
-- Struttura per vista `i_secchioni`
--
DROP TABLE IF EXISTS `i_secchioni`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `i_secchioni`  AS SELECT `studenti`.`idstudenti` AS `idstudenti`, `studenti`.`nome` AS `nome`, `studenti`.`cognome` AS `cognome`, `studenti`.`data_nascita` AS `data_nascita`, `studenti`.`codice_fiscale` AS `codice_fiscale`, count(`corsi`.`idcorsi`) AS `totale_corsi` FROM ((`studenti` join `iscrizioni` on((`studenti`.`idstudenti` = `iscrizioni`.`studenti_idstudenti`))) join `corsi` on((`iscrizioni`.`corsi_idcorsi` = `corsi`.`idcorsi`))) GROUP BY `studenti`.`idstudenti` ORDER BY `studenti`.`idstudenti` ASC LIMIT 0, 33  ;

-- --------------------------------------------------------

--
-- Struttura per vista `pagati_e_non`
--
DROP TABLE IF EXISTS `pagati_e_non`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `pagati_e_non`  AS SELECT `corsi`.`denominazione` AS `denominazione`, count(`pagamenti`.`pagato`) AS `iscrizioni_per_corso`, `corsi`.`costo` AS `costo`, sum(if((`pagamenti`.`pagato` = 0),1,0)) AS `quanti_hanno_pagato`, sum(if((`pagamenti`.`pagato` = 0),`corsi`.`costo`,0)) AS `totale_pagato` FROM ((`pagamenti` join `iscrizioni` on((`pagamenti`.`iscrizioni_idiscrizioni` = `iscrizioni`.`idiscrizioni`))) join `corsi` on((`iscrizioni`.`corsi_idcorsi` = `corsi`.`idcorsi`))) GROUP BY `iscrizioni`.`corsi_idcorsi``corsi_idcorsi`  ;

-- --------------------------------------------------------

--
-- Struttura per vista `ultimo_idiscrizioni`
--
DROP TABLE IF EXISTS `ultimo_idiscrizioni`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `ultimo_idiscrizioni`  AS SELECT max(`iscrizioni`.`idiscrizioni`) AS `MAX(idiscrizioni)` FROM `iscrizioni``iscrizioni`  ;

--
-- Indici per le tabelle scaricate
--

--
-- Indici per le tabelle `corsi`
--
ALTER TABLE `corsi`
  ADD PRIMARY KEY (`idcorsi`);

--
-- Indici per le tabelle `iscrizioni`
--
ALTER TABLE `iscrizioni`
  ADD PRIMARY KEY (`idiscrizioni`),
  ADD KEY `xc_idx` (`corsi_idcorsi`),
  ADD KEY `asdsad_idx` (`studenti_idstudenti`);

--
-- Indici per le tabelle `pagamenti`
--
ALTER TABLE `pagamenti`
  ADD PRIMARY KEY (`idpagamenti`),
  ADD KEY `sdf_idx` (`iscrizioni_idiscrizioni`);

--
-- Indici per le tabelle `studenti`
--
ALTER TABLE `studenti`
  ADD PRIMARY KEY (`idstudenti`);

--
-- Limiti per le tabelle scaricate
--

--
-- Limiti per la tabella `iscrizioni`
--
ALTER TABLE `iscrizioni`
  ADD CONSTRAINT `asdsad` FOREIGN KEY (`studenti_idstudenti`) REFERENCES `studenti` (`idstudenti`),
  ADD CONSTRAINT `xc` FOREIGN KEY (`corsi_idcorsi`) REFERENCES `corsi` (`idcorsi`);

--
-- Limiti per la tabella `pagamenti`
--
ALTER TABLE `pagamenti`
  ADD CONSTRAINT `sdf` FOREIGN KEY (`iscrizioni_idiscrizioni`) REFERENCES `iscrizioni` (`idiscrizioni`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
