-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Sep 16, 2016 at 01:15 PM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `chattest`
--

-- --------------------------------------------------------

--
-- Table structure for table `priorq`
--

CREATE TABLE IF NOT EXISTS `priorq` (
  `qq` varchar(93) DEFAULT NULL,
  `ans` varchar(354) DEFAULT NULL,
  `id` int(255) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=30 ;

--
-- Dumping data for table `priorq`
--

INSERT INTO `priorq` (`qq`, `ans`, `id`) VALUES
('What is the faculty address ?/address', 'al. Mickiewicza 30, 30-059 Krak', 2),
('what can you tell me about the mechanical engineering and robotics faculty?', 'The Faculty of Mechanical Engineering and Robotics is one of the oldest and largest faculties of the AGH University of Science and Technology in Cracow. Our education and research activities are based not only on almost 55 years of tradition and experience', 3),
('who is the dean of the Faculty of Mechanical engineering and robotics faculty?', 'dean of the Faculty of Mechanical engineering and robotics is prof. dr hab. in?. Antoni Kalukiewicz ', 4),
('How can i contact dean of the Faculty of Mechanical engineering and robotics?', 'You can contact dean of the Faculty of Mechanical engineering and robotics by phone 12-617-36-81 or e-mail: dziekan@imir.agh.edu.pl', 5),
('Can you explain the work of dean of the Faculty of Mechanical engineering and robotics?', 'Upon the authorisation of the Rector, the Dean acts as a superior of all the employees and students at the Faculty, supervises all of the activities undertaken at the Faculty and represents it in external relations. He or she defines the scope of competence for Deputy Deans. The Dean and Deputy Deans are elected by the Electoral College of the Faculty.', 6),
('How many deans of Mechanical engineering and robotics was the previous term?', '14', 7),
('who was dean of Mechanical engineering and robotics of the years 1.X.1952-53?', 'prof. Kazimierz Szaw?owski', 8),
('who was dean of Mechanical engineering and robotics of the years 1953-56?', 'prof. Wac?aw Lesiecki', 9),
('who was dean of Mechanical engineering and robotics of the years 1956-60, 1964-66?', 'prof. Stanis?aw Markowski', 10),
('who was dean of Mechanical engineering and robotics of the years 1960-62?', 'prof. Jan Anio?a', 11),
('who was dean of Mechanical engineering and robotics of the years 1962-64?', 'prof. Mieczys?aw Damasiewicz', 12),
('who was dean of Mechanical engineering and robotics of the years 1966-69?', 'prof. Eugeniusz Podoba', 13),
('who was dean of Mechanical engineering and robotics of the years 1969-75?', 'prof. Adam Siemieniec', 14),
('who was dean of Mechanical engineering and robotics of the years 1975-78?', 'prof. Zygmunt Drzyma?a', 15),
('who was dean of Mechanical engineering and robotics of the years 1978-87?', 'prof. J?zef Giergiel', 16),
('who was dean of Mechanical engineering and robotics of the years 1987-90?', 'prof. Artur B?ben', 17),
('who was dean of Mechanical engineering and robotics of the years 1990-96?', 'prof. Andrzej Skorupa', 18),
('who was dean of Mechanical engineering and robotics of the years 1996-99, 2005-2012?', 'prof. Janusz Kowal', 19),
('who was dean of Mechanical engineering and robotics of the years 1999-2002?', 'prof. Wojciech Batko', 20),
('who was dean of Mechanical engineering and robotics of the years 2002-2005?', 'prof. W?odzimierz Kowalski', 21),
('who is the deputy dean for science of Mechanical engineering and robotics?', 'prof. dr hab. in?. Jerzy Wiciak', 22),
('how can i contact dean for science of Mechanical engineering and robotics?', 'You can contact deputy dean for science of Mechanical engineering and robotics ?by phone 12-617-36-35 or email e-mail: jerzy.wiciak@agh.edu.pl', 23),
('Who is the deputy dean of education of science of Mechanical engineering and robotics?', 'prof. dr hab. in?. Edward Michlowicz', 24),
('how can i contact dean for education of Mechanical engineering and robotics?', 'You can contact deputy dean of education of Mechanical engineering and robotics ?by phone 12-617-36-32 or email e-mail: michlowi@agh.edu.pl', 25),
('Who is the deputy dean for sudents affairs of science of Mechanical engineering and robotics?', 'dr hab. in?. S?awomir Zimowski', 26),
('how can i contact dean for students affairs of Mechanical engineering and robotics?', 'You can contact deputy dean of education of Mechanical engineering and robotics ?by phone 12-617-34-20 or email e-mail: mendrok@agh.edu.pl', 27),
('Who is the deputy dean for general affairs of science of Mechanical engineering and robotics?', 'dr in? Krzysztof Ko?odziejczyk', 28),
('how can i contact dean for general affairs of Mechanical engineering and robotics?', 'You can contact deputy dean of education of Mechanical engineering and robotics ?by phone 12-617-45-46 or email e-mail: krzysztof.kolodziejczyk@agh.edu.pl', 29);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
