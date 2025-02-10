-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 10, 2025 at 08:37 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `enterprise_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `login_logs`
--

CREATE TABLE `login_logs` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `login_time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `login_logs`
--

INSERT INTO `login_logs` (`id`, `user_id`, `login_time`) VALUES
(0, 0, '2025-02-10 15:22:37'),
(0, 0, '2025-02-10 15:23:06'),
(0, 0, '2025-02-10 15:23:17'),
(0, 0, '2025-02-10 15:25:42'),
(0, 0, '2025-02-10 15:34:33'),
(0, 0, '2025-02-10 15:34:44'),
(0, 0, '2025-02-10 15:35:04'),
(0, 0, '2025-02-10 15:35:13');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `user_type` enum('admin','user') NOT NULL DEFAULT 'user',
  `last_login` datetime DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `user_type`, `last_login`, `created_at`) VALUES
(0, 'admin', '$2y$10$KVaYpRspvlG2ETRD0oO7kOK0aBkSekb61PnAhfr6PTHGMezHQvWU.', 'admin', '2025-02-10 15:35:13', '2025-02-10 07:22:27'),
(0, 'user', '$2y$10$lyT7ky6bC1nlP0EE2ndJhOUn86sTKKB/QCm3hEH8tLSUfdNwlpcFC', 'user', '2025-02-10 15:35:13', '2025-02-10 07:22:57'),
(0, 'admin1', '$2y$10$6GUGuz1AXTRw0XOSBQPgxuonx/USeWpgB2bwZrHMOJ/lZQgvF21GG', 'admin', '2025-02-10 15:35:13', '2025-02-10 07:34:27'),
(0, 'user1', '$2y$10$Q0111XrL8GYFONRrCAcVfO.PXVq2L6MR1peWbVQxXSIWNY1VxmsMe', 'user', '2025-02-10 15:35:13', '2025-02-10 07:35:00');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
