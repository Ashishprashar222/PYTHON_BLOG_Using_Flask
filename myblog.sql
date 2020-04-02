-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Apr 02, 2020 at 03:45 AM
-- Server version: 5.7.24
-- PHP Version: 7.2.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `myblog`
--

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

DROP TABLE IF EXISTS `contacts`;
CREATE TABLE IF NOT EXISTS `contacts` (
  `sno` int(20) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `phone_num` varchar(50) NOT NULL,
  `msg` text NOT NULL,
  `date` datetime DEFAULT CURRENT_TIMESTAMP,
  `email` varchar(50) NOT NULL,
  PRIMARY KEY (`sno`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`sno`, `name`, `phone_num`, `msg`, `date`, `email`) VALUES
(1, 'ashish', '9430233354', 'first post', '2020-03-12 15:45:04', 'ashishprashar37@gmail.com'),
(2, 'Suresh', '9465326562', 'tu mahan h', '2020-03-12 17:20:59', 'sureshdhaka567@gmail.com'),
(3, 'PRASHANT', '8804673335', 'ha ha  hehe hu hu', '2020-03-12 18:02:34', 'prashant37@gmail.com'),
(4, 'ankita', '7679726649', 'how r you now?', '2020-03-19 13:34:34', 'ankitagorai123@gmail.com'),
(5, 'ankita', '7679726649', 'how r you now?', '2020-03-19 13:40:36', 'ankitagorai123@gmail.com'),
(6, 'ankita', '7679726649', 'how r you now?', '2020-03-19 13:42:28', 'ankitagorai123@gmail.com'),
(7, 'Ashish', '9465326562', 'hjgjhghjgj', '2020-03-19 13:44:32', 'sonalsarkar37@gmail.com'),
(8, 'prashant', '6212461313', 'i am good.', '2020-03-19 13:55:48', 'prashant123@gmail.com'),
(9, 'Ashish Kumar', '9430233354', 'i am the best', '2020-03-19 14:06:33', 'ashishprashar37@gmail.com'),
(10, 'aparajita', '7679726649', 'hiii', '2020-03-19 14:35:50', 'aparjita123@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
CREATE TABLE IF NOT EXISTS `posts` (
  `sno` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL,
  `tagline` varchar(50) NOT NULL,
  `slug` varchar(30) NOT NULL,
  `content` text NOT NULL,
  `img_file` varchar(12) NOT NULL,
  `date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`sno`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`sno`, `title`, `tagline`, `slug`, `content`, `img_file`, `date`) VALUES
(1, 'all about corona', 'COVID19', 'First-post', 'Corona viruses are a group of related viruses that cause diseases in mammals and birds. In humans, coronaviruses cause respiratory tract infections that can be mild, such as some cases of the common cold (among other possible causes, predominantly rhinoviruses), and others that can be lethal, such as SARS, MERS, and COVID-19. Symptoms in other species vary: in chickens, they cause an upper respiratory tract disease, while in cows and pigs they cause diarrhea. There are yet to be vaccines or antiviral drugs to prevent or treat human coronavirus infections.>', 'post-bg.jpg\"', '2020-04-01 15:34:55'),
(2, 'this is all about hanta virus', 'virus', 'second-post', 'Hantaviruses are a family of viruses spread mainly by rodents and can cause varied disease syndromes in people worldwide.  Infection with any hantavirus can produce hantavirus disease in people. Hantaviruses in the Americas are known as “New World” hantaviruses and may cause hantavirus pulmonary syndrome (HPS). Other hantaviruses, known as “Old World” hantaviruses, are found mostly in Europe and Asia and may cause hemorrhagic fever with renal syndrome (HFRS).\r\n\r\nEach hantavirus serotype has a specific rodent host species and is spread to people via aerosolized virus that is shed in urine, feces, and saliva, and less frequently by a bite from an infected host. The most important hantavirus in the United States that can cause HPS is the Sin Nombre virus, spread by the deer mouse.', 'post-bg.jpg', '2020-03-28 23:26:03'),
(3, 'Haryana Launches Free Digital Learning App.', 'Haryana', 'Third-post', 'Haryana Board of School Education has launched digital learning app, Bright Tutee, for students of class 9 and 10. The app will be free for the students till July 31, 2020. It covers Maths, Science, English, Hindi and Social Science subjects and provides comprehensive learning, assessment and exam preparation material in three languages: Hindi, English and English-Hindi (bilingual).\r\n\"All the registered institutions are hereby informed that in present circumstances of Corona virus when all the schools are closed and with the introduction of technology in education, the Board recommends its institutions to advise their students to use the digital learning content of Bright Tutee app for students studying in classes 9 and 10,\" the Board has said in a notification.', 'home-bg.jpg', '2020-03-28 23:46:13'),
(4, 'Python-Abstract class', 'python', 'fourth-post', 'Abstract classes are classes that contain one or more abstract methods. An abstract method is a method that is declared, but contains no implementation. Abstract classes cannot be instantiated, and require subclasses to provide implementations for the abstract methods.\r\n\r\nYou can see this in the following examples:\r\n\r\nclass AbstractClass:\r\n    \r\n    def do_something(self):\r\n        pass\r\n    \r\n    \r\nclass B(AbstractClass):\r\n    pass\r\n\r\na = AbstractClass()\r\nb = B()', '', '2020-03-28 23:49:21'),
(5, 'Hello World', 'print statement', 'post', 'Cont', 'xyz.png', '2020-04-01 14:33:17');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
