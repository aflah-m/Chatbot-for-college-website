-- phpMyAdmin SQL Dump
-- version 4.1.12
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 09, 2024 at 02:31 PM
-- Server version: 5.6.16
-- PHP Version: 5.5.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `college_chatbot`
--

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE IF NOT EXISTS `courses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cate_id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=14 ;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `cate_id`, `name`) VALUES
(1, '1', 'B.A. Economics'),
(2, '1', 'B.A. English'),
(3, '1', 'B B A'),
(4, '1', 'B C A'),
(5, '2', 'M.Com Finance & Taxation'),
(6, '2', 'M.Sc Microbiology'),
(7, '2', 'M.Sc Biotechnology'),
(8, '2', 'M.Sc Computer Science'),
(9, '3', 'Certified Management Accountant (CMA-USA)'),
(10, '3', 'Medical Coding'),
(11, '3', 'Artificial Intelligence & Machine Learning'),
(12, '3', 'Cloud Computing & Cyber Security'),
(13, '3', 'Logistics & Supply Chain Management');

-- --------------------------------------------------------

--
-- Table structure for table `course_category`
--

CREATE TABLE IF NOT EXISTS `course_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `course_category`
--

INSERT INTO `course_category` (`id`, `name`) VALUES
(1, 'under graduate courses'),
(2, 'post graduate courses'),
(3, 'Add-on Programs');

-- --------------------------------------------------------

--
-- Table structure for table `hidden_layer`
--

CREATE TABLE IF NOT EXISTS `hidden_layer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `word1` varchar(100) NOT NULL,
  `word2` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=27 ;

--
-- Dumping data for table `hidden_layer`
--

INSERT INTO `hidden_layer` (`id`, `word1`, `word2`) VALUES
(1, 'create ', 'start'),
(2, 'open ', 'start'),
(4, 'begin', 'start'),
(5, 'move', 'transfer'),
(6, 'change', 'transfer convert'),
(7, 'continue ', 'maintain'),
(8, 'period', 'long time'),
(9, 'time', 'much long'),
(10, 'least ', 'minimum'),
(11, 'multiple', 'more than one'),
(12, 'age', 'old'),
(13, 'connect', 'link'),
(14, 'merge', 'link'),
(15, 'join', 'link'),
(16, 'highest', 'maximum'),
(17, 'remove ', 'cancel'),
(18, 'get', 'avail'),
(19, 'take', 'avail'),
(20, 'give', 'offer'),
(21, 'stop', 'block'),
(22, 'undelivere', 'not recieve'),
(23, 'raise', 'increase'),
(24, 'delete  ', 'cancel'),
(25, 'how long', 'period'),
(26, 'select', 'choose');

-- --------------------------------------------------------

--
-- Table structure for table `msg`
--

CREATE TABLE IF NOT EXISTS `msg` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `msg` text NOT NULL,
  `datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `msg`
--

INSERT INTO `msg` (`id`, `msg`, `datetime`) VALUES
(1, 'hello\n', '2018-03-24 12:03:27');

-- --------------------------------------------------------

--
-- Table structure for table `msgt`
--

CREATE TABLE IF NOT EXISTS `msgt` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `msgI` text NOT NULL,
  `msgO` text NOT NULL,
  `weight` int(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=157 ;

--
-- Dumping data for table `msgt`
--

INSERT INTO `msgt` (`id`, `msgI`, `msgO`, `weight`) VALUES
(1, 'hi', 'Hello, how can I help you today?', 0),
(2, 'hello', 'Hi, how can i help you?', 0),
(3, 'hei', 'Hello, how can I help you?', 0),
(4, 'are you do', 'Couldnt be better! How can I help you?\r\n\r\n', 0),
(5, 'What programs does the college offer?\n', 'The college provides variety of courses across different disciplines of Engineering. Students can explore programs in engineering.', 0),
(147, 'How do I apply to your college?', 'To apply, Fill the admission form on our website and follow the instructions provided. Be sure to check the application deadlines for your desired program.', 1),
(148, 'What are the admission requirements?\r\n', 'Admission requirements vary by stream .Generally, we consider factors such as academic performance, standardized test scores, and extracurricular activities.', 0),
(149, 'What is the tuition fee for MCA?', 'Tuition fees vary depending on the program', 0),
(150, 'Do you offer scholarships?', 'Yes, we offer a variety of scholarships.', 0),
(151, 'What campus facilities are available?', 'Our campus features state-of-the-art facilities including libraries, laboratories, sports complexes, student centers, and more.', 0),
(152, 'Is there on-campus housing available?', 'Yes, we offer on-campus housing for students. You can find information about our residence halls, amenities,Rate..', 0),
(153, 'What student support services are available?', ' We offer a range of student support services including academic advising, counseling, tutoring, career services, and disability support.', 0),
(154, 'Can I transfer credits from another institution?', 'Yes, we accept transfer credits from accredited institutions.', 0),
(155, 'What extracurricular activities are offered?\r\n', 'Sports,arts,clubs,hackathons....\r\n', 0),
(156, 'Where is the college located?', 'Nellikuzhy  P.O,kothamangalam \r\nErnakulam dist. Kerala-686691', 0);

-- --------------------------------------------------------

--
-- Table structure for table `obj`
--

CREATE TABLE IF NOT EXISTS `obj` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `obj` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `obj`
--

INSERT INTO `obj` (`id`, `obj`) VALUES
(1, 'life'),
(2, 'aadhar card'),
(3, 'account');

-- --------------------------------------------------------

--
-- Table structure for table `stopwords`
--

CREATE TABLE IF NOT EXISTS `stopwords` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `swords` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=15 ;

--
-- Dumping data for table `stopwords`
--

INSERT INTO `stopwords` (`id`, `swords`) VALUES
(1, 'the'),
(2, 'is'),
(3, 'a'),
(4, 'of'),
(6, 'an'),
(7, 'at'),
(8, 'be'),
(9, 'by'),
(10, 'how'),
(11, 'can'),
(12, 'i'),
(13, 'what'),
(14, 'if');

-- --------------------------------------------------------

--
-- Table structure for table `team`
--

CREATE TABLE IF NOT EXISTS `team` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `designation` varchar(255) NOT NULL,
  `image` tinytext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `team`
--

INSERT INTO `team` (`id`, `name`, `designation`, `image`) VALUES
(1, 'T V Jacob', 'HOD', '2024-04-20-01-14-57team-1.jpg'),
(2, 'DR.N V Eldho', 'Asst. Professor', '2024-04-20-01-15-07team-2.jpg'),
(3, 'Shaniya Khader', 'Asst. Professor', '2024-04-20-01-15-18team-3.jpg'),
(4, 'Timya Francis', 'Asst. Professor', '2024-04-20-01-15-40team-4.jpg'),
(5, 'Neethu P Varghese', 'Asst. Professor', '2024-04-20-01-14-57team-1.jpg');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
