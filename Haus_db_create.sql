-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Host: 172.18.0.4
-- Erstellungszeit: 12. Dez 2025 um 10:53
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
-- Stellvertreter-Struktur des Views `BATTERIE_ENTLADUNG_MonatsWerte_V`
-- (Siehe unten für die tatsächliche Ansicht)
--
CREATE TABLE `BATTERIE_ENTLADUNG_MonatsWerte_V` (
`Monat` varchar(7)
,`MonatsWert` bigint(12)
);

-- --------------------------------------------------------

--
-- Stellvertreter-Struktur des Views `BATTERIE_ENTLADUNG_TagesWerte_V`
-- (Siehe unten für die tatsächliche Ansicht)
--
CREATE TABLE `BATTERIE_ENTLADUNG_TagesWerte_V` (
`Tag` varchar(10)
,`TagesWert` bigint(12)
);

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
-- Stellvertreter-Struktur des Views `BATTERIE_LADUNG_MonatsWerte_V`
-- (Siehe unten für die tatsächliche Ansicht)
--
CREATE TABLE `BATTERIE_LADUNG_MonatsWerte_V` (
`Monat` varchar(7)
,`MonatsWert` bigint(12)
);

-- --------------------------------------------------------

--
-- Stellvertreter-Struktur des Views `BATTERIE_LADUNG_TagesWerte_V`
-- (Siehe unten für die tatsächliche Ansicht)
--
CREATE TABLE `BATTERIE_LADUNG_TagesWerte_V` (
`Tag` varchar(10)
,`TagesWert` bigint(12)
);

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
-- Tabellenstruktur für Tabelle `BKW`
--

CREATE TABLE `BKW` (
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
-- Stellvertreter-Struktur des Views `BKW_MonatsWerte_V`
-- (Siehe unten für die tatsächliche Ansicht)
--
CREATE TABLE `BKW_MonatsWerte_V` (
`Monat` varchar(7)
,`MonatsWert` decimal(17,3)
);

-- --------------------------------------------------------

--
-- Stellvertreter-Struktur des Views `BKW_TagesWerte_V`
-- (Siehe unten für die tatsächliche Ansicht)
--
CREATE TABLE `BKW_TagesWerte_V` (
`Tag` varchar(10)
,`TagesWert` decimal(17,3)
);

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
-- Stellvertreter-Struktur des Views `ECAR_MonatsWerte_V`
-- (Siehe unten für die tatsächliche Ansicht)
--
CREATE TABLE `ECAR_MonatsWerte_V` (
`Monat` varchar(7)
,`MonatsWert` decimal(11,3)
);

-- --------------------------------------------------------

--
-- Stellvertreter-Struktur des Views `ECAR_TagesWerte_V`
-- (Siehe unten für die tatsächliche Ansicht)
--
CREATE TABLE `ECAR_TagesWerte_V` (
`Tag` varchar(10)
,`TagesWert` decimal(11,3)
);

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
-- Stellvertreter-Struktur des Views `GAS_BEZUG_MonatsWerte_V`
-- (Siehe unten für die tatsächliche Ansicht)
--
CREATE TABLE `GAS_BEZUG_MonatsWerte_V` (
`Monat` varchar(7)
,`MonatsWert` bigint(12)
);

-- --------------------------------------------------------

--
-- Stellvertreter-Struktur des Views `GAS_BEZUG_TagesWerte_V`
-- (Siehe unten für die tatsächliche Ansicht)
--
CREATE TABLE `GAS_BEZUG_TagesWerte_V` (
`Tag` varchar(10)
,`TagesWert` bigint(12)
);

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
-- Stellvertreter-Struktur des Views `PV_ERTRAG_MonatsWerte_V`
-- (Siehe unten für die tatsächliche Ansicht)
--
CREATE TABLE `PV_ERTRAG_MonatsWerte_V` (
`Monat` varchar(7)
,`MonatsWert` bigint(12)
);

-- --------------------------------------------------------

--
-- Stellvertreter-Struktur des Views `PV_ERTRAG_TagesWerte_V`
-- (Siehe unten für die tatsächliche Ansicht)
--
CREATE TABLE `PV_ERTRAG_TagesWerte_V` (
`Tag` varchar(10)
,`TagesWert` bigint(12)
);

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
-- Stellvertreter-Struktur des Views `SMA_JahresDaten_V`
-- (Siehe unten für die tatsächliche Ansicht)
--
CREATE TABLE `SMA_JahresDaten_V` (
`JAHR` varchar(4)
,`PV_Energie` decimal(32,0)
,`BKW_Energie` decimal(32,0)
,`Bat_Ladung` decimal(32,0)
,`Bat_Entladung` decimal(32,0)
,`Netz_Bezug` decimal(32,0)
,`Netz_Einspeisung` decimal(32,0)
,`Haus_Verbrauch` decimal(32,0)
,`Auto_Verbrauch` decimal(32,0)
,`Direkt_Verbrauch` decimal(32,0)
);

-- --------------------------------------------------------

--
-- Stellvertreter-Struktur des Views `SMA_MonatsDaten_V`
-- (Siehe unten für die tatsächliche Ansicht)
--
CREATE TABLE `SMA_MonatsDaten_V` (
`MONAT` varchar(7)
,`PV_Energie` decimal(32,0)
,`BKW_Energie` decimal(32,0)
,`Bat_Ladung` decimal(32,0)
,`Bat_Entladung` decimal(32,0)
,`Netz_Bezug` decimal(32,0)
,`Netz_Einspeisung` decimal(32,0)
,`Haus_Verbrauch` decimal(32,0)
,`Auto_Verbrauch` decimal(32,0)
,`Direkt_Verbrauch` decimal(32,0)
);

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
-- Stellvertreter-Struktur des Views `SMA_STROM_BEZUG_TagesWerte_V`
-- (Siehe unten für die tatsächliche Ansicht)
--
CREATE TABLE `SMA_STROM_BEZUG_TagesWerte_V` (
`Tag` varchar(10)
,`TagesWert` bigint(12)
);

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
-- Stellvertreter-Struktur des Views `SMA_STROM_EINSPEISUNG_TagesWerte_V`
-- (Siehe unten für die tatsächliche Ansicht)
--
CREATE TABLE `SMA_STROM_EINSPEISUNG_TagesWerte_V` (
`Tag` varchar(10)
,`TagesWert` bigint(12)
);

-- --------------------------------------------------------

--
-- Stellvertreter-Struktur des Views `SMA_TagesDaten_V`
-- (Siehe unten für die tatsächliche Ansicht)
--
CREATE TABLE `SMA_TagesDaten_V` (
`Tag` varchar(10)
,`PV` int(11)
,`BKW` int(11)
,`Bezug` int(11)
,`Einspeisung` int(11)
,`Verbrauch` int(11)
,`Auto` int(11)
,`Direkt` int(11)
);

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
-- Stellvertreter-Struktur des Views `StromDatenVergleich_V`
-- (Siehe unten für die tatsächliche Ansicht)
--
CREATE TABLE `StromDatenVergleich_V` (
`DATUM` date
,`PV_Energie` int(11)
,`PV` int(11)
,`PVErzeugung` decimal(10,3)
,`BKW_Energie` int(11)
,`BKW` int(11)
,`Netz_Bezug` int(11)
,`Bezug` int(11)
,`EB_Netzbezug` decimal(14,3)
,`Netz_Einspeisung` int(11)
,`Einspeisung` int(11)
,`Netzeinspeisung` decimal(10,3)
,`Haus_Verbrauch` int(11)
,`Verbrauch` int(11)
,`SMA_Verbrauch` decimal(14,3)
,`Auto_Verbrauch` int(11)
,`Auto` int(11)
,`Direkt_Verbrauch` int(11)
,`Direkt` int(11)
,`EB_Direkt` decimal(17,3)
,`EB_DirektVerbrauch` decimal(14,3)
);

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
-- Stellvertreter-Struktur des Views `STROM_BEZUG_MonatsWerte_V`
-- (Siehe unten für die tatsächliche Ansicht)
--
CREATE TABLE `STROM_BEZUG_MonatsWerte_V` (
`Monat` varchar(7)
,`MonatsWert` bigint(12)
);

-- --------------------------------------------------------

--
-- Stellvertreter-Struktur des Views `STROM_BEZUG_TagesWerte_V`
-- (Siehe unten für die tatsächliche Ansicht)
--
CREATE TABLE `STROM_BEZUG_TagesWerte_V` (
`Tag` varchar(10)
,`TagesWert` bigint(12)
);

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
-- Stellvertreter-Struktur des Views `STROM_EINSPEISUNG_MonatsWerte_V`
-- (Siehe unten für die tatsächliche Ansicht)
--
CREATE TABLE `STROM_EINSPEISUNG_MonatsWerte_V` (
`Monat` varchar(7)
,`MonatsWert` bigint(12)
);

-- --------------------------------------------------------

--
-- Stellvertreter-Struktur des Views `STROM_EINSPEISUNG_TagesWerte_V`
-- (Siehe unten für die tatsächliche Ansicht)
--
CREATE TABLE `STROM_EINSPEISUNG_TagesWerte_V` (
`Tag` varchar(10)
,`TagesWert` bigint(12)
);

-- --------------------------------------------------------

--
-- Stellvertreter-Struktur des Views `STROM_Verbrauch_TagesWerte_V`
-- (Siehe unten für die tatsächliche Ansicht)
--
CREATE TABLE `STROM_Verbrauch_TagesWerte_V` (
`Tag` varchar(10)
,`Zeit` datetime /* mariadb-5.3 */
,`Wert` bigint(12)
);

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
-- Indizes für die Tabelle `BKW`
--
ALTER TABLE `BKW`
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
-- AUTO_INCREMENT für Tabelle `BKW`
--
ALTER TABLE `BKW`
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

-- --------------------------------------------------------

--
-- Struktur des Views `BATTERIE_ENTLADUNG_MonatsWerte_V`
--
DROP TABLE IF EXISTS `BATTERIE_ENTLADUNG_MonatsWerte_V`;

CREATE  DEFINER = `pi`@`%` SQL SECURITY DEFINER VIEW `BATTERIE_ENTLADUNG_MonatsWerte_V`  AS SELECT `a`.`Monat` AS `Monat`, `a`.`Wert`- `b`.`Wert` AS `MonatsWert` FROM ((select substr(`BATTERIE_ENTLADUNG`.`DATUM`,1,7) AS `Monat`,max(`BATTERIE_ENTLADUNG`.`WERT`) AS `Wert` from `BATTERIE_ENTLADUNG` group by substr(`BATTERIE_ENTLADUNG`.`DATUM`,1,7) order by `BATTERIE_ENTLADUNG`.`DATUM` desc) `a` join (select substr(`BATTERIE_ENTLADUNG`.`DATUM` + interval 1 month,1,7) AS `Monat`,max(`BATTERIE_ENTLADUNG`.`WERT`) AS `Wert` from `BATTERIE_ENTLADUNG` group by substr(`BATTERIE_ENTLADUNG`.`DATUM`,1,7) order by `BATTERIE_ENTLADUNG`.`DATUM` desc) `b` on(`a`.`Monat` = `b`.`Monat`)) ;

-- --------------------------------------------------------

--
-- Struktur des Views `BATTERIE_ENTLADUNG_TagesWerte_V`
--
DROP TABLE IF EXISTS `BATTERIE_ENTLADUNG_TagesWerte_V`;

CREATE  DEFINER = `pi`@`%` SQL SECURITY DEFINER VIEW `BATTERIE_ENTLADUNG_TagesWerte_V`  AS SELECT `a`.`Tag` AS `Tag`, `a`.`Wert`- `b`.`Wert` AS `TagesWert` FROM ((select substr(`BATTERIE_ENTLADUNG`.`DATUM`,1,10) AS `Tag`,max(`BATTERIE_ENTLADUNG`.`WERT`) AS `Wert` from `BATTERIE_ENTLADUNG` group by substr(`BATTERIE_ENTLADUNG`.`DATUM`,1,10) order by `BATTERIE_ENTLADUNG`.`DATUM` desc) `a` join (select substr(`BATTERIE_ENTLADUNG`.`DATUM` + interval 1 day,1,10) AS `Tag`,max(`BATTERIE_ENTLADUNG`.`WERT`) AS `Wert` from `BATTERIE_ENTLADUNG` group by substr(`BATTERIE_ENTLADUNG`.`DATUM`,1,10) order by `BATTERIE_ENTLADUNG`.`DATUM` desc) `b` on(`a`.`Tag` = `b`.`Tag`)) ;

-- --------------------------------------------------------

--
-- Struktur des Views `BATTERIE_LADUNG_MonatsWerte_V`
--
DROP TABLE IF EXISTS `BATTERIE_LADUNG_MonatsWerte_V`;

CREATE  DEFINER = `pi`@`%` SQL SECURITY DEFINER VIEW `BATTERIE_LADUNG_MonatsWerte_V`  AS SELECT `a`.`Monat` AS `Monat`, `a`.`Wert`- `b`.`Wert` AS `MonatsWert` FROM ((select substr(`BATTERIE_LADUNG`.`DATUM`,1,7) AS `Monat`,max(`BATTERIE_LADUNG`.`WERT`) AS `Wert` from `BATTERIE_LADUNG` group by substr(`BATTERIE_LADUNG`.`DATUM`,1,7) order by `BATTERIE_LADUNG`.`DATUM` desc) `a` join (select substr(`BATTERIE_LADUNG`.`DATUM` + interval 1 month,1,7) AS `Monat`,max(`BATTERIE_LADUNG`.`WERT`) AS `Wert` from `BATTERIE_LADUNG` group by substr(`BATTERIE_LADUNG`.`DATUM`,1,7) order by `BATTERIE_LADUNG`.`DATUM` desc) `b` on(`a`.`Monat` = `b`.`Monat`)) ;

-- --------------------------------------------------------

--
-- Struktur des Views `BATTERIE_LADUNG_TagesWerte_V`
--
DROP TABLE IF EXISTS `BATTERIE_LADUNG_TagesWerte_V`;

CREATE  DEFINER = `pi`@`%` SQL SECURITY DEFINER VIEW `BATTERIE_LADUNG_TagesWerte_V`  AS SELECT `a`.`Tag` AS `Tag`, `a`.`Wert`- `b`.`Wert` AS `TagesWert` FROM ((select substr(`BATTERIE_LADUNG`.`DATUM`,1,10) AS `Tag`,max(`BATTERIE_LADUNG`.`WERT`) AS `Wert` from `BATTERIE_LADUNG` group by substr(`BATTERIE_LADUNG`.`DATUM`,1,10) order by `BATTERIE_LADUNG`.`DATUM` desc) `a` join (select substr(`BATTERIE_LADUNG`.`DATUM` + interval 1 day,1,10) AS `Tag`,max(`BATTERIE_LADUNG`.`WERT`) AS `Wert` from `BATTERIE_LADUNG` group by substr(`BATTERIE_LADUNG`.`DATUM`,1,10) order by `BATTERIE_LADUNG`.`DATUM` desc) `b` on(`a`.`Tag` = `b`.`Tag`)) ;

-- --------------------------------------------------------

--
-- Struktur des Views `BKW_MonatsWerte_V`
--
DROP TABLE IF EXISTS `BKW_MonatsWerte_V`;

CREATE  DEFINER = `pi`@`%` SQL SECURITY DEFINER VIEW `BKW_MonatsWerte_V`  AS SELECT `a`.`Monat` AS `Monat`, `a`.`Energie`- `b`.`Energie` AS `MonatsWert` FROM ((select substr(`BKW`.`DATUM`,1,7) AS `Monat`,max(`BKW`.`TotalEnergy`) AS `Energie` from `BKW` group by substr(`BKW`.`DATUM`,1,7) order by `BKW`.`DATUM` desc) `a` join (select substr(`BKW`.`DATUM` + interval 1 month,1,7) AS `Monat`,max(`BKW`.`TotalEnergy`) AS `Energie` from `BKW` group by substr(`BKW`.`DATUM`,1,7) order by `BKW`.`DATUM` desc) `b` on(`b`.`Monat` = `a`.`Monat`)) ;

-- --------------------------------------------------------

--
-- Struktur des Views `BKW_TagesWerte_V`
--
DROP TABLE IF EXISTS `BKW_TagesWerte_V`;

CREATE  DEFINER = `pi`@`%` SQL SECURITY DEFINER VIEW `BKW_TagesWerte_V`  AS SELECT `a`.`Tag` AS `Tag`, `a`.`Energie`- `b`.`Energie` AS `TagesWert` FROM ((select substr(`BKW`.`DATUM`,1,10) AS `Tag`,max(`BKW`.`TotalEnergy`) AS `Energie` from `BKW` group by substr(`BKW`.`DATUM`,1,10) order by `BKW`.`DATUM` desc) `a` join (select substr(`BKW`.`DATUM` + interval 1 day,1,10) AS `Tag`,max(`BKW`.`TotalEnergy`) AS `Energie` from `BKW` group by substr(`BKW`.`DATUM`,1,10) order by `BKW`.`DATUM` desc) `b` on(`b`.`Tag` = `a`.`Tag`)) ;

-- --------------------------------------------------------

--
-- Struktur des Views `ECAR_MonatsWerte_V`
--
DROP TABLE IF EXISTS `ECAR_MonatsWerte_V`;

CREATE  DEFINER = `pi`@`%` SQL SECURITY DEFINER VIEW `ECAR_MonatsWerte_V`  AS SELECT `a`.`Monat` AS `Monat`, `a`.`Energie`- `b`.`Energie` AS `MonatsWert` FROM ((select substr(`ECAR`.`DATUM`,1,7) AS `Monat`,max(`ECAR`.`Energie`) AS `Energie` from `ECAR` group by substr(`ECAR`.`DATUM`,1,7) order by `ECAR`.`DATUM` desc) `a` join (select substr(`ECAR`.`DATUM` + interval 1 month,1,7) AS `Monat`,max(`ECAR`.`Energie`) AS `Energie` from `ECAR` group by substr(`ECAR`.`DATUM`,1,7) order by `ECAR`.`DATUM` desc) `b` on(`b`.`Monat` = `a`.`Monat`)) ;

-- --------------------------------------------------------

--
-- Struktur des Views `ECAR_TagesWerte_V`
--
DROP TABLE IF EXISTS `ECAR_TagesWerte_V`;

CREATE  DEFINER = `pi`@`%` SQL SECURITY DEFINER VIEW `ECAR_TagesWerte_V`  AS SELECT `a`.`Tag` AS `Tag`, `a`.`Energie`- `b`.`Energie` AS `TagesWert` FROM ((select substr(`ECAR`.`DATUM`,1,10) AS `Tag`,max(`ECAR`.`Energie`) AS `Energie` from `ECAR` group by substr(`ECAR`.`DATUM`,1,10) order by `ECAR`.`DATUM` desc) `a` join (select substr(`ECAR`.`DATUM` + interval 1 day,1,10) AS `Tag`,max(`ECAR`.`Energie`) AS `Energie` from `ECAR` group by substr(`ECAR`.`DATUM`,1,10) order by `ECAR`.`DATUM` desc) `b` on(`b`.`Tag` = `a`.`Tag`)) ;

-- --------------------------------------------------------

--
-- Struktur des Views `GAS_BEZUG_MonatsWerte_V`
--
DROP TABLE IF EXISTS `GAS_BEZUG_MonatsWerte_V`;

CREATE  DEFINER = `pi`@`%` SQL SECURITY DEFINER VIEW `GAS_BEZUG_MonatsWerte_V`  AS SELECT `a`.`Monat` AS `Monat`, `a`.`Wert`- `b`.`Wert` AS `MonatsWert` FROM ((select substr(`GAS_BEZUG`.`DATUM`,1,7) AS `Monat`,max(`GAS_BEZUG`.`WERT`) AS `Wert` from `GAS_BEZUG` group by substr(`GAS_BEZUG`.`DATUM`,1,7) order by `GAS_BEZUG`.`DATUM` desc) `a` join (select substr(`GAS_BEZUG`.`DATUM` + interval 1 month,1,7) AS `Monat`,max(`GAS_BEZUG`.`WERT`) AS `Wert` from `GAS_BEZUG` group by substr(`GAS_BEZUG`.`DATUM`,1,7) order by `GAS_BEZUG`.`DATUM` desc) `b` on(`a`.`Monat` = `b`.`Monat`)) ;

-- --------------------------------------------------------

--
-- Struktur des Views `GAS_BEZUG_TagesWerte_V`
--
DROP TABLE IF EXISTS `GAS_BEZUG_TagesWerte_V`;

CREATE  DEFINER = `pi`@`%` SQL SECURITY DEFINER VIEW `GAS_BEZUG_TagesWerte_V`  AS SELECT `a`.`Tag` AS `Tag`, `a`.`Wert`- `b`.`Wert` AS `TagesWert` FROM ((select substr(`GAS_BEZUG`.`DATUM`,1,10) AS `Tag`,max(`GAS_BEZUG`.`WERT`) AS `Wert` from `GAS_BEZUG` group by substr(`GAS_BEZUG`.`DATUM`,1,10) order by `GAS_BEZUG`.`DATUM` desc) `a` join (select substr(`GAS_BEZUG`.`DATUM` + interval 1 day,1,10) AS `Tag`,max(`GAS_BEZUG`.`WERT`) AS `Wert` from `GAS_BEZUG` group by substr(`GAS_BEZUG`.`DATUM`,1,10) order by `GAS_BEZUG`.`DATUM` desc) `b` on(`a`.`Tag` = `b`.`Tag`)) ;

-- --------------------------------------------------------

--
-- Struktur des Views `PV_ERTRAG_MonatsWerte_V`
--
DROP TABLE IF EXISTS `PV_ERTRAG_MonatsWerte_V`;

CREATE  DEFINER = `pi`@`%` SQL SECURITY DEFINER VIEW `PV_ERTRAG_MonatsWerte_V`  AS SELECT `a`.`Monat` AS `Monat`, `a`.`Wert`- `b`.`Wert` AS `MonatsWert` FROM ((select substr(`PV_GESAMT_ERTRAG`.`DATUM`,1,7) AS `Monat`,max(`PV_GESAMT_ERTRAG`.`WERT`) AS `Wert` from `PV_GESAMT_ERTRAG` group by substr(`PV_GESAMT_ERTRAG`.`DATUM`,1,7) order by `PV_GESAMT_ERTRAG`.`DATUM` desc) `a` join (select substr(`PV_GESAMT_ERTRAG`.`DATUM` + interval 1 month,1,7) AS `Monat`,max(`PV_GESAMT_ERTRAG`.`WERT`) AS `Wert` from `PV_GESAMT_ERTRAG` group by substr(`PV_GESAMT_ERTRAG`.`DATUM`,1,7) order by `PV_GESAMT_ERTRAG`.`DATUM` desc) `b` on(`a`.`Monat` = `b`.`Monat`)) ;

-- --------------------------------------------------------

--
-- Struktur des Views `PV_ERTRAG_TagesWerte_V`
--
DROP TABLE IF EXISTS `PV_ERTRAG_TagesWerte_V`;

CREATE  DEFINER = `pi`@`%` SQL SECURITY DEFINER VIEW `PV_ERTRAG_TagesWerte_V`  AS SELECT `a`.`Tag` AS `Tag`, `a`.`Wert`- `b`.`Wert` AS `TagesWert` FROM ((select substr(`PV_GESAMT_ERTRAG`.`DATUM`,1,10) AS `Tag`,max(`PV_GESAMT_ERTRAG`.`WERT`) AS `Wert` from `PV_GESAMT_ERTRAG` group by substr(`PV_GESAMT_ERTRAG`.`DATUM`,1,10) order by `PV_GESAMT_ERTRAG`.`DATUM` desc) `a` join (select substr(`PV_GESAMT_ERTRAG`.`DATUM` + interval 1 day,1,10) AS `Tag`,max(`PV_GESAMT_ERTRAG`.`WERT`) AS `Wert` from `PV_GESAMT_ERTRAG` group by substr(`PV_GESAMT_ERTRAG`.`DATUM`,1,10) order by `PV_GESAMT_ERTRAG`.`DATUM` desc) `b` on(`a`.`Tag` = `b`.`Tag`)) ;

-- --------------------------------------------------------

--
-- Struktur des Views `SMA_JahresDaten_V`
--
DROP TABLE IF EXISTS `SMA_JahresDaten_V`;

CREATE  DEFINER = `pi`@`%` SQL SECURITY DEFINER VIEW `SMA_JahresDaten_V`  AS SELECT substr(`SMA_DATEN`.`DATUM`,1,4) AS `JAHR`, sum(`SMA_DATEN`.`PV_Energie`) AS `PV_Energie`, sum(`SMA_DATEN`.`BKW_Energie`) AS `BKW_Energie`, sum(`SMA_DATEN`.`Bat_Ladung`) AS `Bat_Ladung`, sum(`SMA_DATEN`.`Bat_Entladung`) AS `Bat_Entladung`, sum(`SMA_DATEN`.`Netz_Bezug`) AS `Netz_Bezug`, sum(`SMA_DATEN`.`Netz_Einspeisung`) AS `Netz_Einspeisung`, sum(`SMA_DATEN`.`Haus_Verbrauch`) AS `Haus_Verbrauch`, sum(`SMA_DATEN`.`Auto_Verbrauch`) AS `Auto_Verbrauch`, sum(`SMA_DATEN`.`Direkt_Verbrauch`) AS `Direkt_Verbrauch` FROM `SMA_DATEN` GROUP BY substr(`SMA_DATEN`.`DATUM`,1,4) ORDER BY `SMA_DATEN`.`DATUM` DESC ;

-- --------------------------------------------------------

--
-- Struktur des Views `SMA_MonatsDaten_V`
--
DROP TABLE IF EXISTS `SMA_MonatsDaten_V`;

CREATE  DEFINER = `pi`@`%` SQL SECURITY DEFINER VIEW `SMA_MonatsDaten_V`  AS SELECT substr(`SMA_DATEN`.`DATUM`,1,7) AS `MONAT`, sum(`SMA_DATEN`.`PV_Energie`) AS `PV_Energie`, sum(`SMA_DATEN`.`BKW_Energie`) AS `BKW_Energie`, sum(`SMA_DATEN`.`Bat_Ladung`) AS `Bat_Ladung`, sum(`SMA_DATEN`.`Bat_Entladung`) AS `Bat_Entladung`, sum(`SMA_DATEN`.`Netz_Bezug`) AS `Netz_Bezug`, sum(`SMA_DATEN`.`Netz_Einspeisung`) AS `Netz_Einspeisung`, sum(`SMA_DATEN`.`Haus_Verbrauch`) AS `Haus_Verbrauch`, sum(`SMA_DATEN`.`Auto_Verbrauch`) AS `Auto_Verbrauch`, sum(`SMA_DATEN`.`Direkt_Verbrauch`) AS `Direkt_Verbrauch` FROM `SMA_DATEN` GROUP BY substr(`SMA_DATEN`.`DATUM`,1,7) ORDER BY `SMA_DATEN`.`DATUM` DESC ;

-- --------------------------------------------------------

--
-- Struktur des Views `SMA_STROM_BEZUG_TagesWerte_V`
--
DROP TABLE IF EXISTS `SMA_STROM_BEZUG_TagesWerte_V`;

CREATE  DEFINER = `pi`@`%` SQL SECURITY DEFINER VIEW `SMA_STROM_BEZUG_TagesWerte_V`  AS SELECT `a`.`Tag` AS `Tag`, `a`.`Wert`- `b`.`Wert` AS `TagesWert` FROM ((select substr(`SMA_STROM_BEZUG`.`DATUM`,1,10) AS `Tag`,max(`SMA_STROM_BEZUG`.`WERT`) AS `Wert` from `SMA_STROM_BEZUG` group by substr(`SMA_STROM_BEZUG`.`DATUM`,1,10) order by `SMA_STROM_BEZUG`.`DATUM` desc) `a` join (select substr(`SMA_STROM_BEZUG`.`DATUM` + interval 1 day,1,10) AS `Tag`,max(`SMA_STROM_BEZUG`.`WERT`) AS `Wert` from `SMA_STROM_BEZUG` group by substr(`SMA_STROM_BEZUG`.`DATUM`,1,10) order by `SMA_STROM_BEZUG`.`DATUM` desc) `b` on(`a`.`Tag` = `b`.`Tag`)) ;

-- --------------------------------------------------------

--
-- Struktur des Views `SMA_STROM_EINSPEISUNG_TagesWerte_V`
--
DROP TABLE IF EXISTS `SMA_STROM_EINSPEISUNG_TagesWerte_V`;

CREATE  DEFINER = `pi`@`%` SQL SECURITY DEFINER VIEW `SMA_STROM_EINSPEISUNG_TagesWerte_V`  AS SELECT `a`.`Tag` AS `Tag`, `a`.`Wert`- `b`.`Wert` AS `TagesWert` FROM ((select substr(`SMA_STROM_EINSPEISUNG`.`DATUM`,1,10) AS `Tag`,max(`SMA_STROM_EINSPEISUNG`.`WERT`) AS `Wert` from `SMA_STROM_EINSPEISUNG` group by substr(`SMA_STROM_EINSPEISUNG`.`DATUM`,1,10) order by `SMA_STROM_EINSPEISUNG`.`DATUM` desc) `a` join (select substr(`SMA_STROM_EINSPEISUNG`.`DATUM` + interval 1 day,1,10) AS `Tag`,max(`SMA_STROM_EINSPEISUNG`.`WERT`) AS `Wert` from `SMA_STROM_EINSPEISUNG` group by substr(`SMA_STROM_EINSPEISUNG`.`DATUM`,1,10) order by `SMA_STROM_EINSPEISUNG`.`DATUM` desc) `b` on(`a`.`Tag` = `b`.`Tag`)) ;

-- --------------------------------------------------------

--
-- Struktur des Views `SMA_TagesDaten_V`
--
DROP TABLE IF EXISTS `SMA_TagesDaten_V`;

CREATE  DEFINER = `pi`@`%` SQL SECURITY DEFINER VIEW `SMA_TagesDaten_V`  AS SELECT substr(`SMA_TAGES_DATEN`.`DATUM`,1,10) AS `Tag`, max(`SMA_TAGES_DATEN`.`PV_Energie`) AS `PV`, max(`SMA_TAGES_DATEN`.`BKW_Energie`) AS `BKW`, max(`SMA_TAGES_DATEN`.`Netz_Bezug`) AS `Bezug`, max(`SMA_TAGES_DATEN`.`Netz_Einspeisung`) AS `Einspeisung`, max(`SMA_TAGES_DATEN`.`Haus_Verbrauch`) AS `Verbrauch`, max(`SMA_TAGES_DATEN`.`Auto_Verbrauch`) AS `Auto`, max(`SMA_TAGES_DATEN`.`Direkt_Verbrauch`) AS `Direkt` FROM `SMA_TAGES_DATEN` GROUP BY substr(`SMA_TAGES_DATEN`.`DATUM`,1,10) ORDER BY substr(`SMA_TAGES_DATEN`.`DATUM`,1,10) ASC ;

-- --------------------------------------------------------

--
-- Struktur des Views `StromDatenVergleich_V`
--
DROP TABLE IF EXISTS `StromDatenVergleich_V`;

CREATE  DEFINER = `pi`@`%` SQL SECURITY DEFINER VIEW `StromDatenVergleich_V`  AS SELECT `d`.`DATUM` AS `DATUM`, `d`.`PV_Energie` AS `PV_Energie`, `t`.`PV` AS `PV`, `EB`.`PVErzeugung` AS `PVErzeugung`, `d`.`BKW_Energie` AS `BKW_Energie`, `t`.`BKW` AS `BKW`, `d`.`Netz_Bezug` AS `Netz_Bezug`, `t`.`Bezug` AS `Bezug`, `EB`.`Netzbezug`* 1000 AS `EB_Netzbezug`, `d`.`Netz_Einspeisung` AS `Netz_Einspeisung`, `t`.`Einspeisung` AS `Einspeisung`, `EB`.`Netzeinspeisung` AS `Netzeinspeisung`, `d`.`Haus_Verbrauch` AS `Haus_Verbrauch`, `t`.`Verbrauch` AS `Verbrauch`, `EB`.`Verbrauch`* 1000 AS `SMA_Verbrauch`, `d`.`Auto_Verbrauch` AS `Auto_Verbrauch`, `t`.`Auto` AS `Auto`, `d`.`Direkt_Verbrauch` AS `Direkt_Verbrauch`, `t`.`Direkt` AS `Direkt`, `EB`.`DirektVerbrauch`* 1000 + `d`.`Haus_Verbrauch` + `d`.`Auto_Verbrauch` - `EB`.`Verbrauch` * 1000 AS `EB_Direkt`, `EB`.`DirektVerbrauch`* 1000 AS `EB_DirektVerbrauch` FROM ((`SMA_DATEN` `d` join `SMA_TagesDaten_V` `t` on(`t`.`Tag` = `d`.`DATUM`)) join `SMA_EnergieBilanz_Tag` `EB` on(`EB`.`DATUM` = `d`.`DATUM`)) ORDER BY `d`.`DATUM` DESC ;

-- --------------------------------------------------------

--
-- Struktur des Views `STROM_BEZUG_MonatsWerte_V`
--
DROP TABLE IF EXISTS `STROM_BEZUG_MonatsWerte_V`;

CREATE  DEFINER = `pi`@`%` SQL SECURITY DEFINER VIEW `STROM_BEZUG_MonatsWerte_V`  AS SELECT `a`.`Monat` AS `Monat`, `a`.`Wert`- `b`.`Wert` AS `MonatsWert` FROM ((select substr(`STROM_BEZUG`.`DATUM`,1,7) AS `Monat`,max(`STROM_BEZUG`.`WERT`) AS `Wert` from `STROM_BEZUG` group by substr(`STROM_BEZUG`.`DATUM`,1,7) order by `STROM_BEZUG`.`DATUM` desc) `a` join (select substr(`STROM_BEZUG`.`DATUM` + interval 1 month,1,7) AS `Monat`,max(`STROM_BEZUG`.`WERT`) AS `Wert` from `STROM_BEZUG` group by substr(`STROM_BEZUG`.`DATUM`,1,7) order by `STROM_BEZUG`.`DATUM` desc) `b` on(`a`.`Monat` = `b`.`Monat`)) ;

-- --------------------------------------------------------

--
-- Struktur des Views `STROM_BEZUG_TagesWerte_V`
--
DROP TABLE IF EXISTS `STROM_BEZUG_TagesWerte_V`;

CREATE  DEFINER = `pi`@`%` SQL SECURITY DEFINER VIEW `STROM_BEZUG_TagesWerte_V`  AS SELECT `a`.`Tag` AS `Tag`, `a`.`Wert`- `b`.`Wert` AS `TagesWert` FROM ((select substr(`STROM_BEZUG`.`DATUM`,1,10) AS `Tag`,max(`STROM_BEZUG`.`WERT`) AS `Wert` from `STROM_BEZUG` group by substr(`STROM_BEZUG`.`DATUM`,1,10) order by `STROM_BEZUG`.`DATUM` desc) `a` join (select substr(`STROM_BEZUG`.`DATUM` + interval 1 day,1,10) AS `Tag`,max(`STROM_BEZUG`.`WERT`) AS `Wert` from `STROM_BEZUG` group by substr(`STROM_BEZUG`.`DATUM`,1,10) order by `STROM_BEZUG`.`DATUM` desc) `b` on(`a`.`Tag` = `b`.`Tag`)) ;

-- --------------------------------------------------------

--
-- Struktur des Views `STROM_EINSPEISUNG_MonatsWerte_V`
--
DROP TABLE IF EXISTS `STROM_EINSPEISUNG_MonatsWerte_V`;

CREATE  DEFINER = `pi`@`%` SQL SECURITY DEFINER VIEW `STROM_EINSPEISUNG_MonatsWerte_V`  AS SELECT `a`.`Monat` AS `Monat`, `a`.`Wert`- `b`.`Wert` AS `MonatsWert` FROM ((select substr(`STROM_EINSPEISUNG`.`DATUM`,1,7) AS `Monat`,max(`STROM_EINSPEISUNG`.`WERT`) AS `Wert` from `STROM_EINSPEISUNG` group by substr(`STROM_EINSPEISUNG`.`DATUM`,1,7) order by `STROM_EINSPEISUNG`.`DATUM` desc) `a` join (select substr(`STROM_EINSPEISUNG`.`DATUM` + interval 1 month,1,7) AS `Monat`,max(`STROM_EINSPEISUNG`.`WERT`) AS `Wert` from `STROM_EINSPEISUNG` group by substr(`STROM_EINSPEISUNG`.`DATUM`,1,7) order by `STROM_EINSPEISUNG`.`DATUM` desc) `b` on(`a`.`Monat` = `b`.`Monat`)) ;

-- --------------------------------------------------------

--
-- Struktur des Views `STROM_EINSPEISUNG_TagesWerte_V`
--
DROP TABLE IF EXISTS `STROM_EINSPEISUNG_TagesWerte_V`;

CREATE  DEFINER = `pi`@`%` SQL SECURITY DEFINER VIEW `STROM_EINSPEISUNG_TagesWerte_V`  AS SELECT `a`.`Tag` AS `Tag`, `a`.`Wert`- `b`.`Wert` AS `TagesWert` FROM ((select substr(`STROM_EINSPEISUNG`.`DATUM`,1,10) AS `Tag`,max(`STROM_EINSPEISUNG`.`WERT`) AS `Wert` from `STROM_EINSPEISUNG` group by substr(`STROM_EINSPEISUNG`.`DATUM`,1,10) order by `STROM_EINSPEISUNG`.`DATUM` desc) `a` join (select substr(`STROM_EINSPEISUNG`.`DATUM` + interval 1 day,1,10) AS `Tag`,max(`STROM_EINSPEISUNG`.`WERT`) AS `Wert` from `STROM_EINSPEISUNG` group by substr(`STROM_EINSPEISUNG`.`DATUM`,1,10) order by `STROM_EINSPEISUNG`.`DATUM` desc) `b` on(`a`.`Tag` = `b`.`Tag`)) ;

-- --------------------------------------------------------

--
-- Struktur des Views `STROM_Verbrauch_TagesWerte_V`
--
DROP TABLE IF EXISTS `STROM_Verbrauch_TagesWerte_V`;

CREATE  DEFINER = `pi`@`%` SQL SECURITY DEFINER VIEW `STROM_Verbrauch_TagesWerte_V`  AS SELECT `t`.`Tag` AS `Tag`, `t`.`Zeit` AS `Zeit`, `t`.`Wert` AS `Wert` FROM (select substr(`c`.`DATUM`,1,10) AS `Tag`,`c`.`DATUM` AS `Zeit`,`c`.`Haus_Verbrauch` AS `Wert` from `SMA_TAGES_DATEN` `c` where `c`.`Haus_Verbrauch` > 0 and `c`.`DATUM` >= '2024-07-01' union select `a`.`Tag` AS `Tag`,`a`.`Zeit` AS `Zeit`,`a`.`Wert` - `b`.`Wert` AS `Wert` from ((select substr(`a`.`DATUM`,1,10) AS `Tag`,`a`.`DATUM` AS `Zeit`,`a`.`Haus_Verbrauch` AS `Wert` from `SMA_TAGES_DATEN` `a` where `a`.`Haus_Verbrauch` < 0 order by `a`.`DATUM` desc) `a` join (select substr(`a`.`DATUM`,1,10) AS `Tag`,`a`.`DATUM` AS `Zeit`,min(`a`.`Haus_Verbrauch`) AS `Wert` from `SMA_TAGES_DATEN` `a` where `a`.`Haus_Verbrauch` < 0 group by substr(`a`.`DATUM`,1,10) order by `a`.`DATUM` desc) `b` on(`a`.`Tag` = `b`.`Tag` and `b`.`Zeit` <> `a`.`Zeit`)) where `a`.`Tag` >= '2024-07-01') AS `t` ORDER BY `t`.`Zeit` DESC ;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
