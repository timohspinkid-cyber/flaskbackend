-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Feb 25, 2026 at 06:10 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `simbasokogarden`
--

-- --------------------------------------------------------

--
-- Table structure for table `product_details`
--

CREATE TABLE `product_details` (
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_description` text NOT NULL,
  `product_cost` int(11) NOT NULL,
  `product_photo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product_details`
--

INSERT INTO `product_details` (`product_id`, `product_name`, `product_description`, `product_cost`, `product_photo`) VALUES
(7, 'Red velvet cake', 'It  is a visually striking, deep red or maroon-colored layer cake known for its soft, tender, and velvety crumb.', 4300, 'pink cakea.avif'),
(10, 'A pink and gold cake A pink and gold cake ', 'A pink and gold cake setup is a popular choice for elegant parties, featuring a soft, romantic, and luxurious look. ', 5500, 'pink cakea.avif'),
(12, 'generic white forest', 'a popular, light dessert that serves as a vanilla-based alternative to the traditional chocolate Black Forest cake', 3500, 'generic.jpeg'),
(13, 'American buttercream', 'is a classic, rich, and intensely sweet frosting made by whipping butter with powdered sugar, vanilla, and a splash of milk or cream', 4500, 'american buttercreame.jpeg'),
(16, 'Pearl &Rose cake', 'Pearl & Rose Cake – WhippedPearl rose cakes are elegant, romantic, and often multi-tiered creations featuring smooth white or pastel buttercream/fondant, decorated with delicate edible pearl piping or beads, and topped with fresh or handcrafted edible roses. ', 3800, 'pearl.jpg'),
(17, 'A Blueberry cheese cake', 'Eggless Blueberry Cheesecake - Bake with ShiveshA blueberry cheesecake is a rich, creamy dessert featuring a thick layer of sweetened cream cheese—often blended with sour cream, vanilla, and lemon—set on a buttery graham cracker or biscuit crust. It is typically studded with blueberries and topped with a glossy, sweet-tart blueberry sauce or compote. ', 4200, 'blue.jpeg'),
(18, 'A Signature cake', 'Signature Cake - Basic 6 inch Cake - CraveBakeryandCoffeeBar.comA signature cake is a bakery\'s premier, handcrafted centerpiece designed to be a memorable, best-selling item, often featuring 3-4 layers of moist sponge with rich fillings like Swiss meringue buttercream, luscious ganache, or cream. ', 4800, 'sig.jpeg'),
(19, 'A blueberry delight cake', 'French Vanilla with Blueberry Delight Cake – De CakeryA Blueberry Delight Cake is a, light, and refreshing dessert featuring layers of soft sponge filled with tangy blueberry compote and topped with whipped cream or cream cheese frosting. Often finished with fresh blueberries, a glossy glaze, and sometimes chocolate accents, this cake balances sweet and fruity flavors. ', 4000, 'BLUEBERRY-DELIGHT.avif'),
(20, 'Chocolate chip cake', 'A chocolate chip cake isa classic, comforting dessert characterized by a moist, tender, and often buttery vanilla-forward sponge that is densely studded with melty pockets of chocolate chips. ', 2800, 'Chocolate-chip.avif'),
(21, 'A marble pound cake ', 'Marble Pound Cake Recipe - Lion\'s BreadA marble pound cake is a rich, buttery, and dense loaf cake featuring a beautiful, artistic swirl of classic vanilla and deep chocolate batters. ', 2200, 'marble.avif'),
(22, 'Tres Leaches cake', 'Tres Leches Cake, , is a popular, decadent Latin American dessert characterized by its incredibly moist, light, and airy texture.', 2200, 'tres.avif'),
(23, 'Tres Leaches cake', 'Tres Leches Cake, , is a popular, decadent Latin American dessert characterized by its incredibly moist, light, and airy texture.', 2200, 'tres.avif'),
(24, 'American friut cake', 'An American fruitcake isa dense, rich, and intensely sweet holiday cake that is packed with a high proportion of nuts and candied or dried fruits, held together by a minimal amount of spiced batter. ', 2500, 'tres.avif'),
(25, 'American friut cake', 'An American fruitcake isa dense, rich, and intensely sweet holiday cake that is packed with a high proportion of nuts and candied or dried fruits, held together by a minimal amount of spiced batter. ', 2500, 'tres.avif'),
(26, 'chocolate orange cake', 'A chocolate orange cake isa decadent, fragrant dessert that combines rich, dark chocolate with the bright, zesty aroma of fresh oranges. ', 2800, 'choc-orange.avif'),
(27, 'Italian fruit cake', 'Italian fruit cakes are diverse, ranging fromdense, chewy spice-and-nut concoctions to light, airy, and buttery yeasted breads, typically enjoyed during the Christmas season. ', 2500, 'italian.avif'),
(28, 'Cherkerboard  cake', 'A checkerboard cake isa show-stopping, multi-layered dessert featuring alternating squares of different colored or flavored sponges—typically chocolate and vanilla—arranged to look like a chessboard or checkered flag. ', 3500, 'Checker-board.avif'),
(31, 'Mango Gateau cake', 'A fresh and fruity Mango Gateau Cake made with real mango layers, soft sponge, and creamy filling. Light, tropical, and irresistibly delicious in every bite.', 3500, 'mango-gateau-full.webp'),
(33, 'choco Expresso cake', 'This cake is for all those who enjoy the blended flavour of chocolate and coffee. It is a sinful delight and will leave a lasting taste in your mouth.', 3800, 'Choco-expresso-Cake.webp'),
(34, 'Simple Mocha cake', 'A simple mocha cake isa rich, tender, and moist chocolate cake that is heightened with the deep, aromatic flavor of coffee. ', 2400, 'Simple-Mocha-Photoroom.avif'),
(35, 'Simple Mocha cake', 'A simple mocha cake isa rich, tender, and moist chocolate cake that is heightened with the deep, aromatic flavor of coffee. ', 2400, 'Simple-Mocha-Photoroom.avif'),
(36, 'Simple Mocha cake', 'A simple mocha cake isa rich, tender, and moist chocolate cake that is heightened with the deep, aromatic flavor of coffee. ', 2400, 'Simple-Mocha-Photoroom.avif'),
(37, 'Simple Mocha cake', 'A simple mocha cake isa rich, tender, and moist chocolate cake that is heightened with the deep, aromatic flavor of coffee. ', 2400, 'Simple-Mocha-Photoroom.avif');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `password`, `email`, `phone`) VALUES
(26, 'spinkid', '1234', 'gmail.com', '254115404793'),
(27, 'Timoh', '1234', 'timoh@gmail.com', '254115404793'),
(28, 'Joy', '1235', 'joy@gmail.com', '254115404783'),
(30, 'kennedy', '1235', 'ken@gmail.com', '254115404783');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `product_details`
--
ALTER TABLE `product_details`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `product_details`
--
ALTER TABLE `product_details`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;