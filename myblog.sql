-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 27, 2019 at 11:28 PM
-- Server version: 10.1.34-MariaDB
-- PHP Version: 7.2.8

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
-- Table structure for table `post`
--

CREATE TABLE `post` (
  `id` int(10) NOT NULL,
  `title` varchar(200) NOT NULL,
  `description` mediumtext NOT NULL,
  `author` varchar(50) NOT NULL,
  `image` varchar(100) NOT NULL DEFAULT 'http://localhost:8000/image/default.png',
  `slug` varchar(50) NOT NULL,
  `time` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`id`, `title`, `description`, `author`, `image`, `slug`, `time`) VALUES
(7, 'Belle Delphine banned from Instagram — is her sold-out bath water to blame?', 'Selling your used bathwater might just get you into some hot water with Instagram (pun intended.) YouTube star and social media personality Belle Delphine recently stirred up a bit of controversy when she posted a video online about how she would sell her used bath water to “thirsty gamer boy” followers for $30 a pop. .\n\nThe product sold out in three days, but Belle’s Instagram mysteriously disappeared, so what happened? \n\nWas Belle Delphine banned from Instagram?\n\nWith nearly 500,000 subscribers on her YouTube channel and 4.5 million followers on Instagram, the19-year-old has made a mark on social media. Her videos and photos have been suggestive in nature, with instances of nudity alarming users who felt as though the content was inappropriate for a public account. \n\nNow, Belle’s Instagram page is unavailable, leading many to wonder what exactly happened and if the influencer has any chance of reactivating her account.', 'amir', 'http://localhost:8000/image/1564184947964-B_D1.jpg', 'belle-delphine-banned', '2019-07-26 23:54:06.214805'),
(8, 'pretty baby :))', 'lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum ', 'amir', 'http://localhost:8000/image/1564226960007-WhatsApp Image 2019-06-07 at 1.45.43 AM.jpeg', 'boogie-boogie', '2019-07-27 14:31:37.468102'),
(9, 'hello dolly', 'lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum ', 'fateme', 'http://localhost:8000/image/1564238297225-photo-1515165674801-ada68b696e08.jpg', 'for-test', '2019-07-27 14:38:24.151263'),
(10, 'why react.js? | validation', 'text e testi o bedone mohtava -_- sakhtan data demo kheyli asabi konandas !!text e testi o bedone mohtava -_- sakhtan data demo kheyli asabi konandas !!text e testi o bedone mohtava -_- sakhtan data demo kheyli asabi konandas !!text e testi o bedone mohtava -_- sakhtan data demo kheyli asabi konandas !!text e testi o bedone mohtava -_- sakhtan data demo kheyli asabi konandas !!text e testi o bedone mohtava -_- sakhtan data demo kheyli asabi konandas !!text e testi o bedone mohtava -_- sakhtan data demo kheyli asabi konandas !!text e testi o bedone mohtava -_- sakhtan data demo kheyli asabi konandas !!text e testi o bedone mohtava -_- sakhtan data demo kheyli asabi konandas !!text e testi o bedone mohtava -_- sakhtan data demo kheyli asabi konandas !!text e testi o bedone mohtava -_- sakhtan data demo kheyli asabi konandas !!text e testi o bedone mohtava -_- sakhtan data demo kheyli asabi konandas !!text e testi o bedone mohtava -_- sakhtan data demo kheyli asabi konandas !!text e testi o bedone mohtava -_- sakhtan data demo kheyli asabi konandas !!text e testi o bedone mohtava -_- sakhtan data demo kheyli asabi konandas !!text e testi o bedone mohtava -_- sakhtan data demo kheyli asabi konandas !!text e testi o bedone mohtava -_- sakhtan data demo kheyli asabi konandas !!text e testi o bedone mohtava -_- sakhtan data demo kheyli asabi konandas !!text e testi o bedone mohtava -_- sakhtan data demo kheyli asabi konandas !!text e testi o bedone mohtava -_- sakhtan data demo kheyli asabi konandas !!text e testi o bedone mohtava -_- sakhtan data demo kheyli asabi konandas !!text e testi o bedone mohtava -_- sakhtan data demo kheyli asabi konandas !!text e testi o bedone mohtava -_- sakhtan data demo kheyli asabi konandas !!text e testi o bedone mohtava -_- sakhtan data demo kheyli asabi konandas !!text e testi o bedone mohtava -_- sakhtan data demo kheyli asabi konandas !!text e testi o bedone mohtava -_- sakhtan data demo kheyli asabi konandas !!text e testi o bedone mohtava -_- sakhtan data demo kheyli asabi konandas !!text e testi o bedone mohtava -_- sakhtan data demo kheyli asabi konandas !!text e testi o bedone mohtava -_- sakhtan data demo kheyli asabi konandas !!text e testi o bedone mohtava -_- sakhtan data demo kheyli asabi konandas !!text e testi o bedone mohtava -_- sakhtan data demo kheyli asabi konandas !!text e testi o bedone mohtava -_- sakhtan data demo kheyli asabi konandas !!text e testi o bedone mohtava -_- sakhtan data demo kheyli asabi konandas !!text e testi o bedone mohtava -_- sakhtan data demo kheyli asabi konandas !!text e testi o bedone mohtava -_- sakhtan data demo kheyli asabi konandas !!text e testi o bedone mohtava -_- sakhtan data demo kheyli asabi konandas !!text e testi o bedone mohtava -_- sakhtan data demo kheyli asabi konandas !!text e testi o bedone mohtava -_- sakhtan data demo kheyli asabi konandas !!text e testi o bedone mohtava -_- sakhtan data demo kheyli asabi konandas !!', 'zahra', 'http://localhost:8000/image/1564238542629-photo-1525968681927-9cd76a0590a9.jpg', 'validation-in-react-js', '2019-07-27 14:42:25.649475'),
(11, 'whats meaning of iran flag?', 'red is blood green is natural and white is respect. red is blood green is natural and white is respect. red is blood green is natural and white is respect. red is blood green is natural and white is respect. red is blood green is natural and white is respect. red is blood green is natural and white is respect. red is blood green is natural and white is respect. red is blood green is natural and white is respect. red is blood green is natural and white is respect. red is blood green is natural and white is respect. red is blood green is natural and white is respect. red is blood green is natural and white is respect. red is blood green is natural and white is respect. red is blood green is natural and white is respect. red is blood green is natural and white is respect. red is blood green is natural and white is respect. red is blood green is natural and white is respect. red is blood green is natural and white is respect. red is blood green is natural and white is respect. red is blood green is natural and white is respect. red is blood green is natural and white is respect. red is blood green is natural and white is respect. red is blood green is natural and white is respect. red is blood green is natural and white is respect. red is blood green is natural and white is respect. ', 'zahra', 'http://localhost:8000/image/1564238653219-photo-1516179257071-71a54dbb4853.jpg', 'iran-flag', '2019-07-27 14:44:33.405649'),
(12, 'client side rendering or server side? choose both together', 'render data in client browser (react default) or on the server side using freamworks like express, gatsby, next.js n more.. render data in client browser (react default) or on the server side using freamworks like express, gatsby, next.js n more.. render data in client browser (react default) or on the server side using freamworks like express, gatsby, next.js n more.. render data in client browser (react default) or on the server side using freamworks like express, gatsby, next.js n more.. render data in client browser (react default) or on the server side using freamworks like express, gatsby, next.js n more.. render data in client browser (react default) or on the server side using freamworks like express, gatsby, next.js n more.. render data in client browser (react default) or on the server side using freamworks like express, gatsby, next.js n more.. render data in client browser (react default) or on the server side using freamworks like express, gatsby, next.js n more.. ', 'fateme', 'http://localhost:8000/image/1564238870212-photo-1490013616775-3ca8865fb129.jpg', 'client-or-server-side-rendering', '2019-07-27 14:47:54.157425'),
(13, 'differences between css and html', 'html is define elements and css style it. a new technology is html5 and css3 html is define elements and css style it. a new technology is html5 and css3 html is define elements and css style it. a new technology is html5 and css3 html is define elements and css style it. a new technology is html5 and css3 html is define elements and css style it. a new technology is html5 and css3 html is define elements and css style it. a new technology is html5 and css3 html is define elements and css style it. a new technology is html5 and css3 html is define elements and css style it. a new technology is html5 and css3 html is define elements and css style it. a new technology is html5 and css3 html is define elements and css style it. a new technology is html5 and css3 html is define elements and css style it. a new technology is html5 and css3 html is define elements and css style it. a new technology is html5 and css3 html is define elements and css style it. a new technology is html5 and css3 html is define elements and css style it. a new technology is html5 and css3 html is define elements and css style it. a new technology is html5 and css3 html is define elements and css style it. a new technology is html5 and css3 html is define elements and css style it. a new technology is html5 and css3 html is define elements and css style it. a new technology is html5 and css3 html is define elements and css style it. a new technology is html5 and css3 html is define elements and css style it. a new technology is html5 and css3 html is define elements and css style it. a new technology is html5 and css3 html is define elements and css style it. a new technology is html5 and css3 html is define elements and css style it. a new technology is html5 and css3 html is define elements and css style it. a new technology is html5 and css3 html is define elements and css style it. a new technology is html5 and css3 html is define elements and css style it. a new technology is html5 and css3 html is define elements and css style it. a new technology is html5 and css3 html is define elements and css style it. a new technology is html5 and css3 html is define elements and css style it. a new technology is html5 and css3 html is define elements and css style it. a new technology is html5 and css3 html is define elements and css style it. a new technology is html5 and css3 html is define elements and css style it. a new technology is html5 and css3 html is define elements and css style it. a new technology is html5 and css3 html is define elements and css style it. a new technology is html5 and css3 ', 'fateme', 'http://localhost:8000/image/1564239083000-photo-1515666991427-9b0f67becfa1.jpg', 'html-and-css', '2019-07-27 14:51:26.713246'),
(29, 'Young women and non-binary farmers grow diversity in Long Island', 'Farmer Isabel Milligan drives a tractor as she weeds and transplants crops on the farm in Amagansett, New York. Women and non-binary people are part of a growing cadre of gender-diverse college graduates in their 20s and 30s who are changing the face of organic agriculture, running some of the best-known organic farms on Long Island. REUTERS/Lindsay Morris', 'amir', 'http://localhost:8000/image/1564262502017-download.jpg', 'farmer-woman', '2019-07-27 21:21:45.037895'),
(30, 'Flyboard inventor attempts English Channel crossing', 'French inventor Franky Zapata takes off on a Flyboard to cross the English channel from Sangatte to Dover, in Sangatte, France, July 25. Zapata failed in his attempt to cross the English Channel on a jet-powered hoverboard when he was knocked into the water as he landed on a boat-mounted refueling platform, his technical team said. REUTERS/Pascal Rossignol', 'amir', 'http://localhost:8000/image/1564262587761-download (1).jpg', 'flyboard-inventor', '2019-07-27 21:23:11.000465'),
(31, 'World tallest indoor waterfall unveiled', 'The 40-meter high Rain Vortex inside Jewel Changi Airport in Singapore. A sprawling retail complex with the worlds tallest indoor waterfall is what Singapore hopes will bring more travellers and visitors to the airport to shop and dine. REUTERS/Feline Lim', 'amir', 'http://localhost:8000/image/1564262664477-download (2).jpg', 'indoor-waterfall', '2019-07-27 21:24:55.045075');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `userName` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `firstName` varchar(20) NOT NULL,
  `lastName` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`userName`, `password`, `firstName`, `lastName`) VALUES
('amir', '1234', 'amir', 'st'),
('fateme', '123', 'fateme', 'rfyn'),
('zahra', '12345', 'zahra', 'hajilari');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `slug` (`slug`),
  ADD KEY `Post Creator` (`author`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`userName`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `post`
--
ALTER TABLE `post`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `post`
--
ALTER TABLE `post`
  ADD CONSTRAINT `Post Creator` FOREIGN KEY (`author`) REFERENCES `user` (`userName`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
