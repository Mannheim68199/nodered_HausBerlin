-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 172.23.0.2
-- Erstellungszeit: 12. Dez 2025 um 09:49
-- Server-Version: 10.3.27-MariaDB-0+deb10u1
-- PHP-Version: 7.4.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Datenbank: `Sensoren`
--
CREATE DATABASE IF NOT EXISTS `Sensoren` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `Sensoren`;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `Brunnen`
--

DROP TABLE IF EXISTS `Brunnen`;
CREATE TABLE `Brunnen` (
  `ID` int(11) NOT NULL,
  `DATUM` datetime NOT NULL,
  `WERT` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `Feinstaub`
--

DROP TABLE IF EXISTS `Feinstaub`;
CREATE TABLE `Feinstaub` (
  `DATETIME` datetime NOT NULL,
  `SDS_P1` decimal(10,3) NOT NULL,
  `SDS_P2` decimal(10,3) NOT NULL,
  `Temperatur` decimal(4,2) NOT NULL,
  `Luftdruck` decimal(10,2) NOT NULL,
  `Luftfeuchtigkeit` decimal(5,2) NOT NULL,
  `Samples` int(10) NOT NULL,
  `Min_Micro` int(10) NOT NULL,
  `Max_Micro` int(10) NOT NULL,
  `Intervall` int(11) NOT NULL,
  `WIFI_Signal` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `Geiger`
--

DROP TABLE IF EXISTS `Geiger`;
CREATE TABLE `Geiger` (
  `id` int(11) NOT NULL,
  `DATUM` datetime NOT NULL,
  `CPM` decimal(10,2) NOT NULL,
  `CPM5` decimal(10,2) NOT NULL,
  `CPM15` decimal(10,2) NOT NULL,
  `uSv` decimal(10,2) NOT NULL,
  `counts` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `Niederschlag`
--

DROP TABLE IF EXISTS `Niederschlag`;
CREATE TABLE `Niederschlag` (
  `ID` int(11) NOT NULL,
  `Datum` datetime NOT NULL,
  `Wert` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `Regen`
--

DROP TABLE IF EXISTS `Regen`;
CREATE TABLE `Regen` (
  `ID` int(11) NOT NULL,
  `Datum` datetime NOT NULL,
  `Wert` int(11) NOT NULL,
  `totalCount` int(11) NOT NULL DEFAULT 0,
  `oldCount` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `Regen2`
--

DROP TABLE IF EXISTS `Regen2`;
CREATE TABLE `Regen2` (
  `ID` int(11) NOT NULL,
  `Datum` datetime NOT NULL,
  `Wert` int(11) NOT NULL,
  `totalCount` int(11) NOT NULL DEFAULT 0,
  `oldCount` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `Regen3`
--

DROP TABLE IF EXISTS `Regen3`;
CREATE TABLE `Regen3` (
  `ID` int(11) NOT NULL,
  `Datum` datetime NOT NULL,
  `Wert` int(11) NOT NULL,
  `totalCount` int(11) NOT NULL DEFAULT 0,
  `oldCount` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `Regen_alt`
--

DROP TABLE IF EXISTS `Regen_alt`;
CREATE TABLE `Regen_alt` (
  `ID` int(11) NOT NULL,
  `Datum` datetime NOT NULL,
  `Wert` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `Sensor1`
--

DROP TABLE IF EXISTS `Sensor1`;
CREATE TABLE `Sensor1` (
  `ID` int(11) NOT NULL,
  `DATUM` datetime NOT NULL,
  `Temperatur` decimal(10,3) NOT NULL,
  `Luftfeuchtigkeit` decimal(8,2) NOT NULL,
  `Luftdruck` decimal(8,2) NOT NULL,
  `Spannung` int(11) NOT NULL,
  `RSSI` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `Sensor2`
--

DROP TABLE IF EXISTS `Sensor2`;
CREATE TABLE `Sensor2` (
  `ID` int(11) NOT NULL,
  `DATUM` datetime NOT NULL,
  `Temperatur` decimal(10,3) NOT NULL,
  `Luftfeuchtigkeit` decimal(8,2) NOT NULL,
  `Luftdruck` decimal(8,2) NOT NULL,
  `Spannung` int(11) DEFAULT NULL,
  `RSSI` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `Sensor3`
--

DROP TABLE IF EXISTS `Sensor3`;
CREATE TABLE `Sensor3` (
  `ID` int(11) NOT NULL,
  `DATUM` datetime NOT NULL,
  `Temperatur` decimal(10,3) NOT NULL,
  `Luftfeuchtigkeit` decimal(8,2) NOT NULL,
  `Luftdruck` decimal(8,2) NOT NULL,
  `Spannung` int(11) DEFAULT NULL,
  `RSSI` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `Sensor4`
--

DROP TABLE IF EXISTS `Sensor4`;
CREATE TABLE `Sensor4` (
  `ID` int(11) NOT NULL,
  `DATUM` datetime NOT NULL,
  `Temperatur` decimal(10,3) NOT NULL,
  `Luftfeuchtigkeit` decimal(8,2) NOT NULL,
  `Luftdruck` decimal(8,2) NOT NULL,
  `Spannung` int(11) DEFAULT NULL,
  `RSSI` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Indizes der exportierten Tabellen
--

--
-- Indizes für die Tabelle `Brunnen`
--
ALTER TABLE `Brunnen`
  ADD PRIMARY KEY (`ID`);

--
-- Indizes für die Tabelle `Feinstaub`
--
ALTER TABLE `Feinstaub`
  ADD UNIQUE KEY `DATETIME` (`DATETIME`);

--
-- Indizes für die Tabelle `Geiger`
--
ALTER TABLE `Geiger`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `Niederschlag`
--
ALTER TABLE `Niederschlag`
  ADD PRIMARY KEY (`ID`);

--
-- Indizes für die Tabelle `Regen`
--
ALTER TABLE `Regen`
  ADD PRIMARY KEY (`ID`);

--
-- Indizes für die Tabelle `Regen2`
--
ALTER TABLE `Regen2`
  ADD PRIMARY KEY (`ID`);

--
-- Indizes für die Tabelle `Regen3`
--
ALTER TABLE `Regen3`
  ADD PRIMARY KEY (`ID`);

--
-- Indizes für die Tabelle `Regen_alt`
--
ALTER TABLE `Regen_alt`
  ADD PRIMARY KEY (`ID`);

--
-- Indizes für die Tabelle `Sensor1`
--
ALTER TABLE `Sensor1`
  ADD PRIMARY KEY (`ID`);

--
-- Indizes für die Tabelle `Sensor2`
--
ALTER TABLE `Sensor2`
  ADD PRIMARY KEY (`ID`) USING BTREE;

--
-- Indizes für die Tabelle `Sensor3`
--
ALTER TABLE `Sensor3`
  ADD PRIMARY KEY (`ID`) USING BTREE;

--
-- Indizes für die Tabelle `Sensor4`
--
ALTER TABLE `Sensor4`
  ADD PRIMARY KEY (`ID`) USING BTREE;

--
-- AUTO_INCREMENT für exportierte Tabellen
--

--
-- AUTO_INCREMENT für Tabelle `Brunnen`
--
ALTER TABLE `Brunnen`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `Geiger`
--
ALTER TABLE `Geiger`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `Niederschlag`
--
ALTER TABLE `Niederschlag`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `Regen`
--
ALTER TABLE `Regen`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `Regen2`
--
ALTER TABLE `Regen2`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `Regen3`
--
ALTER TABLE `Regen3`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `Regen_alt`
--
ALTER TABLE `Regen_alt`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `Sensor1`
--
ALTER TABLE `Sensor1`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `Sensor2`
--
ALTER TABLE `Sensor2`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `Sensor3`
--
ALTER TABLE `Sensor3`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `Sensor4`
--
ALTER TABLE `Sensor4`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
