-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:4306
-- Generation Time: Jun 09, 2025 at 05:00 PM
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
-- Database: `canteen_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `contact_messages`
--

CREATE TABLE `contact_messages` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `submitted_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contact_messages`
--

INSERT INTO `contact_messages` (`id`, `name`, `email`, `subject`, `message`, `submitted_at`) VALUES
(1, 'New', 'new@gmail.com', 'Feedback', 'Need more seats.', '2025-05-18 21:31:06'),
(8, 'Mohit Chauhan', 'mohit@gmail.com', 'Feedback', 'The lunch timings if could be adjusted as per the usual routine.', '2025-06-04 02:39:27');

-- --------------------------------------------------------

--
-- Table structure for table `dishes`
--

CREATE TABLE `dishes` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `category` varchar(50) NOT NULL,
  `tag` enum('veg','non-veg') DEFAULT NULL,
  `price` decimal(7,2) DEFAULT 0.00,
  `description` text DEFAULT NULL,
  `ingredients` text DEFAULT NULL,
  `image_path` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `dishes`
--

INSERT INTO `dishes` (`id`, `name`, `category`, `tag`, `price`, `description`, `ingredients`, `image_path`) VALUES
(1, 'Spicy Paneer Wrap', 'Today\'s Special Menu', 'veg', 70.00, 'Soft wrap filled with spicy marinated paneer, onions, capsicum, and tangy sauces. A perfect grab-and-go snack from the canteen.', 'Paneer, Onion & Capsicum, Spices & Sauces, Wheat Wrap, Green Chutney', 'assets/images/spicy_paneer_wrap.jpg'),
(2, 'Aloo Paratha', 'Today\'s Special Menu', 'veg', 40.00, 'Stuffed flatbread with spiced mashed potatoes, served hot with butter and curd. A hearty Indian breakfast or lunch choice.', 'Whole Wheat Flour, Potatoes, Spices (Jeera, Ajwain, etc.), Green Chilli & Coriander, Butter, Curd', 'assets/images/aloo_paratha.jpeg'),
(3, 'Rajma Chawal', 'Today\'s Special Menu', 'veg', 70.00, 'Classic comfort food — red kidney beans cooked in a spicy tomato gravy, served hot with steamed basmati rice. A wholesome and filling meal perfect for any time of the day.', 'Red Kidney Beans (Rajma), Basmati Rice, Onion & Tomato, Garlic & Ginger, Spices & Herbs', 'assets/images/rajme_chawal.jpeg'),
(4, 'Fruit Salad', 'Today\'s Special Menu', 'veg', 40.00, 'A refreshing mix of seasonal fruits, lightly sweetened and served chilled. A healthy and tasty snack or dessert option.', 'Apples, Bananas, Grapes, Papaya, Honey / Sugar Syrup (optional)', 'assets/images/fruit_salad.jpeg'),
(5, 'Masala Dosa', 'Regular Menu', 'veg', 50.00, 'Thin, crispy rice and lentil crepe stuffed with a flavorful spiced potato filling. Served with coconut chutney and sambar.', 'Rice & Urad Dal Batter, Potatoes, Mustard Seeds, Curry Leaves, Onion, Green Chili, Ginger, Chutney & Sambar', 'assets/images/masala_dosa.jpg'),
(6, 'Veg Thali', 'Regular Menu', 'veg', 90.00, 'A complete Indian meal with a balanced variety of dishes including dal, vegetables, rice, roti, salad, and dessert. Perfect for lunch.', 'Chapati / Roti, Steamed Rice, Dal (Lentils), Seasonal Vegetable Curry, Pickle & Salad, Sweet / Dessert', 'assets/images/veg_thali.jpg'),
(7, 'Pasta', 'Regular Menu', 'veg', 80.00, 'Delicious Pasta Arrabbiata cooked in a spicy tomato-based sauce with herbs and garlic. A perfect Indo-Italian fusion delight.', 'Durum Wheat Pasta, Tomatoes, Garlic & Onion, Chilli Flakes, Herbs (Oregano, Basil), Olive Oil', 'assets/images/pasta.jpeg'),
(8, 'Veg Sandwich', 'Regular Menu', 'veg', 45.00, 'Fresh and crunchy vegetables layered between slices of soft bread, with flavorful chutneys and a hint of spice. A light and tasty snack perfect for any time.', 'Bread Slices, Cucumber, Tomato, Onion, Butter & Green Chutney, Spices & Salt, Optional Cheese Slice', 'assets/images/veg_sandwhich.jpg'),
(9, 'French Fries', 'Regular Menu', 'veg', 40.00, 'Golden, crispy potato fries served hot and lightly salted. A crunchy and delicious snack.', 'Potatoes, Salt, Vegetable Oil, Optional Seasoning (Chili Flakes, Peri Peri, etc.), Tomato Ketchup (on request)', 'assets/images/french_fries.jpg'),
(10, 'Samosa', 'Regular Menu', 'veg', 25.00, 'Crispy golden pastry filled with spicy mashed potatoes and peas. Served with chutney.', 'Potatoes, Green Peas, Spices & Herbs, Wheat Flour (Outer Layer), Cooking Oil, Tamarind & Mint Chutney (optional)', 'assets/images/samosa.jpg'),
(11, 'Spring Rolls', 'Regular Menu', 'non-veg', 50.00, 'Crispy and golden fried rolls stuffed with spiced vegetables and tender chicken. Served with tangy dipping sauce.', 'Spring Roll Sheets, Chicken, Cabbage, Carrot, Capsicum, Soy Sauce & Spices, Oil for Frying', 'assets/images/spring_roll.jpg'),
(12, 'Chakli', 'Regular Menu', 'veg', 35.00, 'Crunchy spiral-shaped snack made from rice flour and spices. A traditional Indian munchy perfect for tea-time or snacking.', 'Rice Flour, Gram Flour (Besan), Butter or Oil, Sesame Seeds, Cumin & Carom Seeds, Salt & Spices', 'assets/images/chakkli.jpeg'),
(13, 'Mixed Vegetable Pakora', 'Regular Menu', 'veg', 40.00, 'Crispy deep-fried fritters made from a mix of seasonal vegetables coated in spiced gram flour batter. A crunchy and flavorful snack.', 'Onion, Potato, Spinach, Gram Flour (Besan), Spices & Herbs, Oil for Frying', 'assets/images/pakora.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `dish_id` int(11) NOT NULL,
  `rating` tinyint(4) NOT NULL CHECK (`rating` between 1 and 5),
  `review_text` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`id`, `user_id`, `dish_id`, `rating`, `review_text`, `created_at`) VALUES
(1, 1, 4, 1, 'ok ok', '2025-05-18 19:57:22'),
(3, 1, 12, 5, 'very tasty', '2025-05-19 01:16:06'),
(6, 7, 5, 3, 'Tasty', '2025-05-21 03:17:39'),
(7, 8, 12, 3, 'good', '2025-05-21 03:25:26'),
(8, 9, 9, 3, 'Very Tasty', '2025-06-03 13:33:24'),
(9, 10, 5, 4, 'The dish was very good.', '2025-06-04 02:37:26');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `full_name` varchar(100) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `registered_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `is_admin` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `full_name`, `username`, `email`, `password`, `registered_at`, `is_admin`) VALUES
(1, 'New', 'New', 'new@gmail.com', '$2y$10$GBwYQluNrZ3mSIgqtPWI6ufEPG98PBKvtvLV6QtFyakFORenBDLm.', '2025-05-18 16:36:34', 1),
(5, 'NewUser', 'NewUser', 'newuser@gmail.com', '$2y$10$MOJTFNi2h/BnUweqspnpPeCd3ivaXFjIDCA4hIeXX5H9QIFLVG2GG', '2025-05-20 06:53:30', 0),
(6, 'Pria Sen', 'Pria', 'pria@gmail.com', '$2y$10$HEQqB14JfmjxG5D.HxzaZuqK1pRE8opF0CmnKLWri2yZzsTG9dyQG', '2025-05-20 08:02:57', 0),
(7, 'Ker', 'Ker', 'ker@gmail.com', '$2y$10$l2d83B.sNLarRNt9gnzId.d.Uq6sGslNcckPFzEkwyhbe8LuboH32', '2025-05-21 03:16:26', 0),
(8, 'Bishakha', 'Bishakha', 'bishakha@gmail.com', '$2y$10$nVQAtUTAgjq968AXH88MKONe6Jvf9hyfsR2U/9Q5lXaR4zGIuSETe', '2025-05-21 03:24:13', 0),
(9, 'Max', 'Max', 'max@gmail.com', '$2y$10$VvzuB2OkelzKdVr.AAc5zO1Sau530ffh.Ah9Z/t00sIiOjQ2y.VtK', '2025-06-03 13:11:48', 0),
(10, 'Mohit Chauhan', 'Mohit', 'mohit@gmail.com', '$2y$10$WeBISSQYSN91w0tZwswv1.TS0REGyfKeFGRDSk/Qk9VgJBxefAXTm', '2025-06-04 02:33:42', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contact_messages`
--
ALTER TABLE `contact_messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dishes`
--
ALTER TABLE `dishes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `dish_id` (`dish_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contact_messages`
--
ALTER TABLE `contact_messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `dishes`
--
ALTER TABLE `dishes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `reviews`
--
ALTER TABLE `reviews`
  ADD CONSTRAINT `reviews_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `reviews_ibfk_2` FOREIGN KEY (`dish_id`) REFERENCES `dishes` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
