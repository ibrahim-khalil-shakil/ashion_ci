-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 27, 2023 at 05:14 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `react_ashion`
--

-- --------------------------------------------------------

--
-- Table structure for table `blog`
--

CREATE TABLE `blog` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `writer` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `size` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `blog`
--

INSERT INTO `blog` (`id`, `title`, `writer`, `image`, `date`, `size`) VALUES
(1, 'No Bad Blood! The Reason Why Tamr Judge Finally Made Up With...', 'Emma Watson', 'img/blog/blog-1.jpg', '2023-09-01', 'Large'),
(2, 'Pot Party! See Farrah Abraham Flaunt Smoking Body At...', 'Nikki Bella', 'img/blog/blog-7.jpg', '2023-09-03', NULL),
(3, 'CMT Awards 2019 Red Carpet Arrivals Carrie Underwood, Sheryl...', 'Angelina Jolly', 'img/blog/blog-9.jpg', '2023-09-04', NULL),
(4, 'Amf Cannes Red Carpet Celebrities Kendall Jenner, Pamela...', 'Crissy Costanza', 'img/blog/blog-2.jpg', '2023-09-05', NULL),
(5, 'Kim Kardashian Steps Out In Paris Wearing Shocking Sparkly...', 'Sarah Taylor', 'img/blog/blog-4.jpg', '2023-09-06', NULL),
(6, 'A-list Battle! Angelina Jolie & Lady Gaga Fighting Over Who...', 'Alissya Healy', 'img/blog/blog-8.jpg', '2023-09-03', NULL),
(7, 'Gigi Hadid, Rita Ora, Serena & Other Hot Celebs Stun At 2019...', 'Ellisya Perry', 'img/blog/blog-10.jpg', '2023-09-04', NULL),
(8, 'Billboard Music Awards: Best, Worst & Wackiest Dresses On The...', 'Trish Stratus', 'img/blog/blog-3.jpg', '2023-09-05', NULL),
(9, 'Stephanie Pratt Busts Out Of Teeny Black Bikini During Hawaii...', 'Stephanie Jane', 'img/blog/blog-5.jpg', '2023-09-13', NULL),
(10, 'No Bad Blood! The Reason Why Tamr Judge Finally Made Up With...', 'Emma Watson', 'img/blog/blog-6.jpg', '2023-09-01', 'Large');

-- --------------------------------------------------------

--
-- Table structure for table `brand`
--

CREATE TABLE `brand` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `brand`
--

INSERT INTO `brand` (`id`, `name`) VALUES
(1, 'Gucci'),
(2, 'Louis Vuitton'),
(3, 'Versace'),
(4, 'Prada'),
(5, 'Valentino');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`) VALUES
(1, 'Women\'s Clothing'),
(2, 'Men\'s Clothing'),
(3, 'Accessories'),
(4, 'Footwear');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `website` varchar(255) DEFAULT NULL,
  `message` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `name`, `email`, `website`, `message`) VALUES
(1, 'Fuad', 'admin@gmail.com', 'www.fuad.com', 'Hi'),
(2, 'Ibrahim Khalil Shakil', 'iksakil2@gmailcom', 'www.wdpf54.tech', 'Hello'),
(3, 'Joshim', 'kgardner26@collin.edu', 'joshim.com', 'Hi, i am J'),
(4, 'Ibrahim Khalil Shakil', 'iksakil2@gmail.com', 'www.wdpf54.tech', 'Hellooooooo');

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` int(11) NOT NULL,
  `code` varchar(255) NOT NULL,
  `discount_percentage` decimal(10,2) NOT NULL,
  `expires_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `coupons`
--

INSERT INTO `coupons` (`id`, `code`, `discount_percentage`, `expires_at`) VALUES
(1, 'offer', '50.00', '2024-10-01'),
(4, 'TM62', '20.00', '2025-05-06');

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`id`, `product_id`, `image`) VALUES
(1, 1, 'img/product/product1.jpg'),
(2, 2, 'img/product/product2.jpg'),
(3, 3, 'img/product/product3.jpg'),
(4, 4, 'img/product/product4.jpg'),
(5, 5, 'img/product/product5.jpg'),
(6, 6, 'img/product/product6.jpg'),
(7, 7, 'img/product/product7.jpg'),
(8, 8, 'img/product/product8.jpg'),
(9, 1, 'img/product/product01.jpg'),
(10, 1, 'img/product/product001.jpg'),
(11, 1, 'img/product/product0001.jpg'),
(12, 3, 'img/product/product03.jpg'),
(13, 3, 'img/product/product003.jpg'),
(14, 3, 'img/product/product0003.jpg'),
(15, 2, 'img/product/product02.jpg'),
(16, 2, 'img/product/product002.jpg'),
(17, 2, 'img/product/product0002.jpg'),
(18, 4, 'img/product/product04.jpg'),
(19, 4, 'img/product/product004.jpg'),
(20, 4, 'img/product/product0004.jpg'),
(21, 5, 'img/product/product05.jpg'),
(22, 5, 'img/product/product005.jpg'),
(23, 5, 'img/product/product0005.jpg'),
(24, 6, 'img/product/product06.jpg'),
(25, 6, 'img/product/product006.jpg'),
(26, 6, 'img/product/product0006.jpg'),
(27, 7, 'img/product/product07.jpg'),
(28, 7, 'img/product/product007.jpg'),
(29, 7, 'img/product/product0007.jpg'),
(30, 8, 'img/product/product08.jpg'),
(31, 8, 'img/product/product008.jpg'),
(32, 8, 'img/product/product0008.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `instagram`
--

CREATE TABLE `instagram` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `icon` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `instagram`
--

INSERT INTO `instagram` (`id`, `name`, `image`, `icon`) VALUES
(1, '@ ashion_shop', 'img/instagram/insta-1.jpg', 'fa fa-instagram'),
(2, '@ ashion_shop', 'img/instagram/insta-2.jpg', 'fa fa-instagram'),
(3, '@ ashion_shop', 'img/instagram/insta-3.jpg', 'fa fa-instagram'),
(4, '@ ashion_shop', 'img/instagram/insta-4.jpg', 'fa fa-instagram'),
(5, '@ ashion_shop', 'img/instagram/insta-5.jpg', 'fa fa-instagram'),
(6, '@ ashion_shop', 'img/instagram/insta-6.jpg', 'fa fa-instagram');

-- --------------------------------------------------------

--
-- Table structure for table `limited_offer`
--

CREATE TABLE `limited_offer` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `tag` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `limited_offer`
--

INSERT INTO `limited_offer` (`id`, `name`, `image`, `price`, `tag`) VALUES
(1, 'Stylish Full Pant', 'img/trend/bs-1.jpg', '59.00', NULL),
(2, 'Zip-pockets pebbled tote briefcase', 'img/trend/bs-2.jpg', '79.00', NULL),
(3, 'Round leather bag', 'img/trend/bs-3.jpg', '99.00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `popular_offer`
--

CREATE TABLE `popular_offer` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `tag` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `popular_offer`
--

INSERT INTO `popular_offer` (`id`, `name`, `image`, `price`, `tag`) VALUES
(1, 'Chain bucket bag', 'img/trend/ht-1.jpg', '59.00', NULL),
(2, 'Pendant earrings', 'img/trend/ht-2.jpg', '79.00', NULL),
(3, 'Cotton T-Shirt', 'img/trend/ht-3.jpg', '99.00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `short_description` text DEFAULT NULL,
  `long_description` text DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `discount` decimal(10,2) DEFAULT NULL,
  `specification` text DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `brand_id` int(11) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `old_price` decimal(10,2) DEFAULT NULL,
  `tag` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `short_description`, `long_description`, `price`, `discount`, `specification`, `category_id`, `brand_id`, `image`, `old_price`, `tag`) VALUES
(1, 'Ulla Johnson Estelle T-shirt', 'Maecenas elementum sapien at aliquet aliquam.', 'Sed ut ex nec velit viverra dignissim sit amet ac odio. Nullam odio ligula, gravida vel ultricies nec, dignissim sed dolor. Donec in egestas risus.', '89.00', '10.00', 'Quisque eget dui tincidunt orci viverra lacinia.', 1, 3, 'img/product/65190d4c40e3f385.jpeg', '0.00', 'New'),
(3, 'Green Vida Sweatshirt', 'Maecenas elementum sapien at aliquet aliquam.', 'Sed ut ex nec velit viverra dignissim sit amet ac odio. Nullam odio ligula, gravida vel ultricies nec, dignissim sed dolor. Donec in egestas risus.', '69.00', '10.00', 'Quisque eget dui tincidunt orci viverra lacinia.', 1, 1, 'img/product/6519055b8f8f5136.jpeg', '0.00', ''),
(4, 'Oversized-fit overshirt', 'Maecenas elementum sapien at aliquet aliquam.', 'Sed ut ex nec velit viverra dignissim sit amet ac odio. Nullam odio ligula, gravida vel ultricies nec, dignissim sed dolor. Donec in egestas risus.', '79.00', '10.00', 'Quisque eget dui tincidunt orci viverra lacinia.', 2, 2, 'img/product/65190ae0d416d812.jpeg', '0.00', ''),
(5, 'Ermann Cotton Checked Shirt', 'Maecenas elementum sapien at aliquet aliquam.', 'Sed ut ex nec velit viverra dignissim sit amet ac odio. Nullam odio ligula, gravida vel ultricies nec, dignissim sed dolor. Donec in egestas risus.', '69.00', '0.00', 'Quisque eget dui tincidunt orci viverra lacinia.', 2, 4, 'img/product/651bad95d3061582.jpeg', '0.00', 'Out of Stock'),
(6, 'Pure Cotton Oxford Shirt', 'Maecenas elementum sapien at aliquet aliquam.', 'Sed ut ex nec velit viverra dignissim sit amet ac odio. Nullam odio ligula, gravida vel ultricies nec, dignissim sed dolor. Donec in egestas risus.', '69.00', '10.00', 'Quisque eget dui tincidunt orci viverra lacinia.', 2, 1, 'img/product/65190cc1a1d15345.jpeg', '99.00', 'Sale'),
(7, 'Ulla Johnson Cosette Jacket', 'Maecenas elementum sapien at aliquet aliquam.', 'Sed ut ex nec velit viverra dignissim sit amet ac odio. Nullam odio ligula, gravida vel ultricies nec, dignissim sed dolor. Donec in egestas risus.', '99.00', '10.00', 'Quisque eget dui tincidunt orci viverra lacinia.', 1, 5, 'img/product/65190c02e0801376.jpeg', '0.00', ''),
(8, 'Long Sleeve Thermal Tee', 'Maecenas elementum sapien at aliquet aliquam.', 'Sed ut ex nec velit viverra dignissim sit amet ac odio. Nullam odio ligula, gravida vel ultricies nec, dignissim sed dolor. Donec in egestas risus.', '89.00', '10.00', 'Quisque eget dui tincidunt orci viverra lacinia.', 1, 3, 'img/product/65190d3430b0d792.jpeg', '0.00', 'Out of Stock'),
(9, 'Full Sleeve Yellow Shirt', 'aaaaaaa', 'aaaaaaaaaaaaaaaaaaa', '100.00', '10.00', 'aaaaaa', 1, 4, 'img/product/651bab5081063147.jpeg', '200.00', ''),
(10, 'Heel Knee Boots', 'Maecenas elementum sapien at aliquet aliquam.', '', '89.00', '10.00', '', 4, 4, 'img/product/651bad53e3638639.jpeg', '0.00', 'New'),
(11, 'Floral Earrings', '', '', '69.00', '10.00', '', 3, 3, 'img/product/651bac51257f0636.jpeg', '99.00', 'Sale'),
(12, 'Leather Bag', '', '', '89.00', '0.00', '', 3, 2, 'img/product/651bac8fd6a51820.jpeg', '0.00', ''),
(13, 'Genuine  Bag', '', '', '69.00', '10.00', '', 3, 1, 'img/product/651bacdb11535930.jpeg', '0.00', 'New'),
(14, 'Ankle Boots', '', '', '99.00', '0.00', '', 4, 5, 'img/product/651bad1c16361531.jpeg', '0.00', 'Sale');

-- --------------------------------------------------------

--
-- Table structure for table `products_home`
--

CREATE TABLE `products_home` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `old_price` decimal(10,2) DEFAULT NULL,
  `tag` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products_home`
--

INSERT INTO `products_home` (`id`, `name`, `image`, `price`, `old_price`, `tag`) VALUES
(1, 'Hooded Wool Coat', 'img/product/651ba82405166311.jpeg', '59.00', '99.00', 'New'),
(2, 'Crocodile Leather Bag', 'img/product/651ba87434105890.jpeg', '69.00', '99.00', ''),
(3, 'Mango Pleated Midi Dress', 'img/product/651ba8936058d223.jpeg', '69.00', '99.00', 'Sale'),
(4, 'Zara Laced Ankle Boots', 'img/product/651ba8b35e882660.jpeg', '59.00', '69.00', ''),
(5, 'Zara Floral Earrings', 'img/product/651ba8cc0a32a202.jpeg', '79.00', '89.00', 'Out of Stock'),
(6, 'Equestrian Print Silk Scarf', 'img/product/651ba8f603727821.jpeg', '69.00', '99.00', ''),
(7, 'Grey Black Warm Jeans', 'img/product/651ba991dd968220.jpeg', '69.00', '99.00', ''),
(8, 'Black Block Heel Knee Boots', 'img/product/651ba9aa5687b265.jpeg', '89.00', '99.00', 'Out of Stock');

-- --------------------------------------------------------

--
-- Table structure for table `trending_offer`
--

CREATE TABLE `trending_offer` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `tag` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `trending_offer`
--

INSERT INTO `trending_offer` (`id`, `name`, `image`, `price`, `tag`) VALUES
(1, 'Bow wrap skirt', 'img/trend/f-1.jpg', '59.00', NULL),
(2, 'Metallic earrings', 'img/trend/f-2.jpg', '79.00', NULL),
(3, 'Flap cross-body bag', 'img/trend/f-3.jpg', '99.00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `token` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `image`, `token`) VALUES
(1, 'Ibrahim Khalil Shakil', 'iksakil2@gmail.com', '123', 'img/user/651baf2916a15204.png', '1696313129318b4e8cb2c535091ad16cf21961f16ad59'),
(2, 'Ibrahim Khalil Shakil', 'admin@gmail.com', '123', '', '170364827384775d23af433e0cea4c0e45a56dba18b30');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blog`
--
ALTER TABLE `blog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `brand`
--
ALTER TABLE `brand`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `instagram`
--
ALTER TABLE `instagram`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `limited_offer`
--
ALTER TABLE `limited_offer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `popular_offer`
--
ALTER TABLE `popular_offer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products_home`
--
ALTER TABLE `products_home`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `trending_offer`
--
ALTER TABLE `trending_offer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `blog`
--
ALTER TABLE `blog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `brand`
--
ALTER TABLE `brand`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `instagram`
--
ALTER TABLE `instagram`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `limited_offer`
--
ALTER TABLE `limited_offer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `popular_offer`
--
ALTER TABLE `popular_offer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `products_home`
--
ALTER TABLE `products_home`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `trending_offer`
--
ALTER TABLE `trending_offer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
