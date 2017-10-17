--
-- Database: `namu_darbas`
--


--
-- Table structure for table `Authors` - authors of the books
--

CREATE TABLE IF NOT EXISTS `Authors` (
  `authorId` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET latin1 COLLATE latin1_german1_ci NOT NULL,
  PRIMARY KEY (`authorId`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `Authors`
--

INSERT INTO `Authors` (`authorId`, `name`) VALUES
(1, 'Chris Smith'),
(2, 'Steven Levithan'),
(3, ' Jan Goyvaerts'),
(4, 'Ryan Benedetti'),
(5, ' Al Anderson'),
(6, 'Clay Breshears'),
(7, 'Kevlin Henney');

--
-- Table structure for table `Books` - books with only main info
--

CREATE TABLE IF NOT EXISTS `Books` (
  `bookId` int(11) NOT NULL AUTO_INCREMENT,
  `authorId` int(11) DEFAULT NULL,
  `title` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `year` year(4) DEFAULT NULL,
  PRIMARY KEY (`bookId`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=9 ;

--
-- Dumping data for table `Books`
--

INSERT INTO `Books` (`bookId`, `authorId`, `title`, `year`) VALUES
(1, 1, 'Programming F# 3.0, 2nd Edition', 2012),
(2, 2, 'Regular Expressions Cookbook, 2nd Edition', 2012),
(3, 4, 'Head First Networking', 2009),
(4, 6, 'The Art of Concurrency', 2009),
(5, 7, '97 Things Every Programmer Should Know', 2010),
(6, NULL, 'McCullough and Berglund on Mastering Advanced Git', NULL),
(7, NULL, 'Version Control with Git, 2nd Edition', 2012),
(8, NULL, 'Learning Python, 4th Edition', 2009);

--
-- 3 užduotis a)
--

INSERT INTO `Authors` (`name`) VALUES ('John Stockton');
INSERT INTO `Authors` (`name`) VALUES ('Karl Malone');

--
-- 3 užduotis b)
--

INSERT INTO `Books` (`authorId`, `title`, `year`) VALUES ('8', 'Stocktons book', 2017);
INSERT INTO `Books` (`authorId`, `title`, `year`) VALUES ('9', 'Malone book', 2017);

--
-- 3 užduotis d)
--

UPDATE `Books` SET `authorId`='9' WHERE `bookId`=1;

--
-- 3 užduotis f)
--

DELETE FROM `Authors` WHERE `authorId`>7;

--
-- 3 užduotis g)
--

DELETE FROM `Books` WHERE `authorId` IS NULL; 

--
-- 4 užduotis a)
--

ALTER TABLE `Books` ADD COLUMN `genre` VARCHAR(20);

--
-- 4 užduotis b)
--

CREATE TABLE `Books_Authors` (`bookId` int(10), `authorId` int(10));

--
-- 4 užduotis c)
--

INSERT INTO `Books_Authors` (`bookId`, `authorId`) SELECT `bookId`, `authorId` FROM `Books`;
INSERT INTO `Books_Authors` (`bookId`, `authorId`) VALUES(2,4);
UPDATE `Books` SET `genre` = 'Developing';


--
-- 4 užduotis e)
--

ALTER TABLE `Books` MODIFY `title` VarCHAR(255) CHARACTER SET utf8;
INSERT INTO `Books` (`title`) VALUE ('Programavimo ĄBČDĘ');


