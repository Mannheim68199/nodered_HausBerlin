-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Host: 172.18.0.4
-- Erstellungszeit: 12. Dez 2025 um 11:00
-- Server-Version: 11.8.2-MariaDB-ubu2404
-- PHP-Version: 8.2.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Datenbank: `Haus`
--
CREATE DATABASE IF NOT EXISTS `Haus` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `Haus`;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `Auto_Fahrten`
--

CREATE TABLE `Auto_Fahrten` (
  `ID` int(11) NOT NULL,
  `DATUM` date NOT NULL,
  `ZEIT_VON` time NOT NULL,
  `ZEIT_BIS` time NOT NULL,
  `DAUER` time NOT NULL,
  `Adresse_Von` varchar(255) NOT NULL,
  `Adresse_Bis` varchar(255) NOT NULL,
  `Entfernung` int(11) NOT NULL,
  `Stand` int(11) NOT NULL,
  `Verbrauch` int(11) NOT NULL,
  `Preis` int(11) NOT NULL,
  `Kosten` int(11) NOT NULL,
  `Kategorie` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `BATTERIE_ENTLADUNG`
--

CREATE TABLE `BATTERIE_ENTLADUNG` (
  `ID` int(11) NOT NULL,
  `DATUM` datetime NOT NULL,
  `WERT` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `BATTERIE_LADUNG`
--

CREATE TABLE `BATTERIE_LADUNG` (
  `ID` int(11) NOT NULL,
  `DATUM` datetime NOT NULL,
  `WERT` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `BATTERIE_SoC`
--

CREATE TABLE `BATTERIE_SoC` (
  `ID` int(11) NOT NULL,
  `DATUM` datetime NOT NULL,
  `WERT` int(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `BKL`
--

CREATE TABLE `BKL` (
  `ID` int(11) NOT NULL,
  `DATUM` datetime NOT NULL,
  `Power` decimal(10,3) NOT NULL,
  `TotalEnergy` decimal(16,3) NOT NULL,
  `Spannung` decimal(10,3) NOT NULL,
  `Strom` decimal(10,3) NOT NULL,
  `Temperatur` decimal(5,1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `ECAR`
--

CREATE TABLE `ECAR` (
  `ID` int(11) NOT NULL,
  `DATUM` datetime NOT NULL,
  `Energie` decimal(10,3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `ECAR_KM`
--

CREATE TABLE `ECAR_KM` (
  `ID` int(11) NOT NULL,
  `DATUM` datetime NOT NULL,
  `GesamtKM` int(5) NOT NULL,
  `Longitude` decimal(10,6) NOT NULL,
  `Latitude` decimal(10,6) NOT NULL,
  `lastUpdate` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `GAS_BEZUG`
--

CREATE TABLE `GAS_BEZUG` (
  `ID` int(11) NOT NULL,
  `DATUM` datetime NOT NULL,
  `WERT` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `Parameter`
--

CREATE TABLE `Parameter` (
  `ID` int(11) NOT NULL,
  `DATUM_VON` date NOT NULL,
  `DATUM_BIS` date DEFAULT NULL,
  `TYP` varchar(20) NOT NULL,
  `Grundpreis` float(10,4) DEFAULT NULL,
  `Arbeitspreis` float(10,4) DEFAULT NULL,
  `Anbieter` text DEFAULT NULL,
  `ParamZahl_1` float(10,4) DEFAULT NULL,
  `ParamZahl_2` float(10,4) DEFAULT NULL,
  `ParamInt_1` int(6) DEFAULT NULL,
  `ParamInt_2` int(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `POST_GERMANEN`
--

CREATE TABLE `POST_GERMANEN` (
  `ID` int(11) NOT NULL,
  `DATUM` datetime NOT NULL,
  `WERT` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `POST_SUEVEN`
--

CREATE TABLE `POST_SUEVEN` (
  `ID` int(11) NOT NULL,
  `DATUM` datetime NOT NULL,
  `WERT` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `PV_AKT_LEISTUNG`
--

CREATE TABLE `PV_AKT_LEISTUNG` (
  `ID` int(11) NOT NULL,
  `DATUM` datetime NOT NULL,
  `WERT` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `PV_GESAMT_ERTRAG`
--

CREATE TABLE `PV_GESAMT_ERTRAG` (
  `ID` int(11) NOT NULL,
  `DATUM` datetime NOT NULL,
  `WERT` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `SMA_DATEN`
--

CREATE TABLE `SMA_DATEN` (
  `ID` int(11) NOT NULL,
  `DATUM` date NOT NULL,
  `PV_Energie` int(11) NOT NULL,
  `BKW_Energie` int(11) NOT NULL,
  `Bat_Ladung` int(11) NOT NULL DEFAULT 0,
  `Bat_Entladung` int(11) NOT NULL DEFAULT 0,
  `Netz_Bezug` int(11) DEFAULT 0,
  `Netz_Einspeisung` int(11) NOT NULL,
  `Haus_Verbrauch` int(11) NOT NULL,
  `Auto_Verbrauch` int(11) NOT NULL,
  `Direkt_Verbrauch` int(11) NOT NULL,
  `Bat_SOC` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `SMA_EnergieBilanz_Monat`
--

CREATE TABLE `SMA_EnergieBilanz_Monat` (
  `ID` int(11) NOT NULL,
  `DATUM` varchar(10) NOT NULL,
  `Verbrauch` decimal(10,3) NOT NULL,
  `DirektVerbrauch` decimal(10,3) NOT NULL,
  `BatEntladung` decimal(10,3) NOT NULL,
  `Netzbezug` decimal(10,3) NOT NULL,
  `PVErzeugung` decimal(10,3) NOT NULL,
  `Netzeinspeisung` decimal(10,3) NOT NULL,
  `BatLadung` decimal(10,3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `SMA_EnergieBilanz_Tag`
--

CREATE TABLE `SMA_EnergieBilanz_Tag` (
  `ID` int(11) NOT NULL,
  `DATUM` varchar(10) NOT NULL,
  `Verbrauch` decimal(10,3) NOT NULL,
  `DirektVerbrauch` decimal(10,3) NOT NULL,
  `BatEntladung` decimal(10,3) NOT NULL,
  `Netzbezug` decimal(10,3) NOT NULL,
  `PVErzeugung` decimal(10,3) NOT NULL,
  `Netzeinspeisung` decimal(10,3) NOT NULL,
  `BatLadung` decimal(10,3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `SMA_STROM_BEZUG`
--

CREATE TABLE `SMA_STROM_BEZUG` (
  `ID` int(11) NOT NULL,
  `DATUM` datetime NOT NULL,
  `WERT` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `SMA_STROM_EINSPEISUNG`
--

CREATE TABLE `SMA_STROM_EINSPEISUNG` (
  `ID` int(11) NOT NULL,
  `DATUM` datetime NOT NULL,
  `WERT` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `SMA_TAGES_DATEN`
--

CREATE TABLE `SMA_TAGES_DATEN` (
  `ID` int(11) NOT NULL,
  `DATUM` datetime NOT NULL,
  `PV_Energie` int(11) NOT NULL,
  `BKW_Energie` int(11) NOT NULL,
  `Bat_Ladung` int(11) NOT NULL DEFAULT 0,
  `Bat_Entladung` int(11) NOT NULL DEFAULT 0,
  `Netz_Bezug` int(11) DEFAULT 0,
  `Netz_Einspeisung` int(11) NOT NULL,
  `Haus_Verbrauch` int(11) NOT NULL,
  `Auto_Verbrauch` int(11) NOT NULL,
  `Direkt_Verbrauch` int(11) NOT NULL,
  `Bat_SOC` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `STROM_AKT_BEZUG`
--

CREATE TABLE `STROM_AKT_BEZUG` (
  `ID` int(11) NOT NULL,
  `DATUM` datetime NOT NULL,
  `WERT` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `STROM_AKT_LIEFERUNG`
--

CREATE TABLE `STROM_AKT_LIEFERUNG` (
  `ID` int(11) NOT NULL,
  `DATUM` datetime NOT NULL,
  `WERT` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `STROM_AKT_VERBRAUCH`
--

CREATE TABLE `STROM_AKT_VERBRAUCH` (
  `ID` int(11) NOT NULL,
  `DATUM` datetime NOT NULL,
  `WERT` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `STROM_BEZUG`
--

CREATE TABLE `STROM_BEZUG` (
  `ID` int(11) NOT NULL,
  `DATUM` datetime NOT NULL,
  `WERT` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `STROM_EINSPEISUNG`
--

CREATE TABLE `STROM_EINSPEISUNG` (
  `ID` int(11) NOT NULL,
  `DATUM` datetime NOT NULL,
  `WERT` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `WASSER_BEZUG`
--

CREATE TABLE `WASSER_BEZUG` (
  `ID` int(11) NOT NULL,
  `DATUM` datetime NOT NULL,
  `WERT` decimal(8,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indizes der exportierten Tabellen
--

--
-- Indizes für die Tabelle `Auto_Fahrten`
--
ALTER TABLE `Auto_Fahrten`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `DATUM` (`DATUM`,`ZEIT_VON`,`ZEIT_BIS`) USING BTREE;

--
-- Indizes für die Tabelle `BATTERIE_ENTLADUNG`
--
ALTER TABLE `BATTERIE_ENTLADUNG`
  ADD PRIMARY KEY (`ID`);

--
-- Indizes für die Tabelle `BATTERIE_LADUNG`
--
ALTER TABLE `BATTERIE_LADUNG`
  ADD PRIMARY KEY (`ID`);

--
-- Indizes für die Tabelle `BATTERIE_SoC`
--
ALTER TABLE `BATTERIE_SoC`
  ADD PRIMARY KEY (`ID`);

--
-- Indizes für die Tabelle `BKL`
--
ALTER TABLE `BKL`
  ADD PRIMARY KEY (`ID`);

--
-- Indizes für die Tabelle `ECAR`
--
ALTER TABLE `ECAR`
  ADD PRIMARY KEY (`ID`);

--
-- Indizes für die Tabelle `ECAR_KM`
--
ALTER TABLE `ECAR_KM`
  ADD PRIMARY KEY (`ID`);

--
-- Indizes für die Tabelle `GAS_BEZUG`
--
ALTER TABLE `GAS_BEZUG`
  ADD PRIMARY KEY (`ID`);

--
-- Indizes für die Tabelle `Parameter`
--
ALTER TABLE `Parameter`
  ADD PRIMARY KEY (`ID`);

--
-- Indizes für die Tabelle `POST_GERMANEN`
--
ALTER TABLE `POST_GERMANEN`
  ADD PRIMARY KEY (`ID`);

--
-- Indizes für die Tabelle `POST_SUEVEN`
--
ALTER TABLE `POST_SUEVEN`
  ADD PRIMARY KEY (`ID`);

--
-- Indizes für die Tabelle `PV_AKT_LEISTUNG`
--
ALTER TABLE `PV_AKT_LEISTUNG`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `Datum` (`DATUM`);

--
-- Indizes für die Tabelle `PV_GESAMT_ERTRAG`
--
ALTER TABLE `PV_GESAMT_ERTRAG`
  ADD PRIMARY KEY (`ID`);

--
-- Indizes für die Tabelle `SMA_DATEN`
--
ALTER TABLE `SMA_DATEN`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `Datum` (`DATUM`);

--
-- Indizes für die Tabelle `SMA_EnergieBilanz_Monat`
--
ALTER TABLE `SMA_EnergieBilanz_Monat`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `DATUM` (`DATUM`);

--
-- Indizes für die Tabelle `SMA_EnergieBilanz_Tag`
--
ALTER TABLE `SMA_EnergieBilanz_Tag`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `DATUM` (`DATUM`);

--
-- Indizes für die Tabelle `SMA_STROM_BEZUG`
--
ALTER TABLE `SMA_STROM_BEZUG`
  ADD PRIMARY KEY (`ID`);

--
-- Indizes für die Tabelle `SMA_STROM_EINSPEISUNG`
--
ALTER TABLE `SMA_STROM_EINSPEISUNG`
  ADD PRIMARY KEY (`ID`);

--
-- Indizes für die Tabelle `SMA_TAGES_DATEN`
--
ALTER TABLE `SMA_TAGES_DATEN`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `Datum` (`DATUM`);

--
-- Indizes für die Tabelle `STROM_AKT_BEZUG`
--
ALTER TABLE `STROM_AKT_BEZUG`
  ADD PRIMARY KEY (`ID`);

--
-- Indizes für die Tabelle `STROM_AKT_LIEFERUNG`
--
ALTER TABLE `STROM_AKT_LIEFERUNG`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `Datum` (`DATUM`);

--
-- Indizes für die Tabelle `STROM_AKT_VERBRAUCH`
--
ALTER TABLE `STROM_AKT_VERBRAUCH`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `Datum` (`DATUM`);

--
-- Indizes für die Tabelle `STROM_BEZUG`
--
ALTER TABLE `STROM_BEZUG`
  ADD PRIMARY KEY (`ID`);

--
-- Indizes für die Tabelle `STROM_EINSPEISUNG`
--
ALTER TABLE `STROM_EINSPEISUNG`
  ADD PRIMARY KEY (`ID`);

--
-- Indizes für die Tabelle `WASSER_BEZUG`
--
ALTER TABLE `WASSER_BEZUG`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT für exportierte Tabellen
--

--
-- AUTO_INCREMENT für Tabelle `Auto_Fahrten`
--
ALTER TABLE `Auto_Fahrten`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `BATTERIE_ENTLADUNG`
--
ALTER TABLE `BATTERIE_ENTLADUNG`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `BATTERIE_LADUNG`
--
ALTER TABLE `BATTERIE_LADUNG`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `BATTERIE_SoC`
--
ALTER TABLE `BATTERIE_SoC`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `BKL`
--
ALTER TABLE `BKL`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `ECAR`
--
ALTER TABLE `ECAR`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `ECAR_KM`
--
ALTER TABLE `ECAR_KM`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `GAS_BEZUG`
--
ALTER TABLE `GAS_BEZUG`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `Parameter`
--
ALTER TABLE `Parameter`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `POST_GERMANEN`
--
ALTER TABLE `POST_GERMANEN`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `POST_SUEVEN`
--
ALTER TABLE `POST_SUEVEN`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `PV_AKT_LEISTUNG`
--
ALTER TABLE `PV_AKT_LEISTUNG`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `PV_GESAMT_ERTRAG`
--
ALTER TABLE `PV_GESAMT_ERTRAG`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `SMA_DATEN`
--
ALTER TABLE `SMA_DATEN`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `SMA_EnergieBilanz_Monat`
--
ALTER TABLE `SMA_EnergieBilanz_Monat`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `SMA_EnergieBilanz_Tag`
--
ALTER TABLE `SMA_EnergieBilanz_Tag`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `SMA_STROM_BEZUG`
--
ALTER TABLE `SMA_STROM_BEZUG`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `SMA_STROM_EINSPEISUNG`
--
ALTER TABLE `SMA_STROM_EINSPEISUNG`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `SMA_TAGES_DATEN`
--
ALTER TABLE `SMA_TAGES_DATEN`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `STROM_AKT_BEZUG`
--
ALTER TABLE `STROM_AKT_BEZUG`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `STROM_AKT_LIEFERUNG`
--
ALTER TABLE `STROM_AKT_LIEFERUNG`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `STROM_AKT_VERBRAUCH`
--
ALTER TABLE `STROM_AKT_VERBRAUCH`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `STROM_BEZUG`
--
ALTER TABLE `STROM_BEZUG`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `STROM_EINSPEISUNG`
--
ALTER TABLE `STROM_EINSPEISUNG`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `WASSER_BEZUG`
--
ALTER TABLE `WASSER_BEZUG`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
