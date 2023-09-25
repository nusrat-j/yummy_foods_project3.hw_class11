-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 25, 2023 at 06:02 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `yummy_food_project`
--

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(50) NOT NULL,
  `fname` varchar(50) NOT NULL,
  `lname` varchar(50) NOT NULL,
  `email` text NOT NULL,
  `pass` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fname`, `lname`, `email`, `pass`) VALUES
(1, '0', 'yummy_food_project', '0', '0'),
(4, 'ferdstfersdtgerfd', ' e5yhe5truht', 'asdfbegumaliya@gmile.com', '$2y$10$BI7j4K9cWLM1HRZNwhioe.h/6wQ4R1V1SppyFinWpcASAZaDqEF/W'),
(6, 'Akila', ' jdlksajflkdjas', 'ddjsd@gmail.com', '$2y$10$8QeCCXemEJ44z.ZCg.pjrOXMyEcYpOSZYIWVNfiAWnkmruf/rjQS2'),
(7, 'asfWASD', ' WRFWEASRDF', 'asdfbegumaliya@gmile.com', '$2y$10$9kioqHtnTcK3DnJ/top6zOsRRUAKrDM2lHKY.XPNOXwHzyPMybHnG'),
(9, 'Akila', ' e5yhe5truht', 'asdfbegumaliya@gmile.com', '$2y$10$hzAmU0bkoLUkLj9Db7jIRe5Tfs.Q4bPW4xTrlKM8xka4B5Pstup2u'),
(10, 'Akila', ' e5yhe5truht', 'unimo@gmail.com', '$2y$10$F1OTTfjYSpOFEO3fteCW6urloeVX4x4V2P/J1MZZnfIYkWwop41vC'),
(14, 'Akila', ' ffs', 'asdfbegumaliya@gmile.com', '$2y$10$WPClDKPyIZlzDd5ckdeZgekSVrHAJi7IBxtldSoTxW27INZJxXXdO'),
(16, 'gfrsdxgversdxfc', ' WRFWEASRDF', 'akilajahan01@gmail.com', '$2y$10$B6hhx1U9uIIfMEdfog1YReGA20ju8kbXoo6sCX7zE6ja4AfAv/s2.'),
(18, 'Akila', ' Jahan', 'akilajahan@gmail.com', '$2y$10$idkfeHLdKxm4scWFbV0OoeAxAOL3KO4H.QKM5NXrVdujQCIpfThOq'),
(19, 'a', ' k', 'ak@gmail.com', '$2y$10$1F0I94HfImSuVFnXEeUMCuQo0OUqtLeNkubMvG1sCH.5yVzLyV7L2'),
(20, 'Akila', ' Jahan', 'tasnim@gmail.com', '$2y$10$eHbcz3tL3PrOTBahj0if6.0CQ/KwdaWSppEBO9gUrSjFqivLTes02'),
(21, 'Akila', ' Jahan', 'unimo@gmail.com', '$2y$10$ypopSP40CUZ.rVdAxRG94eu0/VS4dx4B4gxBnU5WDQNkJFKiNbf8e'),
(22, 'Akila', ' Jahan', 'akilajahan@gmail.com', '$2y$10$kt1QpxBNMc6tcy10MLzPiuN1YvCVAbrx4WnX6q10iNsPEAsC/MPNm'),
(23, 'Akila', ' Jahan', 'new@gmail.com', '$2y$10$zlqQdMu9rVieemHb0SPg.eq9eUkBh5pH/dv55eudMXimBI6UltX0e'),
(24, 'Tasnim', ' Jahan', 'news@gmail.com', '$2y$10$0bImI3hOAnzCokGqFgNd6urBCjQCpChgOI4byh2tae0oKR.oYdDNS'),
(25, 'Akila', ' Jahan', 'news@gmail.com', '$2y$10$HppyFN6qRzzoUG7Nwq4qgeq39.53a7kfvk7UktRa3XCMuyHNz4G2.'),
(26, 'Akila', ' Jahan', 'news@gmail.com', '$2y$10$5/zvnFE/02yptvheCf4WKOMooouDfZ3UYHU15wRwfalpiFLLvCSem');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
