-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 07, 2023 at 08:04 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.3.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `crossfit`
--

-- --------------------------------------------------------

--
-- Table structure for table `abonamente`
--

CREATE TABLE `abonamente` (
  `idab` int(11) NOT NULL,
  `nume` text NOT NULL,
  `tip` text NOT NULL,
  `descriere` text NOT NULL,
  `pret` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `abonamente`
--

INSERT INTO `abonamente` (`idab`, `nume`, `tip`, `descriere`, `pret`) VALUES
(2, 'Clasa de aerobic', 'grup', 'Clasa de aerobic, de 10 persoane, in fiecare luni, miercuri, vineri de la ora 15:00.', 150),
(3, 'Abonament fit legend', 'personal', 'De 4 ori pe saptamana, zilele si orele se stabilesc impreuna cu antrenorul.', 300),
(5, 'Clasa de karate', 'grup', 'Clasa de karate pentru copii.', 100),
(6, 'Zumba fitness', 'grup', 'Zumba fitness este un mod placut de a combina sportul cu muzica.', 250);

-- --------------------------------------------------------

--
-- Table structure for table `antrenori`
--

CREATE TABLE `antrenori` (
  `ida` int(11) NOT NULL,
  `nume` text NOT NULL,
  `varsta` date NOT NULL,
  `descriere` text NOT NULL,
  `spec` text NOT NULL,
  `cale` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `antrenori`
--

INSERT INTO `antrenori` (`ida`, `nume`, `varsta`, `descriere`, `spec`, `cale`) VALUES
(14, 'Muresan Bogdan', '1988-05-08', '   Cu o vechime de peste 10 ani in antrenorat, Bogdan a fost intrega viata in lumea sportului. Fost sportiv de performanta iar mai apoi antrenor de arte martiale, a ridicat de-a lungul timpului mai multe generatii de sportivi de top, membri ai lotului national, campioni nationali, europeni si mondiali.   \r\n\r\n   Adept al functionalitatii exercitiilor fizice si punand accent puternic pe importanta biomecanicii, antrenamentele pe care le conduce sunt mereu tehnice, bine structurate si cu mare atentie la detalii.\r\n\r\n   Clientii cu care a lucrat de-a lungul timpului si-au atins mereu telurile propuse, acestea variind de la slabit eficient si rapid, schimbarea stilului de viata, imbunatatirea functionalitatii corpului, corectarea posturii si a mersului, recuperare post accidentari, pana la preparare fizica pentru scoli militare sau  pregatirea pentru maratoane montane.', 'Personal Trainer/Nutritionist', 'Poze\\bogdan.jpg'),
(15, 'Avram Rares', '1993-08-27', '   Kinetoterapeutul echipei Iron Gym, este alaturi de clientii nostri pentru a creste calitatea vietii acestora, pentru a ameliora durerea si a aduce o stare generala de bine, prin miscare, kinetoterapie, gimnastica medicala precum si masaj.\r\n\r\n   Experienta dobandita in lucrul cu pacientii din sectiile de Neurologie, Reumatologie si chiar Terapie Intensiva i-a adus o mai buna intelegere in importanta care trebuie acordata miscarii, si ingrijirii functionalitatii propriului nostru corp precum si o rabdare si un calm natural, esentiale in lucrul in acest domeniu.\r\n\r\n   Intrat in lumea sportului de mic, mereu sociabil si implicat in activitati interactive este o prezenta mereu cu zambetul pe buze si stie foarte bine sa rezoneze cu copiii in lucrul pentru corectarea posturii cat si in sedintele de gimnastica medicala.', 'Personal Trainer/Kinetoterapeut', 'Poze\\rares.jpg'),
(16, 'Bellu Madalina', '1998-01-22', '   Pasionata de sport si fitness de la o varsta frageda, Madalina si-a petrecut cea mai mare parte din timpul liber de adolescent in sali de sport.\r\n\r\n    Fire sociabila, si dornica de a-si imbogati cunostintele in domeniu, alege sa urmeze chemarea carierei de trainer in fitness, specializandu-se pe Fitness Functional si Personal Training.\r\n\r\nTemperamentul ei mereu vesel, ajuta la intretinerea unei atmosfere destinse pe parcursul antrenamentelor, chiar daca munca depusa de clientii sai este una considerabila.', 'Personal Trainer/Junior Coach', 'Poze\\madalina.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `clienti`
--

CREATE TABLE `clienti` (
  `idc` int(11) NOT NULL,
  `nume` text NOT NULL,
  `datan` date NOT NULL,
  `telefon` text NOT NULL,
  `email` text NOT NULL,
  `parola` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `clienti`
--

INSERT INTO `clienti` (`idc`, `nume`, `datan`, `telefon`, `email`, `parola`) VALUES
(20, 'Sabo Andrei', '2002-09-03', '0766373403', 'andi_sabo3@yahoo.com', 'andi'),
(21, 'Fatu Samuel', '2002-07-24', '0766373403', 'fatu.samuel24@gmail.com', 'fatu'),
(22, 'Andi Sabo', '2021-01-05', '0234876382', 'saboclaudiu67@yahoo.com', 'andiandi'),
(23, 'Bella', '2001-11-02', '0766373403', 'bella1romania@gmail.com', 'bella');

-- --------------------------------------------------------

--
-- Table structure for table `evenimente`
--

CREATE TABLE `evenimente` (
  `ide` int(11) NOT NULL,
  `nume` text NOT NULL,
  `data` datetime NOT NULL,
  `descriere` text NOT NULL,
  `cale` text NOT NULL,
  `pret` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `evenimente`
--

INSERT INTO `evenimente` (`ide`, `nume`, `data`, `descriere`, `cale`, `pret`) VALUES
(9, 'Healthy eating workshop', '2021-06-03 18:00:18', 'Subiectele abordate vor fi de actualitate si vor atinge o varietate de aspecte precum:\r\n\r\n✅ Cum slabim sanatos si care sunt cauzele care produc ingrasarea.\r\n✅ Legatura intre alimenatie si alti parametri de sanatate (colesterol, trigliceride, etc)\r\n✅ Cum ne hranim eficient in functie de tipul somatic, stil de viata, varsta sau scopul urmarit\r\n✅ Sectiuni de intrebari si raspunsuri.\r\n✅ Demontare mituri si preconceptii despre nutritie.', 'Poze\\food.jpg', 20),
(16, 'Crosul pentru viata', '2021-08-05 20:00:29', '☑Crosul pentru viata este un semi-maraton de 21 de kilometrii.\r\n☑Cauza sociala a evenimentului este „alergare în scopul strângerii de fonduri pentru \r\nAsezamantului de Copii «Sf. Ierarh Leontie»”.\r\n☑Banii stransi vor fii donati.\r\n☑Primii 10 vor fii premiati cu medalii.', 'Poze\\atletismo-correr-deportes-marathon-wallpaper-preview.jpg', 50);

-- --------------------------------------------------------

--
-- Table structure for table `rezabonamente`
--

CREATE TABLE `rezabonamente` (
  `idra` int(11) NOT NULL,
  `idc` int(11) NOT NULL,
  `idab` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `rezabonamente`
--

INSERT INTO `rezabonamente` (`idra`, `idc`, `idab`) VALUES
(18, 21, 5),
(19, 20, 6),
(20, 22, 2),
(21, 20, 2),
(22, 20, 3);

-- --------------------------------------------------------

--
-- Table structure for table `rezevenimente`
--

CREATE TABLE `rezevenimente` (
  `idre` int(11) NOT NULL,
  `idc` int(11) NOT NULL,
  `ide` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `rezevenimente`
--

INSERT INTO `rezevenimente` (`idre`, `idc`, `ide`) VALUES
(25, 20, 16),
(26, 21, 9),
(27, 21, 16),
(28, 22, 9),
(29, 23, 9);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `abonamente`
--
ALTER TABLE `abonamente`
  ADD PRIMARY KEY (`idab`);

--
-- Indexes for table `antrenori`
--
ALTER TABLE `antrenori`
  ADD PRIMARY KEY (`ida`);

--
-- Indexes for table `clienti`
--
ALTER TABLE `clienti`
  ADD PRIMARY KEY (`idc`);

--
-- Indexes for table `evenimente`
--
ALTER TABLE `evenimente`
  ADD PRIMARY KEY (`ide`);

--
-- Indexes for table `rezabonamente`
--
ALTER TABLE `rezabonamente`
  ADD PRIMARY KEY (`idra`);

--
-- Indexes for table `rezevenimente`
--
ALTER TABLE `rezevenimente`
  ADD PRIMARY KEY (`idre`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `abonamente`
--
ALTER TABLE `abonamente`
  MODIFY `idab` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `antrenori`
--
ALTER TABLE `antrenori`
  MODIFY `ida` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `clienti`
--
ALTER TABLE `clienti`
  MODIFY `idc` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `evenimente`
--
ALTER TABLE `evenimente`
  MODIFY `ide` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `rezabonamente`
--
ALTER TABLE `rezabonamente`
  MODIFY `idra` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `rezevenimente`
--
ALTER TABLE `rezevenimente`
  MODIFY `idre` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
