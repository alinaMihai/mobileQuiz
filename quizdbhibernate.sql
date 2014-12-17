-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 17, 2014 at 09:03 AM
-- Server version: 5.6.21
-- PHP Version: 5.5.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `quizdbhibernate`
--

-- --------------------------------------------------------

--
-- Table structure for table `answers`
--

CREATE TABLE IF NOT EXISTS `answers` (
`id` int(11) NOT NULL,
  `question_id` int(11) NOT NULL,
  `text` text COLLATE utf8_bin NOT NULL,
  `correct` bit(1) NOT NULL COMMENT '0 - incorrect; 1 - correct'
) ENGINE=InnoDB AUTO_INCREMENT=242 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `answers`
--

INSERT INTO `answers` (`id`, `question_id`, `text`, `correct`) VALUES
(1, 1, 'Home Tool Markup Language', b'0'),
(2, 1, 'Hyper Text Markup Language', b'1'),
(3, 1, 'Hyperlinks and Text Markup Language', b'0'),
(4, 2, 'Google', b'0'),
(5, 2, 'Microsoft', b'0'),
(6, 2, 'The World Wide Web Consortium', b'1'),
(7, 2, 'Mozilla', b'0'),
(8, 3, '<head>', b'0'),
(9, 3, '<heading>', b'0'),
(10, 3, '<h6>', b'0'),
(11, 3, '<h1>', b'1'),
(12, 4, '<break>', b'0'),
(13, 4, '<br>', b'1'),
(14, 4, '<lb>', b'0'),
(15, 5, '<body background="yellow">', b'0'),
(16, 5, '<background>yellow</background>', b'0'),
(17, 5, '<body style="background-color:yellow;">', b'1'),
(18, 6, '<b>', b'1'),
(19, 6, '<bold>', b'0'),
(20, 7, '<i>', b'1'),
(21, 7, '<italic>', b'0'),
(22, 8, '<a url="http://www.w3schools.com">W3Schools.com</a>', b'0'),
(23, 8, '<a href="http://www.w3schools.com">W3Schools</a>', b'1'),
(24, 8, '<a name="http://www.w3schools.com">W3Schools.com</a>', b'0'),
(25, 8, '<a>http://www.w3schools.com</a>', b'0'),
(26, 9, '<mail href="xxx@yyy">', b'0'),
(27, 9, '<mail>xxx@yyy</mail>', b'0'),
(28, 9, '<a href="mailto:xxx@yyy">', b'1'),
(29, 9, '<a href="xxx@yyy">', b'0'),
(30, 10, '<a href="url" new>', b'0'),
(31, 10, '<a href="url" target="new">', b'0'),
(32, 10, '<a href="url" target="_blank">', b'1'),
(33, 11, '<thead><body><tr>', b'0'),
(34, 11, '<table><head><tfoot>', b'0'),
(35, 11, '<table><tr><td>', b'1'),
(36, 11, '<table><tr><tt>', b'0'),
(37, 12, 'False', b'0'),
(38, 12, 'True', b'1'),
(39, 13, '<ul>', b'0'),
(40, 13, '<ol>', b'1'),
(41, 13, '<dl>', b'0'),
(42, 13, '<list>', b'0'),
(43, 14, '<ul>', b'1'),
(44, 14, '<list>', b'0'),
(45, 14, '<dl>', b'0'),
(46, 14, '<ol>', b'0'),
(47, 15, '<input type="checkbox">', b'1'),
(48, 15, '<input type="check">', b'0'),
(49, 15, '<check>', b'0'),
(50, 15, '<checkbox>', b'0'),
(51, 16, '<input type="text">', b'1'),
(52, 16, '<textfield>', b'0'),
(53, 16, '<textinput type="text">', b'0'),
(54, 16, '<input type="textfield">', b'0'),
(55, 17, '<input type="dropdown">', b'0'),
(56, 17, '<list>', b'0'),
(57, 17, '<input type="list">', b'0'),
(58, 17, '<select>', b'1'),
(59, 18, '<textarea>', b'1'),
(60, 18, '<input type="textbox">', b'0'),
(61, 18, '<input type="textarea">', b'0'),
(62, 19, '<img src="image.gif" alt="MyImage">', b'1'),
(63, 19, '<image src="image.gif" alt="MyImage">', b'0'),
(64, 19, '<img href="image.gif" alt="MyImage">', b'0'),
(65, 19, '<img alt="MyImage">image.gif</img>', b'0'),
(66, 20, '<body background="background.gif">', b'0'),
(67, 20, '<body style="background-image:url(background.gif)">', b'1'),
(68, 20, '<background img="background.gif">', b'0'),
(69, 21, 'X-Markup Language', b'0'),
(70, 21, 'Example Markup Language', b'0'),
(71, 21, 'eXtra Modern Link', b'0'),
(72, 21, 'eXtensible Markup Language', b'1'),
(73, 22, 'XML uses a DTD to describe the data', b'1'),
(74, 22, 'XML uses a description node to describe data', b'0'),
(75, 22, 'XML uses XSL to describe data', b'0'),
(76, 23, 'True', b'0'),
(77, 23, 'False', b'1'),
(78, 24, '<?xml version="1.0"?>', b'1'),
(79, 24, '<?xml version="1.0" />', b'0'),
(80, 24, '<xml version="1.0" />', b'0'),
(81, 25, 'Do The Dance', b'0'),
(82, 25, 'Direct Type Definition', b'0'),
(83, 25, 'Document Type Definition', b'1'),
(84, 25, 'Dynamic Type Definition', b'0'),
(85, 26, 'Yes', b'1'),
(86, 26, 'No', b'0'),
(87, 27, 'Yes', b'0'),
(88, 27, 'No', b'1'),
(89, 28, 'All XML elements must be lower case', b'0'),
(90, 28, 'All the statements are true', b'0'),
(91, 28, 'All XML documents must have a DTD', b'0'),
(92, 28, 'All XML elements must be properly closed', b'1'),
(93, 29, 'All the statements are true', b'1'),
(94, 29, 'XML elements must be properly nested', b'0'),
(95, 29, 'XML documents must have a root tag', b'0'),
(96, 29, 'XML tags are case sensitive', b'0'),
(97, 30, 'True', b'1'),
(98, 30, 'False', b'0'),
(99, 31, 'No', b'0'),
(100, 31, 'Yes', b'1'),
(101, 32, 'Yes', b'0'),
(102, 32, 'No', b'1'),
(103, 33, 'False', b'1'),
(104, 33, 'True ', b'0'),
(105, 34, '<h1>', b'0'),
(106, 34, 'All 3 names are incorrect', b'0'),
(107, 34, '<Note>', b'0'),
(108, 34, '<1dollar>', b'1'),
(109, 35, 'All 3 names are incorrect', b'0'),
(110, 35, '<age>', b'0'),
(111, 35, '<first name>', b'1'),
(112, 35, '<NAME>', b'0'),
(113, 36, '<7eleven>', b'0'),
(114, 36, '<phone number>', b'0'),
(115, 36, '<xmldocument>', b'0'),
(116, 36, 'All 3 names are incorrect', b'1'),
(117, 37, 'True', b'1'),
(118, 37, 'False', b'0'),
(119, 38, 'eXtensible Stylesheet Language', b'1'),
(120, 38, 'eXtra Style Language', b'0'),
(121, 38, 'eXtensible Style Listing', b'0'),
(122, 38, 'eXpandable Style Language', b'0'),
(123, 39, '<link type="text/xsl" href="mystyle.xsl" />', b'0'),
(124, 39, '<?xml-stylesheet type="text/xsl" href="mystyle.xsl" ?>', b'1'),
(125, 39, '<stylesheet type="text/xsl" href="mystyle.xsl" />', b'0'),
(126, 40, '<![CDATA[ Text to be ignored ]]>', b'1'),
(127, 40, '<CDATA> Text to be ignored </CDATA>', b'0'),
(128, 40, '<PCDATA> Text to be ignored </PCDATA>', b'0'),
(129, 40, '<xml:CDATA[ Text to be ignored ]>', b'0'),
(130, 41, 'Structured Query Language', b'1'),
(131, 41, 'Structured Question Language', b'0'),
(132, 41, 'Strong Question Language', b'0'),
(133, 42, 'SELECT', b'1'),
(134, 42, 'EXTRACT', b'0'),
(135, 42, 'OPEN', b'0'),
(136, 42, 'GET', b'0'),
(137, 43, 'MODIFY', b'0'),
(138, 43, 'SAVE', b'0'),
(139, 43, 'SAVE AS', b'0'),
(140, 43, 'UPDATE', b'1'),
(141, 44, 'REMOVE', b'0'),
(142, 44, 'DELETE', b'1'),
(143, 44, 'COLLAPSE', b'0'),
(144, 45, 'INSERT INTO', b'1'),
(145, 45, 'ADD RECORD', b'0'),
(146, 45, 'ADD NEW', b'0'),
(147, 45, 'INSERT NEW', b'0'),
(148, 46, 'EXTRACT FirstName FROM Persons', b'0'),
(149, 46, 'SELECT FirstName FROM Persons', b'1'),
(150, 46, 'SELECT Persons.FirstName', b'0'),
(151, 47, 'SELECT [all] FROM Persons', b'0'),
(152, 47, 'SELECT *.Persons', b'0'),
(153, 47, 'SELECT Persons', b'0'),
(154, 47, 'SELECT * FROM Persons', b'1'),
(155, 48, 'SELECT [all] FROM Persons WHERE FirstName=''Peter''', b'0'),
(156, 48, 'SELECT * FROM Persons WHERE FirstName<>''Peter''', b'0'),
(157, 48, 'SELECT * FROM Persons WHERE FirstName=''Peter''', b'1'),
(158, 48, 'SELECT [all] FROM Persons WHERE FirstName LIKE ''Peter''', b'0'),
(159, 49, 'SELECT * FROM Persons WHERE FirstName LIKE ''%a''', b'0'),
(160, 49, 'SELECT * FROM Persons WHERE FirstName LIKE ''a%''', b'1'),
(161, 49, 'SELECT * FROM Persons WHERE FirstName=''%a%''', b'0'),
(162, 49, 'SELECT * FROM Persons WHERE FirstName=''a''', b'0'),
(163, 50, 'False', b'0'),
(164, 50, 'True', b'1'),
(165, 51, 'SELECT * FROM Persons WHERE FirstName<>''Peter'' AND LastName<>''Jackson''', b'0'),
(166, 51, 'SELECT FirstName=''Peter'', LastName=''Jackson'' FROM Persons', b'0'),
(167, 51, 'SELECT * FROM Persons WHERE FirstName=''Peter'' AND LastName=''Jackson''', b'1'),
(168, 52, 'SELECT LastName>''Hansen'' AND LastName<''Pettersen'' FROM Persons', b'0'),
(169, 52, 'SELECT * FROM Persons WHERE LastName>''Hansen'' AND LastName<''Pettersen''', b'0'),
(170, 52, 'SELECT * FROM Persons WHERE LastName BETWEEN ''Hansen'' AND ''Pettersen''', b'1'),
(171, 53, 'SELECT DISTINCT', b'1'),
(172, 53, 'SELECT DIFFERENT', b'0'),
(173, 53, 'SELECT UNIQUE', b'0'),
(174, 54, 'SORT BY', b'0'),
(175, 54, 'ORDER BY', b'1'),
(176, 54, 'ORDER', b'0'),
(177, 54, 'SORT', b'0'),
(178, 55, 'SELECT * FROM Persons SORT BY ''FirstName'' DESC', b'0'),
(179, 55, 'SELECT * FROM Persons ORDER BY FirstName DESC', b'1'),
(180, 55, 'SELECT * FROM Persons SORT ''FirstName'' DESC', b'0'),
(181, 55, 'SELECT * FROM Persons ORDER FirstName DESC', b'0'),
(182, 56, 'INSERT INTO Persons VALUES (''Jimmy'', ''Jackson'')', b'1'),
(183, 56, 'INSERT VALUES (''Jimmy'', ''Jackson'') INTO Persons', b'0'),
(184, 56, 'INSERT (''Jimmy'', ''Jackson'') INTO Persons', b'0'),
(185, 57, 'INSERT INTO Persons (''Olsen'') INTO LastName', b'0'),
(186, 57, 'INSERT (''Olsen'') INTO Persons (LastName)', b'0'),
(187, 57, 'INSERT INTO Persons (LastName) VALUES (''Olsen'')', b'1'),
(188, 58, 'UPDATE Persons SET LastName=''Hansen'' INTO LastName=''Nilsen''', b'0'),
(189, 58, 'MODIFY Persons SET LastName=''Nilsen'' WHERE LastName=''Hansen''', b'0'),
(190, 58, 'MODIFY Persons SET LastName=''Hansen'' INTO LastName=''Nilsen', b'0'),
(191, 58, 'UPDATE Persons SET LastName=''Nilsen'' WHERE LastName=''Hansen''', b'1'),
(192, 59, 'DELETE ROW FirstName=''Peter'' FROM Persons', b'0'),
(193, 59, 'DELETE FROM Persons WHERE FirstName = ''Peter''', b'1'),
(194, 59, 'DELETE FirstName=''Peter'' FROM Persons', b'0'),
(195, 60, 'SELECT COUNT(*) FROM Persons', b'1'),
(196, 60, 'SELECT COLUMNS() FROM Persons', b'0'),
(197, 60, 'SELECT COUNT() FROM Persons', b'0'),
(198, 60, 'SELECT COLUMNS(*) FROM Persons', b'0'),
(206, 96, 'a', b'1'),
(207, 96, 'aff', b'0'),
(208, 96, 'adf', b'0'),
(209, 97, 'jlksa', b'1'),
(210, 97, 'jlsa', b'1'),
(211, 97, 'jlkas', b'0'),
(216, 98, 'true', b'1'),
(217, 98, 'false', b'0'),
(218, 99, 'Is this a "well formed" XML document?  <?xml version="1.0"?> <note> <to age=29>Tove</to> <from>Jani</from> </note>', b'1'),
(219, 99, 'no', b'0'),
(220, 102, 'sjalk', b'0'),
(221, 102, 'sajkl', b'0'),
(222, 102, 'sklj', b'0'),
(223, 102, 'aslkj', b'0'),
(224, 104, 'asjl', b'0'),
(225, 104, 'asljk', b'0'),
(226, 104, 'salkj', b'1'),
(227, 104, 'aslkj', b'0'),
(228, 107, 'asjlkzç;''vzsp[a[''z;xá[', b'0'),
(229, 107, 'asp[a[l;sd;', b'1'),
(230, 107, 'jl M', b'0'),
(231, 108, 'OIDAO', b'1'),
(232, 108, 'AOIDAIO', b'0'),
(233, 109, 'ljask', b'1'),
(234, 109, 'ljasljdk', b'1'),
(235, 109, 'ljkaslj', b'0'),
(236, 109, 'jlksalkjl', b'0'),
(237, 110, 'jlasalsjk', b'1'),
(238, 110, 'jlkasPOPKP', b'1'),
(239, 110, 'LKJASJL', b'0'),
(240, 111, 'a', b'1'),
(241, 111, 'as', b'0');

-- --------------------------------------------------------

--
-- Table structure for table `candidates`
--

CREATE TABLE IF NOT EXISTS `candidates` (
`id` int(11) NOT NULL,
  `name` varchar(250) COLLATE utf8_bin NOT NULL,
  `username` varchar(250) COLLATE utf8_bin NOT NULL,
  `password` char(128) COLLATE utf8_bin NOT NULL COMMENT 'SHA-3 512 - hex encoding',
  `role` int(1) NOT NULL DEFAULT '0' COMMENT '1: admin,0: candidate'
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `candidates`
--

INSERT INTO `candidates` (`id`, `name`, `username`, `password`, `role`) VALUES
(1, 'Alina Mihai', 'ali', '098f6bcd4621d373cade4e832627b4f6', 0),
(2, 'admin', 'admin', '21232f297a57a5a743894a0e4a801fc3', 1),
(3, 'Popescu Ion', 'popescu.ion', 'ad0234829205b9033196ba818f7a872b', 0),
(4, 'ali2', 'ali2', '098f6bcd4621d373cade4e832627b4f6', 0),
(5, 'test', 'test', '098f6bcd4621d373cade4e832627b4f6', 0),
(6, 'AlinaTests', 'alina', '098f6bcd4621d373cade4e832627b4f6', 0),
(7, 'a', 'a', '0cc175b9c0f1b6a831c399e269772661', 0),
(8, 'testCandidate', 'test', '098f6bcd4621d373cade4e832627b4f6', 0),
(9, 'test2', 't2', '098f6bcd4621d373cade4e832627b4f6', 0),
(10, 'test3', 't3', '098f6bcd4621d373cade4e832627b4f6', 0),
(11, 'xml', 'test4', '098f6bcd4621d373cade4e832627b4f6', 0);

-- --------------------------------------------------------

--
-- Table structure for table `candidate_answers`
--

CREATE TABLE IF NOT EXISTS `candidate_answers` (
`id` int(11) NOT NULL,
  `test_id` int(11) NOT NULL,
  `question_id` int(11) NOT NULL,
  `answer_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE IF NOT EXISTS `questions` (
`id` int(11) NOT NULL,
  `quiz_id` int(11) NOT NULL,
  `title` varchar(250) COLLATE utf8_bin NOT NULL,
  `text` text COLLATE utf8_bin NOT NULL,
  `ordered` bit(1) NOT NULL COMMENT '0 - answers are not ordered; 1- answers are ordered asc by key'
) ENGINE=InnoDB AUTO_INCREMENT=112 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`id`, `quiz_id`, `title`, `text`, `ordered`) VALUES
(1, 1, 'Question 1', 'What does HTML stand for?', b'0'),
(2, 1, 'Question 2', 'Who is making the Web standards?', b'0'),
(3, 1, 'Question 3', 'Choose the correct HTML tag for the largest heading', b'0'),
(4, 1, 'Question 4', 'What is the correct HTML tag for inserting a line break?', b'0'),
(5, 1, 'Question 5', 'What is the preferred way for adding a background color in HTML?', b'0'),
(6, 1, 'Question 6', 'Choose the correct HTML tag to make a text bold', b'0'),
(7, 1, 'Question 7', 'Choose the correct HTML tag to make a text italic', b'0'),
(8, 1, 'Question 8', 'What is the correct HTML for creating a hyperlink?', b'0'),
(9, 1, 'Question 9', 'How can you create an e-mail link?', b'0'),
(10, 1, 'Question 10', 'How can you open a link in a new tab/browser window?', b'0'),
(11, 1, 'Question 11', 'Which of these tags are all <table> tags?', b'0'),
(12, 1, 'Question 12', 'In HTML, inline elements are normally displayed without starting a new line.', b'0'),
(13, 1, 'Question 13', 'How can you make a numbered list?', b'0'),
(14, 1, 'Question 14', 'How can you make a bulleted list?', b'0'),
(15, 1, 'Question 15', 'What is the correct HTML for making a checkbox?', b'0'),
(16, 1, 'Question 16', 'What is the correct HTML for making a text input field?', b'0'),
(17, 1, 'Question 17', 'What is the correct HTML for making a drop-down list?', b'0'),
(18, 1, 'Question 18', 'What is the correct HTML for making a text area?', b'0'),
(19, 1, 'Question 19', 'What is the correct HTML for inserting an image?', b'0'),
(20, 1, 'Question 20', 'What is the correct HTML for inserting a background image?', b'0'),
(21, 2, 'Question 1', 'What does XML stand for?', b'0'),
(22, 2, 'Question 2', 'There is a way of describing XML data, how?', b'0'),
(23, 2, 'Question 3', 'XML''s goal is to replace HTML', b'0'),
(24, 2, 'Question 4', 'What is the correct syntax of the declaration which defines the XML version?', b'0'),
(25, 2, 'Question 5', 'What does DTD stand for?', b'0'),
(26, 2, 'Question 6', 'Is this a "well formed" XML document?\r\n\r\n<?xml version="1.0"?>\r\n<note>\r\n<to>Tove</to>\r\n<from>Jani</from>\r\n<heading>Reminder</heading>\r\n<body>Don''t forget me this weekend!</body>\r\n</note>', b'0'),
(27, 2, 'Question 7', 'Is this a "well formed" XML document?\n\n<?xml version="1.0"?>\n<to>Tove</to>\n<from>Jani</from>\n<heading>Reminder</heading>\n<body>Don''t forget me this weekend!</body>', b'0'),
(28, 2, 'Question 8', 'Which statement is true?', b'0'),
(29, 2, 'Question 9', 'Which statement is true?', b'0'),
(30, 2, 'Question 10', 'XML preserves white spaces.', b'0'),
(31, 2, 'Question 11', 'Is this a "well formed" XML document?\r\n\r\n<?xml version="1.0"?>\r\n<note>\r\n<to age="29">Tove</to>\r\n<from>Jani</from>\r\n</note>', b'0'),
(32, 2, 'Question 12', 'Is this a "well formed" XML document?\r\n\r\n<?xml version="1.0"?>\r\n<note>\r\n<to age=29>Tove</to>\r\n<from>Jani</from>\r\n</note>', b'0'),
(33, 2, 'Question 13', 'XML elements cannot be empty', b'0'),
(34, 2, 'Question 14', 'Which is not a correct name for an XML element?', b'0'),
(35, 2, 'Question 15', 'Which is not a correct name for an XML element?', b'0'),
(36, 2, 'Question 16', 'Which is not a correct name for an XML element?', b'0'),
(37, 2, 'Question 17', 'XML attribute values must always be enclosed in quotes.', b'0'),
(38, 2, 'Question 18', 'What does XSL stand for?', b'0'),
(39, 2, 'Question 19', 'What is a correct way of referring to a stylesheet called "mystyle.xsl" ?', b'0'),
(40, 2, 'Question 20', 'For the XML parser to ignore a certain section of your XML document, which syntax is correct?', b'0'),
(41, 3, 'Question 1', 'What does SQL stand for?', b'0'),
(42, 3, 'Question 2', 'Which SQL statement is used to extract data from a database?', b'0'),
(43, 3, 'Question 3', 'Which SQL statement is used to update data in a database?', b'0'),
(44, 3, 'Question 4', 'Which SQL statement is used to delete data from a database?', b'0'),
(45, 3, 'Question 5', 'Which SQL statement is used to insert new data in a database?', b'0'),
(46, 3, 'Question 6', 'With SQL, how do you select a column named "FirstName" from a table named "Persons"?', b'0'),
(47, 3, 'Question 7', 'With SQL, how do you select all the columns from a table named "Persons"?', b'0'),
(48, 3, 'Question 8', 'With SQL, how do you select all the records from a table named "Persons" where the value of the column "FirstName" is "Peter"?', b'0'),
(49, 3, 'Question 9', 'With SQL, how do you select all the records from a table named "Persons" where the value of the column "FirstName" starts with an "a"?', b'0'),
(50, 3, 'Question 10', 'The OR operator displays a record if ANY conditions listed are true. The AND operator displays a record if ALL of the conditions listed are true', b'0'),
(51, 3, 'Question 11', 'With SQL, how do you select all the records from a table named "Persons" where the "FirstName" is "Peter" and the "LastName" is "Jackson"?', b'0'),
(52, 3, 'Question 12', 'With SQL, how do you select all the records from a table named "Persons" where the "LastName" is alphabetically between (and including) "Hansen" and "Pettersen"?', b'0'),
(53, 3, 'Question 13', 'Which SQL statement is used to return only different values?', b'0'),
(54, 3, 'Question 14', 'Which SQL keyword is used to sort the result-set?', b'0'),
(55, 3, 'Question 15', 'With SQL, how can you return all the records from a table named "Persons" sorted descending by "FirstName"?', b'0'),
(56, 3, 'Question 16', 'With SQL, how can you insert a new record into the "Persons" table?', b'0'),
(57, 3, 'Question 17', 'With SQL, how can you insert "Olsen" as the "LastName" in the "Persons" table?', b'0'),
(58, 3, 'Question 18', 'How can you change "Hansen" into "Nilsen" in the "LastName" column in the Persons table?', b'0'),
(59, 3, 'Question 19', 'With SQL, how can you delete the records where the "FirstName" is "Peter" in the Persons Table?', b'0'),
(60, 3, 'Question 20', 'With SQL, how can you return the number of records in the "Persons" table?', b'0'),
(96, 66, 'We', 'eew', b'1'),
(97, 67, 'ajskl', 'jlksdajlk', b'1'),
(98, 71, 'Q3', 'Is this a "well formed" XML document?\r\n\r\n<?xml version="1.0"?>\r\n<note>\r\n<to age=29>Tove</to>\r\n<from>Jani</from>\r\n</note>', b'1'),
(99, 71, 'Q4', 'Is this a "well formed" XML document?\r\n\r\n<?xml version="1.0"?>\r\n<note>\r\n<to age=29>Tove</to>\r\n<from>Jani</from>\r\n</note>', b'1'),
(100, 71, 'Q5', 'something to say', b'1'),
(101, 72, 'Question1', 'Some question', b'1'),
(102, 73, 'tre', 'sff', b'0'),
(103, 73, 'sajlk', 'sljk', b'0'),
(104, 73, 'sajlk', 'sljk', b'0'),
(105, 74, 'sjal', 'slj', b'1'),
(106, 74, 'sjal', 'slj', b'1'),
(107, 75, 'Q1', '<>aslkd< b><jhtml?l;s'':;,,l;klop|zpcopsa1230)9*@!""', b'1'),
(108, 75, 'Q2', 'DSIOJO', b'0'),
(109, 76, 'qE', 'SDF', b'0'),
(110, 76, 'Q23', 'dsjl', b'0'),
(111, 77, 'q1', 'd', b'0');

-- --------------------------------------------------------

--
-- Table structure for table `quizes`
--

CREATE TABLE IF NOT EXISTS `quizes` (
`id` int(11) NOT NULL,
  `name` varchar(250) COLLATE utf8_bin NOT NULL,
  `ordered` bit(1) NOT NULL DEFAULT b'0' COMMENT '0 - randomly ordered questions; 1 - ordered questions (according to the questions keys)',
  `time_limit` int(11) NOT NULL DEFAULT '0' COMMENT '0 - no time limit',
  `type` bit(1) NOT NULL DEFAULT b'0' COMMENT '0 - 1 and only 1 correct answer; 1 - 1 or more correct answers',
  `comments` text COLLATE utf8_bin,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_date` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=79 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `quizes`
--

INSERT INTO `quizes` (`id`, `name`, `ordered`, `time_limit`, `type`, `comments`, `created_date`, `modified_date`) VALUES
(1, 'W3Schools HTML Quiz', b'0', 10, b'0', 'http://www.w3schools.com/quiztest/quiztest.asp?qtest=HTML', '2014-10-15 19:44:37', '2014-10-28 16:56:01'),
(2, 'W3Schools XML Quiz', b'0', 10, b'0', 'http://www.w3schools.com/quiztest/quiztest.asp?qtest=XML', '2014-10-15 19:44:37', NULL),
(3, 'W3Schools SQL Quiz', b'0', 20, b'0', 'http://www.w3schools.com/quiztest/quiztest.asp?qtest=SQL', '2014-10-15 19:45:28', NULL),
(66, 'q1', b'1', 12, b'0', 'w', '2014-10-24 08:18:29', NULL),
(67, 'test', b'1', 12, b'0', 'sjl', '2014-10-25 06:07:07', NULL),
(70, 'W3Schools HTML', b'1', 6, b'0', 'link', '2014-10-25 06:52:09', NULL),
(71, 'XML', b'1', 6, b'0', 'link', '2014-10-25 08:21:51', NULL),
(72, 'testQuiz', b'1', 12, b'0', 'some', '2014-10-25 09:23:04', NULL),
(73, 'testQuiz2', b'1', 6, b'0', 'so', '2014-10-25 09:25:50', NULL),
(74, 'sajdlk', b'1', 6, b'1', 'asjl', '2014-10-25 09:31:43', NULL),
(75, 'Quiz <hiotm>', b'1', 12, b'0', '', '2014-10-25 15:46:41', NULL),
(76, 'q2', b'1', 6, b'1', '', '2014-10-25 15:48:15', NULL),
(77, 'quizToUpdate', b'1', 12, b'0', 's', '2014-10-25 15:58:51', NULL),
(78, 'quizToUpdate2', b'1', 23, b'0', '', '2014-10-25 16:00:18', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tests`
--

CREATE TABLE IF NOT EXISTS `tests` (
`id` int(11) NOT NULL,
  `candidate_id` int(11) NOT NULL,
  `quiz_id` int(11) NOT NULL,
  `start_time` timestamp NULL DEFAULT NULL,
  `end_time` timestamp NULL DEFAULT NULL,
  `score` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=207 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `tests`
--

INSERT INTO `tests` (`id`, `candidate_id`, `quiz_id`, `start_time`, `end_time`, `score`) VALUES
(190, 1, 1, '2014-12-14 10:18:26', '2014-12-13 22:00:00', 10),
(198, 1, 1, '2014-12-14 12:33:29', '2014-12-14 12:34:06', 80),
(199, 1, 2, '2014-12-15 09:18:32', NULL, NULL),
(200, 1, 3, '2014-12-15 09:21:51', NULL, NULL),
(201, 1, 1, '2014-12-15 09:26:16', NULL, NULL),
(202, 1, 2, '2014-12-15 09:32:27', NULL, NULL),
(203, 1, 3, '2014-12-15 09:39:26', NULL, NULL),
(204, 1, 1, '2014-12-15 09:45:24', NULL, NULL),
(205, 1, 2, '2014-12-15 09:52:38', '2014-12-15 09:53:04', 35),
(206, 1, 3, '2014-12-15 10:38:46', '2014-12-15 10:40:59', 90);

-- --------------------------------------------------------

--
-- Table structure for table `user_roles`
--

CREATE TABLE IF NOT EXISTS `user_roles` (
  `candidate_id` int(15) NOT NULL,
  `username` varchar(15) NOT NULL,
  `role_name` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_roles`
--

INSERT INTO `user_roles` (`candidate_id`, `username`, `role_name`) VALUES
(1, 'alina', 'admin'),
(1, 'alina', 'user');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `answers`
--
ALTER TABLE `answers`
 ADD PRIMARY KEY (`id`), ADD KEY `question_id` (`question_id`);

--
-- Indexes for table `candidates`
--
ALTER TABLE `candidates`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `candidate_answers`
--
ALTER TABLE `candidate_answers`
 ADD PRIMARY KEY (`id`), ADD KEY `question_id` (`question_id`), ADD KEY `answer_id` (`answer_id`), ADD KEY `test_id` (`test_id`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
 ADD PRIMARY KEY (`id`), ADD KEY `quiz_id` (`quiz_id`);

--
-- Indexes for table `quizes`
--
ALTER TABLE `quizes`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `tests`
--
ALTER TABLE `tests`
 ADD PRIMARY KEY (`id`), ADD KEY `quiz_id` (`quiz_id`), ADD KEY `candidate_id` (`candidate_id`);

--
-- Indexes for table `user_roles`
--
ALTER TABLE `user_roles`
 ADD PRIMARY KEY (`username`,`role_name`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `answers`
--
ALTER TABLE `answers`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=242;
--
-- AUTO_INCREMENT for table `candidates`
--
ALTER TABLE `candidates`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `candidate_answers`
--
ALTER TABLE `candidate_answers`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=112;
--
-- AUTO_INCREMENT for table `quizes`
--
ALTER TABLE `quizes`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=79;
--
-- AUTO_INCREMENT for table `tests`
--
ALTER TABLE `tests`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=207;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `answers`
--
ALTER TABLE `answers`
ADD CONSTRAINT `Answer_FK1` FOREIGN KEY (`question_id`) REFERENCES `questions` (`id`);

--
-- Constraints for table `candidate_answers`
--
ALTER TABLE `candidate_answers`
ADD CONSTRAINT `CA_FK1` FOREIGN KEY (`test_id`) REFERENCES `tests` (`id`),
ADD CONSTRAINT `CA_FK2` FOREIGN KEY (`question_id`) REFERENCES `questions` (`id`),
ADD CONSTRAINT `CA_FK3` FOREIGN KEY (`answer_id`) REFERENCES `answers` (`id`);

--
-- Constraints for table `questions`
--
ALTER TABLE `questions`
ADD CONSTRAINT `Question_FK1` FOREIGN KEY (`quiz_id`) REFERENCES `quizes` (`id`);

--
-- Constraints for table `tests`
--
ALTER TABLE `tests`
ADD CONSTRAINT `Test_FK1` FOREIGN KEY (`candidate_id`) REFERENCES `candidates` (`id`),
ADD CONSTRAINT `Test_FK2` FOREIGN KEY (`quiz_id`) REFERENCES `quizes` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
