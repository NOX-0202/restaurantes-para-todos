-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 09, 2019 at 06:18 AM
-- Server version: 10.1.40-MariaDB
-- PHP Version: 7.1.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `restaurante-para-todos`
--

-- --------------------------------------------------------

--
-- Table structure for table `restaurantes`
--

CREATE TABLE `restaurantes` (
  `id` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `zona` varchar(150) CHARACTER SET latin1 NOT NULL,
  `ender` text,
  `obeso` varchar(10) CHARACTER SET latin1 NOT NULL DEFAULT 'nda',
  `def_visual` varchar(10) CHARACTER SET latin1 NOT NULL DEFAULT 'nda',
  `cadeirante` varchar(10) CHARACTER SET latin1 NOT NULL DEFAULT 'nda',
  `def_auditivo` varchar(10) CHARACTER SET latin1 NOT NULL DEFAULT 'nda',
  `descricao` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `restaurantes`
--

INSERT INTO `restaurantes` (`id`, `nome`, `zona`, `ender`, `obeso`, `def_visual`, `cadeirante`, `def_auditivo`, `descricao`) VALUES
(1, 'RefeitÃ³rio RJ - Lapa', 'Central', 'Av. Gomes Freire, 226 - Centro', 'obeso', '', 'cadeirante', 'nda', 'assentos grandes e reforÃ§ados acessos e banheiros adaptados para cadeirantes WiFi grÃ¡tis fraldÃ¡rio ou trocador cadeirÃµes - indica tolerÃ¢ncia com crianÃ§as cardÃ¡pio em inglÃªs opÃ§Ãµes vegetarianas / veganas no cardÃ¡pio'),
(2, 'Bardana', 'Central', 'R. Ana AmÃ©lia, 9 / sobreloja - Centro (21) 2292-9232', 'nda', '', 'cadeirante', 'nda', 'assentos grandes e reforÃ§ados acessos e banheiros adaptados para cadeirantes WiFi grÃ¡tis fraldÃ¡rio ou trocador cadeirÃµes - indica tolerÃ¢ncia com crianÃ§as cardÃ¡pio em inglÃªs opÃ§Ãµes vegetarianas / veganas no cardÃ¡pio'),
(5, 'Restaurante CristÃ³vÃ£o', 'Central', ' R. GonÃ§alves Dias, 2 - Centro (21) 2505-1500 | ', 'obeso', 'nda', 'cadeirante', 'nda', 'assentos grandes e reforÃ§ados acessos e banheiros adaptados para cadeirantes'),
(6, 'Balada Mix - Jardim OceÃ¢nico', 'Oeste', ' Av. Ã‰rico VerÃ­ssimo, 843 - Recreio (21) 3259-5697|', 'nda', 'def_visual', 'cadeirante', 'nda', 'assentos grandes e reforÃ§ados acessos e banheiros adaptados para cadeirantes Ã¡rea externa para vocÃª ficar com seu cachorro WiFi grÃ¡tis fraldÃ¡rio ou trocador cadeirÃµes - indica tolerÃ¢ncia com crianÃ§as cardÃ¡pio em inglÃªs opÃ§Ãµes vegetarianas / veganas no cardÃ¡pio'),
(8, 'Balada Mix - Recreio', 'Oeste', ' Estr. Benvindo de Novais, 1878 - Loja 3 - Recreio dos Bandeirantes (21) 3283-5698|', 'obeso', 'def_visual', 'cadeirante', 'nda', 'assentos grandes e reforÃ§ados acessos e banheiros adaptados para cadeirantes Ã¡rea externa para vocÃª ficar com seu cachorro WiFi grÃ¡tis fraldÃ¡rio ou trocador cadeirÃµes - indica tolerÃ¢ncia com crianÃ§as cardÃ¡pio em inglÃªs opÃ§Ãµes vegetarianas / veganas no cardÃ¡pio'),
(9, 'Balada Mix - Shopping Rio Design', 'Oeste', ' Av. das Americas, 7777 - Barra da Tijuca (21) 2148-2900|', 'obeso', 'def_visual', 'cadeirante', 'nda', 'assentos grandes e reforÃ§ados acessos e banheiros adaptados para cadeirantes Ã¡rea externa para vocÃª ficar com seu cachorro WiFi grÃ¡tis fraldÃ¡rio ou trocador cadeirÃµes - indica tolerÃ¢ncia com crianÃ§as cardÃ¡pio em inglÃªs opÃ§Ãµes vegetarianas / veganas no cardÃ¡pio'),
(10, 'Baladinha Praia', 'Oeste', 'Av. Lucio Costa, 3460 - Loja 108/109 - Barra da Tijuca (21) 2496-8886', 'obeso', 'def_visual', 'cadeirante', 'nda', 'assentos grandes e reforÃ§ados acessos e banheiros adaptados para cadeirantes Ã¡rea externa para vocÃª ficar com seu cachorro WiFi grÃ¡tis fraldÃ¡rio ou trocador cadeirÃµes - indica tolerÃ¢ncia com crianÃ§as cardÃ¡pio em inglÃªs opÃ§Ãµes vegetarianas / veganas no cardÃ¡pio'),
(11, 'Shopping Rio 2 ', 'Oeste', 'R. Bruno Giorgi, 114 - Barra da Tijuca (21) 3082-2003 |', 'nda', 'def_visual', 'cadeirante', 'nda', 'acessos e banheiros adaptados para cadeirantes Ã¡rea externa para vocÃª ficar com seu cachorro WiFi grÃ¡tis estacionamento para bicicletas fraldÃ¡rio ou trocador cadeirÃµes - indica tolerÃ¢ncia com crianÃ§as'),
(12, 'TourÃ£o Grill', 'Oeste', 'PÃ§a. do Ã“, 116 - Barra da Tijuca (21) 2493-4011|', 'obeso', 'nda', 'cadeirante', 'nda', 'assentos grandes e reforÃ§ados acessos e banheiros adaptados para cadeirantes WiFi grÃ¡tis fraldÃ¡rio ou trocador cadeirÃµes - indica tolerÃ¢ncia com crianÃ§as'),
(13, 'Gabbiano Ristorante - Shopping Barra Garden	', 'Oeste', 'Av. das AmÃ©ricas, 3255, loja 142 - Barra da Tijuca (21) 3153-5529', 'nda', 'nda', 'cadeirante', 'def_auditi', 'acessos e banheiros adaptados para cadeirantes WiFi grÃ¡tis estacionamento para bicicletas + paraciclo cadeirÃµes - indica tolerÃ¢ncia com crianÃ§as'),
(14, 'Outback Steakhouse', 'Oeste', ' Av. das AmÃ©ricas, 6101 - Barra da Tijuca (21) 2438-5155 ', 'obeso', 'nda', 'nda', 'def_auditi', 'acessos e banheiros adaptados para cadeirantes fraldÃ¡rio ou trocador cadeirÃµes - indica tolerÃ¢ncia com crianÃ§as cardÃ¡pio em inglÃªs'),
(15, 'Rio Brasa', 'Oeste', 'Av. Ayrton Senna, 2541 - Barra da Tijuca (21) 2199-9191', 'nda', 'nda', 'cadeirante', 'def_auditi', 'acessos e banheiros adaptados para cadeirantes WiFi grÃ¡tis fraldÃ¡rio ou trocador cadeirÃµes - indica tolerÃ¢ncia com crianÃ§as + atividades e/ou espaÃ§o kids'),
(16, 'Le Vin Bistro & Patisserie - Barra Shopping', 'Oeste', 'Av. das AmÃ©ricas, 4666 - Barra da Tijuca (21) 2431-9008', 'nda', 'nda', 'cadeirante', 'nda', 'acessos e banheiros adaptados para cadeirantes WiFi grÃ¡tis cadeirÃµes - indica tolerÃ¢ncia com crianÃ§as'),
(17, 'Manekineko - Casa Shopping', 'Oeste', 'Av. Ayrton Senna, 2150 - Barra da Tijuca (21) 2429-8033', 'nda', 'nda', 'cadeirante', 'def_auditi', 'acessos e banheiros adaptados para cadeirantes fraldÃ¡rio ou trocador cadeirÃµes - indica tolerÃ¢ncia com crianÃ§as + atividades e/ou espaÃ§o kids'),
(18, 'La Mole - Barra', 'Oeste', ' R. MarquÃªs de ValenÃ§a, 74 - Barra da Tijuca (21) 3460-0800', 'nda', 'nda', 'cadeirante', 'nda', 'acessos e banheiros adaptados para cadeirantes cadeirÃµes - indica tolerÃ¢ncia com crianÃ§as'),
(19, 'SushiMar - Barra da Tijuca', 'Oeste', ' Av. Sernambetiba, 2860, loja G - Barra da Tijuca (21) 3154-5551', 'obeso', 'def_visual', 'cadeirante', 'def_auditi', 'assentos grandes e reforÃ§ados acessos e banheiros adaptados para cadeirantes Ã¡rea externa para vocÃª ficar com seu cachorro WiFi grÃ¡tis fraldÃ¡rio ou trocador cadeirÃµes - indica tolerÃ¢ncia com crianÃ§as cardÃ¡pio em inglÃªs opÃ§Ãµes vegetarianas / veganas no cardÃ¡pio'),
(20, 'Felice CaffÃ© - Shopping Rio Design', 'Sul', 'Av. Ataulfo de Paiva, 270 - Leblon (21) 2249-9361', 'obeso', 'nda', 'cadeirante', 'nda', 'Assentos grandes e reforÃ§ados Acessos e banheiros adaptados para cadeirantes FraldÃ¡rio ou trocador'),
(21, 'Da Silva - Shopping Rio Design', 'Sul', 'Av. Ataulfo de Paiva, 270 - Leblon (21) 2540-5035 ', 'nda', 'nda', 'cadeirante', 'nda', 'Acessos e banheiros adaptados para cadeirantes FraldÃ¡rio ou trocador'),
(22, 'Gula Gula - Ipanema', 'Sul', 'R. Henrique Dumont, 57 - Ipanema (21) 2259-3084', 'obeso', 'nda', 'cadeirante', 'def_auditi', 'Acessos e banheiros adaptados para cadeirantes Ãrea ao ar livre onde fumantes podem comer, beber e socializar Estacionamento para bicicletas FraldÃ¡rio ou trocador CadeirÃµes - indica tolerÃ¢ncia com crianÃ§as CardÃ¡pio em inglÃªs OpÃ§Ãµes vegetarianas / veganas no cardÃ¡pio'),
(23, 'Salitre', 'Sul', 'R. BarÃ£o da Torre, 632 - Ipanema (21) 2540-5723', 'obeso', 'nda', 'cadeirante', 'nda', 'Assentos grandes e reforÃ§ados Acessos e banheiros adaptados para cadeirantes'),
(24, 'CafÃ© BistrÃ´', 'Sul', 'R. BarÃ£o da Torre, 398 - Ipanema (21) 2523-2938', 'nda', 'nda', 'cadeirante', 'nda', 'Acessos e banheiros adaptados para cadeirantes'),
(25, 'Balada Mix - Ipanema', 'Sul', 'R. Anibal de MendonÃ§a, 31 - Ipanema (21) 2491-6222 ', 'obeso', 'def_visual', 'cadeirante', 'def_auditi', 'Assentos grandes e reforÃ§ados Acessos e banheiros adaptados para cadeirantes Ãrea externa para vocÃª ficar com seu cachorro Estacionamento para bicicletas +Paraciclo FraldÃ¡rio ou trocador CadeirÃµes - indica tolerÃ¢ncia com crianÃ§as CardÃ¡pio em inglÃªs OpÃ§Ãµes vegetarianas / veganas no cardÃ¡pio'),
(26, 'Palaphitas Kitch', 'Sul', 'Parque Cantagalo, 20 - Lagoa (21) 2227-0837', 'nda', 'def_visual', 'cadeirante', 'nda', 'Acessos e banheiros adaptados para cadeirantes Ãrea ao ar livre onde fumantes podem comer, beber e socializar Ãrea externa para vocÃª ficar com seu cachorro'),
(27, 'La Fabrique', 'Sul', 'Av. AtlÃ¢ntica, 994 - Leme (21) 2541-2416', 'obeso', 'def_visual', 'cadeirante', 'def_auditi', 'Acessos e banheiros adaptados para cadeirantes Ãrea ao ar livre onde fumantes podem comer, beber e socializar Ãrea externa para vocÃª ficar com seu cachorro CadeirÃµes - indica tolerÃ¢ncia com crianÃ§as CardÃ¡pio em inglÃªs OpÃ§Ãµes vegetarianas / veganas no cardÃ¡pio'),
(28, 'RÃ¡scal - Shopping Rio Sul', 'Sul', 'R. Lauro MÃ¼ller, 116 - Leme (21) 3873-0339', 'obeso', 'nda', 'cadeirante', 'nda', 'Assentos grandes e reforÃ§ados Acessos e banheiros adaptados para cadeirantes Estacionamento para bicicletas +Paraciclo FraldÃ¡rio ou trocador CadeirÃµes - indica tolerÃ¢ncia com crianÃ§as OpÃ§Ãµes vegetarianas / veganas no cardÃ¡pio'),
(29, 'Joaquina Bar e Restaurante - Leme', 'Sul', 'Av. AtlÃ¢ntica, 974 - Leme (21) 2275-8569', 'obeso', 'def_visual', 'cadeirante', 'def_auditi', 'Acessos e banheiros adaptados para cadeirantes Ãrea ao ar livre onde fumantes podem comer, beber e socializar Ãrea externa para vocÃª ficar com seu cachorro FraldÃ¡rio ou trocador CadeirÃµes - indica tolerÃ¢ncia com crianÃ§as +Atividades e/ou espaÃ§o kids OpÃ§Ãµes vegetarianas / veganas no cardÃ¡pio'),
(32, 'Restaurante Martinez', 'Sul', 'Av. AtlÃ¢ntica, 974 b - Leme (21) 3215-7297', 'nda', 'nda', 'cadeirante', 'def_auditi', 'Acessos e banheiros adaptados para cadeirantes Ãrea ao ar livre onde fumantes podem comer, beber e socializar Ãrea externa para vocÃª ficar com seu cachorro CardÃ¡pio em inglÃªs OpÃ§Ãµes vegetarianas / veganas no cardÃ¡pio'),
(33, 'O Ãrabe da GÃ¡vea - Shopping da GÃ¡vea', 'Sul', 'R. MarquÃªs de SÃ£o Vicente, 52 loja 141/140 - GÃ¡vea (21) 2294-2439', 'nda', 'nda', 'cadeirante', 'def_auditi', 'Acessos e banheiros adaptados para cadeirantes Estacionamento para bicicletas +Paraciclo FraldÃ¡rio ou trocador CadeirÃµes - indica tolerÃ¢ncia com crianÃ§as OpÃ§Ãµes vegetarianas / veganas no cardÃ¡pio'),
(34, 'D.R.I - Shopping da GÃ¡ve', 'Sul', 'R. Marquês de São Vicente, 52 - Gávea (21) 2259-2058 ', 'nda', 'nda', 'cadeirante', 'def_auditi', 'Acessos e banheiros adaptados para cadeirantes FraldÃ¡rio ou trocador CadeirÃµes - indica tolerÃ¢ncia com crianÃ§as +Atividades e/ou espaÃ§o kids'),
(35, 'Galeto Liceu ', 'Sul', 'R. Nelson Mandela, 100-LJ104 - Botafogo (21) 9879-0639', 'obeso', 'def_visual', 'cadeirante', 'def_auditi', 'Assentos grandes e reforÃ§ados Acessos e banheiros adaptados para cadeirantes Ãrea externa para vocÃª ficar com seu cachorro'),
(36, 'Harad - Comida Ã¡rabe - Botafogo', 'Sul', 'R. Nelson Mandela, 100/LJ103 - Botafogo (21) 3496-8000 ', 'nda', 'def_visual', 'cadeirante', 'nda', 'Acessos e banheiros adaptados para cadeirantes Ãrea ao ar livre onde fumantes podem comer, beber e socializar Ãrea externa para vocÃª ficar com seu cachorro OpÃ§Ãµes vegetarianas / veganas no cardÃ¡pio'),
(37, 'Balada mix- nova AmÃ©rica ', 'Norte', 'Av. Pastor martin luther king jr. 126-loja 529 del Castilho', 'obeso', 'nda', 'cadeirante', 'nda', 'Facil acessiblidade para cadeirantes e obesos'),
(38, 'Starbucks- Nova AmÃ©rica', 'Norte', 'Av pastor martin Luther King Jr 126 loja 509', 'obeso', 'def_visual', 'cadeirante', 'nda', 'Cadeirante fÃ¡cil  acesso para deficiente visual  , cadeiras para obesos | (21) 3344-1360 '),
(39, 'Braseiro do Sul', 'Norte', 'Av. Dom HÃ©lder CÃ¢mara, 7343 - AboliÃ§Ã£o, Rio de Janeiro ', 'obeso', 'def_visual', 'cadeirante', 'nda', 'mesas espaÃ§osas para pessoas obesas e cadeirantes, corredores largos para deficientes visuais '),
(40, ' Rei do Bacalhau', 'Norte', 'R. Guilhermina, 602B - Encantado, Rio de Janeiro - RJ', 'obeso', 'def_visual', 'cadeirante', 'nda', 'Mesas espaÃ§osas para pessoas obesa e cadeirantes, corredores largos para deficientes visuais |  (21) 2289-7246'),
(41, 'Lieto Crepe', 'Norte', 'R. Cantilda Maciel, 105 - loja D - AboliÃ§Ã£o, Rio de Janeiro - RJ', 'obeso', 'def_visual', 'cadeirante', 'def_auditi', '(21) 3496-0408'),
(42, ' Boi Bom Na Brasa', 'Norte', 'EndereÃ§o: R. Nova, SN - Acari, Rio de Janeiro - RJ', 'obeso', 'def_visual', 'cadeirante', 'nda', 'mesas espaÃ§osas para pessoas obesa e cadeirantes, corredores largos para deficientes visuais'),
(43, 'Padaria Recanto Gostoso de Ãgua Santa', 'Norte', 'EndereÃ§o: R. Violeta, 374 - Ãgua Santa, Rio de Janeiro RJ', 'obeso', 'def_visual', 'cadeirante', 'def_auditi', 'lugar espaÃ§oso e de facil acesso para os deficientes visuais cadeirantes e obesos'),
(44, 'Excallibur Restaurante e Choperia', 'Norte', ': Estr. Mal. Alencastro - Anchieta, Rio de Janeiro - RJ', 'obeso', 'def_visual', 'cadeirante', 'def_auditi', 'FÃ¡cil acesso para os deficientes visuais, obesos e cadeirantes | (21) 3019-1969'),
(45, 'Bodega Spania', 'Norte', 'Av. Cipriano Barata, 30 - Parque Anchieta, Rio de Janeiro - RJ', 'nda', 'nda', 'nda', 'nda', 'Corredores largos facilitando a locomoÃ§ao dos def visuais e cadeirantes, obesos | (21) 2455-2906'),
(46, 'Frango na Brasa da Granito ', 'Norte', 'Av. Cipriano Barata, Avenida Cipriano Barata - Parque Anchieta, Rio de Janeiro - RJ', 'obeso', 'def_visual', 'cadeirante', 'nda', 'Corredores largos facilitando a locomoÃ§ao dos deficientes visuais e cadeirantes, obesos | (21) 2455-1510');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `restaurantes`
--
ALTER TABLE `restaurantes`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `restaurantes`
--
ALTER TABLE `restaurantes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
