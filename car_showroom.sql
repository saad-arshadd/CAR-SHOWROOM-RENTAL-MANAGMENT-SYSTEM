-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 16, 2024 at 04:48 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `car_showroom`
--

-- --------------------------------------------------------

--
-- Table structure for table `audit_log`
--

CREATE TABLE `audit_log` (
  `id` int(11) NOT NULL,
  `user_name` varchar(255) DEFAULT NULL,
  `login_time` datetime DEFAULT current_timestamp(),
  `success` tinyint(1) DEFAULT NULL,
  `error_message` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `audit_log`
--

INSERT INTO `audit_log` (`id`, `user_name`, `login_time`, `success`, `error_message`) VALUES
(1, 'omer', '2024-12-05 14:18:34', 1, NULL),
(2, 'chacho', '2024-12-05 14:24:08', 0, 'Invalid credentials'),
(3, 'chacho', '2024-12-05 14:24:16', 0, 'Invalid credentials'),
(4, 'mani', '2024-12-05 14:24:24', 0, 'Invalid credentials'),
(5, 'mani', '2024-12-05 14:24:28', 0, 'Invalid credentials'),
(6, 'chacho', '2024-12-05 14:37:03', 0, 'Invalid credentials'),
(7, 'omer', '2024-12-05 15:07:10', 1, NULL),
(8, 'admin', '2024-12-05 15:07:56', 1, NULL),
(9, 'omer', '2024-12-05 15:10:20', 1, NULL),
(10, 'admin', '2024-12-05 15:25:33', 1, NULL),
(11, 'admin', '2024-12-05 15:46:31', 1, NULL),
(12, 'omer', '2024-12-05 15:58:05', 1, NULL),
(13, 'admin', '2024-12-05 15:58:43', 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `bike`
--

CREATE TABLE `bike` (
  `bike_id` int(11) NOT NULL,
  `vehicle_id` int(11) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bike`
--

INSERT INTO `bike` (`bike_id`, `vehicle_id`, `image`) VALUES
(3, 51, 'bike1.jpg'),
(4, 42, 'bike2.jpg'),
(5, 46, 'bike3.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `car`
--

CREATE TABLE `car` (
  `car_id` int(11) NOT NULL,
  `vehicle_id` int(11) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `car`
--

INSERT INTO `car` (`car_id`, `vehicle_id`, `image`) VALUES
(15, 36, 'car4.jpg'),
(16, 37, 'car11.jpg'),
(17, 38, 'car7.jpg'),
(18, 39, 'car10.jpg'),
(20, 41, 'car13.jpg'),
(21, 42, 'bike2.jpg'),
(22, 43, 'car9.jpg'),
(23, 44, 'car8.png'),
(24, 45, 'car17.jpg'),
(25, 46, 'bike3.jpg'),
(26, 47, 'car18.jpg'),
(27, 48, 'car16.jpg'),
(29, 51, 'bike1.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `feature`
--

CREATE TABLE `feature` (
  `id` int(11) NOT NULL,
  `vehicle_id` int(11) NOT NULL,
  `feature_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `feature`
--

INSERT INTO `feature` (`id`, `vehicle_id`, `feature_name`) VALUES
(3, 36, 'Adaptive Cruise Control'),
(4, 36, '360-Degree Camera System'),
(5, 36, 'Night Vision'),
(6, 36, 'Lane Departure Warning'),
(7, 36, 'Automatic Emergency Braking'),
(8, 36, 'Blind-Spot Monitoring'),
(9, 36, 'Parking Assistance'),
(10, 37, 'Wireless Apple CarPlay & Android Auto'),
(11, 37, 'Adaptive Cruise Control'),
(12, 37, 'Lane Keeping Assist'),
(13, 37, 'Collision Mitigation Braking System'),
(14, 37, 'Road Departure Mitigation System'),
(15, 37, 'Traffic Sign Recognition System'),
(16, 38, 'HY-KERS Hybrid System for Enhanced Performance'),
(17, 38, 'Advanced Aerodynamic Management System'),
(18, 38, 'F1 Traction Control System (F1-Trac)'),
(19, 38, 'High-Performance ABS'),
(20, 38, 'Rear Parking Sensors and Camera'),
(21, 38, 'Limited Production: Only 499 Units Worldwide'),
(22, 39, 'Bespoke Audio System with 18 Speakers'),
(23, 39, 'Rear Theater Configuration with 12-inch Screens'),
(24, 39, 'Navigation System with Augmented Reality'),
(25, 39, 'Night Vision and Pedestrian Recognition'),
(26, 39, '360-Degree Camera System'),
(27, 39, 'AdaptiveCollision Warning with Automatic Braking Cruise Control'),
(28, 40, 'LED Headlights and Taillights'),
(29, 40, 'Lightweight M Carbon Wheels'),
(30, 40, 'Adaptive Headlights'),
(31, 40, 'Adjustable Wheelie Control'),
(32, 40, 'Engine Braking Control'),
(33, 40, 'Launch Control'),
(34, 40, 'Dynamic Traction Control'),
(35, 41, 'Multi-Terrain Select (MTS)'),
(36, 41, 'Crawl Control'),
(37, 41, 'Locking Center Differential'),
(38, 41, 'Adaptive Variable Suspension'),
(39, 41, '14-speaker JBL Premium Audio System'),
(40, 41, 'Multi-Terrain Monitor with 360-Degree Camera'),
(41, 41, 'Adaptive Cruise Control'),
(42, 41, 'Pre-Collision System with Pedestrian Detection'),
(43, 41, 'Lane Departure Alert with Steering Assist'),
(44, 41, '12.3-inch Touchscreen Infotainment System'),
(45, 42, 'Kawasaki Traction Control (KTRC)'),
(46, 42, 'Kawasaki Launch Control Mode (KLCM)'),
(47, 42, 'Fully Digital TFT Display'),
(48, 42, 'High-Performance Brembo Braking System'),
(49, 42, 'Bridgestone Racing Battlax Tires'),
(50, 42, 'Multi-Mode ABS'),
(51, 43, 'Wireless Apple CarPlay and Android Auto'),
(52, 43, 'Porsche Stability Management (PSM)'),
(53, 43, 'Night Vision Assist'),
(54, 43, '360-Degree Camera System'),
(55, 43, 'Adaptive Cruise Control with Traffic Jam Assist'),
(56, 43, 'Lane Keeping Assist'),
(57, 44, 'IPAS (Instant Power Assist System)'),
(58, 44, 'KERS (Kinetic Energy Recovery System)'),
(59, 44, 'Drag Reduction System (DRS)'),
(60, 44, 'McLaren Adaptive Dynamics'),
(61, 44, 'Active Chassis Control System'),
(62, 44, 'Advanced Stability and Traction Control'),
(63, 44, 'Front and Rear Parking Sensors'),
(64, 45, 'MBUX (Mercedes-Benz User Experience) with Voice Control'),
(65, 45, 'Augmented Reality Navigation'),
(66, 45, 'Wireless Apple CarPlay and Android Auto'),
(67, 45, 'Burmester 3D Surround Sound System'),
(68, 45, 'AMG Driver Assistance Package'),
(69, 45, 'Panamericana AMG Grille with LED Multibeam Headlights'),
(70, 45, 'Retractable Fabric Soft Top (Operable up to 37 mph)'),
(71, 45, 'Adaptive Cruise Control with Stop-and-Go'),
(72, 45, '360-Degree Camera with Parking Assist'),
(80, 47, 'M xDrive All-Wheel Drive System'),
(81, 47, 'BMW Gesture Control and Wireless Apple CarPlay'),
(82, 47, 'Dynamic Stability Control (DSC)'),
(83, 47, 'Blind Spot Detection'),
(84, 47, 'Automatic Emergency Braking'),
(85, 47, 'Harman Kardon Surround Sound System'),
(86, 47, '10.25-inch iDrive 7.0 Touchscreen'),
(87, 47, 'M Carbon Roof'),
(88, 48, 'Apple CarPlay and Android Auto Compatibility'),
(89, 48, 'Toyota Safety Sense™ 2.0'),
(90, 48, 'Adaptive Variable Suspension (AVS)'),
(91, 48, 'Dynamic Torque Vectoring'),
(92, 48, '12-speaker JBL Audio System'),
(255, 46, 'Resistant to heavy vehicle damage'),
(256, 46, 'Hovering Capabilities'),
(257, 46, 'Machine Guns'),
(258, 46, 'Homemade Rockets'),
(260, 50, 'ABS for Enhanced Braking Control'),
(261, 51, 'Adaptive Headlights'),
(262, 51, 'Lean-Angle Sensitive Traction Control'),
(263, 51, 'Adjustable Wheelie Control'),
(264, 51, 'Carbon Fiber Wheels'),
(265, 51, 'Brembo Calipers with Dual 320mm Front Discs');

-- --------------------------------------------------------

--
-- Table structure for table `inquiry`
--

CREATE TABLE `inquiry` (
  `inquiry_id` int(11) NOT NULL,
  `vehicle_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `inquiry_text` text DEFAULT NULL,
  `inquiry_date` date DEFAULT NULL,
  `reply` text DEFAULT NULL,
  `reply_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `inquiry`
--

INSERT INTO `inquiry` (`inquiry_id`, `vehicle_id`, `user_id`, `inquiry_text`, `inquiry_date`, `reply`, `reply_date`) VALUES
(7, 41, 9, 'meow meow meow', '2024-12-03', 'bow bow bow', '2024-12-03'),
(8, 48, 10, 'kia haal hain', '2024-12-04', 'Alhamdulilah', '2024-12-04'),
(9, 46, 11, 'ppp??', '2024-12-04', NULL, '0000-00-00'),
(10, 48, 8, 'Is this available?', '2024-12-05', NULL, '0000-00-00'),
(11, 48, 17, 'asasasa', '2024-12-05', 'sasa', '2024-12-05');

-- --------------------------------------------------------

--
-- Table structure for table `installment`
--

CREATE TABLE `installment` (
  `installment_id` int(11) NOT NULL,
  `vehicle_id` int(11) DEFAULT NULL,
  `downpayment` decimal(10,2) DEFAULT NULL,
  `monthly_installment` decimal(10,2) DEFAULT NULL,
  `interest_rate` decimal(5,2) DEFAULT NULL,
  `total_price` decimal(10,2) DEFAULT NULL,
  `bank_name` varchar(100) DEFAULT NULL,
  `time_period` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `installment`
--

INSERT INTO `installment` (`installment_id`, `vehicle_id`, `downpayment`, `monthly_installment`, `interest_rate`, `total_price`, `bank_name`, `time_period`) VALUES
(1, 48, 10400.00, 787.00, 5.00, 52000.00, 'Bank of America', 60),
(2, 48, 13000.00, 725.35, 4.50, 52000.00, 'Wells Fargo', 60),
(3, 47, 31200.00, 2361.60, 5.00, 156000.00, 'Bank of America', 60),
(4, 45, 36600.00, 2768.00, 5.00, 183000.00, 'Ally Financial', 60),
(5, 45, 18300.00, 3140.00, 5.00, 183000.00, 'Chase Bank', 60),
(6, 43, 69000.00, 5221.00, 5.00, 345000.00, ' Bank of America', 60),
(7, 43, 138000.00, 3816.00, 4.00, 345000.00, 'Capital One', 60);

-- --------------------------------------------------------

--
-- Table structure for table `testdrive`
--

CREATE TABLE `testdrive` (
  `testdrive_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `vehicle_id` int(11) DEFAULT NULL,
  `test_drive_date` date DEFAULT NULL,
  `test_drive_time` time DEFAULT NULL,
  `status` enum('Pending','Scheduled','Rejected') DEFAULT 'Pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `testdrive`
--

INSERT INTO `testdrive` (`testdrive_id`, `user_id`, `vehicle_id`, `test_drive_date`, `test_drive_time`, `status`) VALUES
(1, 11, 46, '2024-12-11', '15:06:00', 'Scheduled'),
(2, 12, 47, '2024-12-05', '02:00:00', 'Scheduled'),
(3, 8, 51, '2024-12-07', '16:42:00', 'Scheduled'),
(4, 17, 48, '2024-12-21', '20:46:00', 'Scheduled');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `user_name` varchar(100) NOT NULL,
  `ph_number` bigint(15) DEFAULT NULL,
  `user_type` varchar(50) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `last_login` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `email`, `user_name`, `ph_number`, `user_type`, `password`, `last_login`) VALUES
(1, 'admin123@gmail.com', 'admin', 123456, 'admin', 'scrypt:32768:8:1$FH6PqpTTfPrKTqWr$636f9e4f3c6a22e63a0f3391b11d9108dcf3be2932b0099ec14a8d6a932cfb127847e66b49523a3fcbbb9d1d20e6f47ba97e7c126391ecba5c327cdf08f91e64', '2024-12-05 15:58:43'),
(8, 'omerkhammm12345@gmail.com', 'omer', 12345678, 'user', 'scrypt:32768:8:1$a4gmIPNquqsJBPbQ$94c36a7073decc9e890de4a61c9e30a249b5239d706c3b601967018099eef06d150da90af981a525b44cc5514095728398c85f419db52b4ee4167cf4131a277c', '2024-12-05 15:58:05'),
(9, 'mariakhan3927@gmail.com', 'maria', 3336666, 'user', 'scrypt:32768:8:1$NtasxZpdap59Litt$6c08535e296b078272b1da36ad1658dcf7d238a2ff8dcbe1a6cc36633454c0adf683786cac5fed5f177e50a57d0de4e3493fb9cd3b2d59b4a01aac2bcff0c784', NULL),
(10, 'taha@gmail.com', 'taha', 12345678, 'user', 'scrypt:32768:8:1$Yzle4VQz9DMn8EKL$b7aa2294abc287f3119e84d7efd00f4c6975507b7e3029e91f00d7430578f15b737e4e4c5d3199864755acc2717d15189176f8dad285b9d37d2d63223521ef9d', NULL),
(11, 'k224522@nu.edu.pk', 'shozab', 3362144060, 'user', 'scrypt:32768:8:1$TQpr0MR4qndIQZ8J$009f28369d6a0a2657d1a4a30b7652e923e7cab7da3c9af1c68936444ecc9adfbb80ecd323bea30f649917bf09a158fc46458f2dfd792dc77afcd089a8f6b164', NULL),
(12, 'piru@gmail.com', 'piru', 3337227870, 'user', 'scrypt:32768:8:1$EueFW6Ff9cu2Sn7D$c5f76c9fda3fba329627275a72161a931729478b047e5fc10011ca67b98fd1ee5f2d2b9d69e9968c7fb535f9b629b5faa59acc28fee7d7df9746f1e3e91aef05', NULL),
(14, '1234@gmail.com', 'mani', 23232, 'user', 'scrypt:32768:8:1$hLoAYoZMFn5qgKkm$b6f212cfa511717b30a8c9f687b511845b0182cebbb4ff6fe8868c7c7cf7a491922eae0e2259a93a7a4243dfe94c44eede4083d975663b27ba0c674c5588c453', '2024-12-05 14:24:51'),
(17, 'fiza@hdjh.hufdug', 'fizza', 1234, 'user', 'scrypt:32768:8:1$vUY1jdrjNJ6BmsD9$a1ecef74ff8ccc1c661127bbd77a8f85e58176fbe1fde97e7c96d3af33cf38381f607ddf97950c85115f5dabf6445fba9260da62719bb8473edb616b9fb13cd5', '2024-12-05 15:44:33');

--
-- Triggers `user`
--
DELIMITER $$
CREATE TRIGGER `after_user_login` AFTER UPDATE ON `user` FOR EACH ROW BEGIN
    IF OLD.last_login != NEW.last_login THEN
        INSERT INTO Audit_Log (user_name, login_time, success)
        VALUES (NEW.user_name, NOW(), TRUE);
    END IF;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `vehicle`
--

CREATE TABLE `vehicle` (
  `vehicle_id` int(11) NOT NULL,
  `make` varchar(100) DEFAULT NULL,
  `model` varchar(100) DEFAULT NULL,
  `year` int(11) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `vehicle_type` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `vehicle`
--

INSERT INTO `vehicle` (`vehicle_id`, `make`, `model`, `year`, `price`, `description`, `vehicle_type`) VALUES
(36, 'Rolls Royce', 'Ghost', 2021, 320000.00, 'The car has a 6.6-litre V12 engine which delivers a maximum power of 603 hp (450 kW) @ 5,250 rpm and a maximum torque of 620 lb⋅ft (841 N⋅m) @ 1,650 – 5,000 rpm. The car can accelerate from 0 to 100 km/h (62 mph) in 4.8 s and has a top speed of 250 km/h (155 mph). Its power-to-weight ratio is 176.3 W/kg.', 'Car/Sedan'),
(37, 'Honda', 'Civic Type R', 2018, 45000.00, 'The Honda Civic Type R is a high-performance hatchback that boasts a turbocharged 2.0-liter engine, delivering impressive horsepower and precision handling. Celebrated for its aggressive design and track-inspired engineering, it combines everyday practicality with thrilling driving dynamics.', 'Car/Sedan'),
(38, 'Ferrari', 'Laferrari', 2013, 1500000.00, 'The LaFerrari is a limited-production hybrid hypercar by Ferrari, blending cutting-edge technology with a V12 engine and electric motor to deliver over 950 horsepower. It epitomizes Italian craftsmanship, pushing the boundaries of speed and luxury.', 'Car/Sport'),
(39, 'Rolls Royce', 'Phantom', 2019, 410000.00, 'The Rolls-Royce Phantom is the pinnacle of luxury sedans, featuring a powerful V12 engine and unparalleled craftsmanship. Known for its opulent interior and smooth, whisper-quiet ride, it sets the standard for comfort and prestige in automotive excellence.', 'Car/Sedan'),
(40, 'BMW', 'S1000 RR', 2023, 23000.00, ' The BMW S1000RR is a high-performance superbike with a 999cc engine delivering 205 hp, built for speed and precision on both track and road. Featuring cutting-edge electronics, advanced aerodynamics, and customizable riding modes, it offers unparalleled agility and control.', 'Bike/Sport'),
(41, 'Toyota', 'Land Cruiser', 2023, 98000.00, ' The 2023 Toyota Land Cruiser combines robust off-road capability with luxury and reliability, powered by a 3.5L V6 twin-turbo engine. It features advanced 4WD systems, a spacious interior with premium materials, and cutting-edge safety technology.', 'Car/SUV'),
(42, 'Kawasaki', 'Ninja H2R', 2015, 51000.00, 'The Kawasaki Ninja H2R is the ultimate track-only hyperbike, engineered for extreme speed and performance. Featuring a 998cc supercharged inline-4 engine delivering a staggering 310 hp, it combines cutting-edge aerodynamics, advanced electronics, and premium materials to dominate any race circuit.', 'Bike/Sport'),
(43, 'Porche', '911 Turbo S', 2023, 345000.00, 'The Porsche 911 992 Turbo S is a high-performance sports car that features a twin-turbocharged flat-six engine, delivering 640 horsepower and exceptional acceleration. Renowned for its blend of luxury, precision handling, and everyday usability, it represents the pinnacle of the 911 lineup.', 'Car/Sport'),
(44, 'Mclaren', 'P1', 2013, 1400000.00, 'The McLaren P1 is a pioneering hybrid hypercar that merges a twin-turbo V8 engine with an electric motor, producing a combined output of 903 horsepower. Designed for maximum performance, it embodies McLaren\'s legacy of innovation and track-ready engineering.', 'Car/Sport'),
(45, 'Mercedes-AMG', 'SL 63', 2023, 183000.00, 'The 2023 Mercedes-AMG SL 63 redefines luxury roadsters with its perfect balance of performance and sophistication. Powered by a handcrafted 4.0L V8 Biturbo engine producing 577 hp, it delivers thrilling acceleration, cutting-edge technology, and an opulent interior for the ultimate driving experience.', 'Car/Convertible '),
(46, 'Pegassi', 'Oppressor  MK-II', 2018, 5700000.00, 'The Oppressor Mk II is a futuristic, high-speed hoverbike equipped with advanced weaponry, making it a formidable vehicle in both combat and speed. Designed for aerial dominance, the Oppressor Mk II is known for its rocket propulsion system, allowing it to glide through the skies at incredible speeds while engaging enemies with precision.', 'Bike/Sport'),
(47, 'BMW', 'M8', 2023, 156000.00, 'The 2023 BMW M8 is a high-performance luxury coupe, combining aggressive styling with exceptional power. Equipped with a 4.4L twin-turbocharged V8 engine producing 617 hp, it delivers blistering speed, dynamic handling, and a sophisticated, tech-filled interior, making it a true driving machine for enthusiasts and connoisseurs alike.', 'Car/Coupe'),
(48, 'Toyota', 'GR Supra ', 2023, 52000.00, 'The 2023 Toyota GR Supra A91-MT is a thrilling driver-focused sports car, designed for enthusiasts who crave performance and precision. With a 3.0L turbocharged inline-six engine, manual transmission, and track-ready capabilities, the A91-MT version enhances the Supra’s legacy as a high-performance icon.', 'Car/Sedan'),
(50, 'Kawasaki', 'Vulcan S', 2019, 7100.00, 'BAht tyt bike hai', 'Bike/Cruiser'),
(51, 'BMW', 'S1000 RR', 2023, 25000.00, 'The BMW S1000RR is a track-inspired superbike designed for thrill-seekers and enthusiasts. Equipped with a powerful 999cc inline-4 engine delivering 205 hp, it combines razor-sharp handling, cutting-edge technology, and unmatched performance for both road and track adventures.', 'Bike/Sport');

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `fav_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `vehicle_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `wishlist`
--

INSERT INTO `wishlist` (`fav_id`, `user_id`, `vehicle_id`) VALUES
(1, 9, 47),
(2, 11, 46),
(3, 12, 48),
(4, 12, 47),
(5, 1, 44),
(6, 1, 46),
(7, 8, 48);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `audit_log`
--
ALTER TABLE `audit_log`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bike`
--
ALTER TABLE `bike`
  ADD PRIMARY KEY (`bike_id`),
  ADD UNIQUE KEY `vehicle_id` (`vehicle_id`);

--
-- Indexes for table `car`
--
ALTER TABLE `car`
  ADD PRIMARY KEY (`car_id`),
  ADD UNIQUE KEY `vehicle_id` (`vehicle_id`);

--
-- Indexes for table `feature`
--
ALTER TABLE `feature`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vehicle_id` (`vehicle_id`);

--
-- Indexes for table `inquiry`
--
ALTER TABLE `inquiry`
  ADD PRIMARY KEY (`inquiry_id`),
  ADD KEY `vehicle_id` (`vehicle_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `installment`
--
ALTER TABLE `installment`
  ADD PRIMARY KEY (`installment_id`),
  ADD KEY `vehicle_id` (`vehicle_id`);

--
-- Indexes for table `testdrive`
--
ALTER TABLE `testdrive`
  ADD PRIMARY KEY (`testdrive_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `vehicle_id` (`vehicle_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `user_name` (`user_name`),
  ADD UNIQUE KEY `email_2` (`email`);

--
-- Indexes for table `vehicle`
--
ALTER TABLE `vehicle`
  ADD PRIMARY KEY (`vehicle_id`);

--
-- Indexes for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`fav_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `vehicle_id` (`vehicle_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `audit_log`
--
ALTER TABLE `audit_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `bike`
--
ALTER TABLE `bike`
  MODIFY `bike_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `car`
--
ALTER TABLE `car`
  MODIFY `car_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `feature`
--
ALTER TABLE `feature`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=266;

--
-- AUTO_INCREMENT for table `inquiry`
--
ALTER TABLE `inquiry`
  MODIFY `inquiry_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `installment`
--
ALTER TABLE `installment`
  MODIFY `installment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `testdrive`
--
ALTER TABLE `testdrive`
  MODIFY `testdrive_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `vehicle`
--
ALTER TABLE `vehicle`
  MODIFY `vehicle_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `fav_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `bike`
--
ALTER TABLE `bike`
  ADD CONSTRAINT `bike_ibfk_1` FOREIGN KEY (`vehicle_id`) REFERENCES `vehicle` (`vehicle_id`);

--
-- Constraints for table `car`
--
ALTER TABLE `car`
  ADD CONSTRAINT `car_ibfk_1` FOREIGN KEY (`vehicle_id`) REFERENCES `vehicle` (`vehicle_id`) ON DELETE CASCADE;

--
-- Constraints for table `feature`
--
ALTER TABLE `feature`
  ADD CONSTRAINT `feature_ibfk_1` FOREIGN KEY (`vehicle_id`) REFERENCES `vehicle` (`vehicle_id`) ON DELETE CASCADE;

--
-- Constraints for table `inquiry`
--
ALTER TABLE `inquiry`
  ADD CONSTRAINT `inquiry_ibfk_1` FOREIGN KEY (`vehicle_id`) REFERENCES `vehicle` (`vehicle_id`),
  ADD CONSTRAINT `inquiry_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`);

--
-- Constraints for table `installment`
--
ALTER TABLE `installment`
  ADD CONSTRAINT `installment_ibfk_1` FOREIGN KEY (`vehicle_id`) REFERENCES `vehicle` (`vehicle_id`);

--
-- Constraints for table `testdrive`
--
ALTER TABLE `testdrive`
  ADD CONSTRAINT `testdrive_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`),
  ADD CONSTRAINT `testdrive_ibfk_2` FOREIGN KEY (`vehicle_id`) REFERENCES `vehicle` (`vehicle_id`);

--
-- Constraints for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD CONSTRAINT `wishlist_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`),
  ADD CONSTRAINT `wishlist_ibfk_2` FOREIGN KEY (`vehicle_id`) REFERENCES `vehicle` (`vehicle_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
