-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net

-- Host: 127.0.0.1
-- Server version: 10.1.16-MariaDB
-- PHP Version: 7.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `webproject`
--

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `brand_id` int(100) NOT NULL,
  `brand_title` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`brand_id`, `brand_title`) VALUES
(1, 'HP'),
(2, 'Samsung'),
(3, 'Apple'),
(4, 'Sony'),
(5, 'LG'),
(6, 'Pantaloons');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(10) NOT NULL,
  `p_id` int(10) NOT NULL,
  `ip_add` varchar(250) NOT NULL,
  `user_id` int(10) DEFAULT NULL, 
  `qty` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `cat_id` int(100) NOT NULL,
  `cat_title` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`cat_id`, `cat_title`) VALUES
(1, 'Electronics'),
(2, 'Apparels for Women'),
(3, 'Apparels for Men'),
(4, 'Kidswear'),
(5, 'Furniture'),
(6, 'Home Appliances');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `trx_id` varchar(255) NOT NULL,
  `p_status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `user_id`, `product_id`, `qty`, `trx_id`, `p_status`) VALUES
(1, 1, 7, 1, '07M47684BS5725041', 'Completed'),
(2, 1, 2, 1, '07M47684BS5725041', 'Completed');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(100) NOT NULL,
  `product_cat` int(100) NOT NULL,
  `product_brand` int(100) NOT NULL,
  `product_title` varchar(255) NOT NULL,
  `product_price` int(100) NOT NULL,
  `product_desc` text NOT NULL,
  `product_image` text NOT NULL,
  `product_keywords` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `product_cat`, `product_brand`, `product_title`, `product_price`, `product_desc`, `product_image`, `product_keywords`) VALUES
(1, 1, 2, 'Samsung Galaxy S', 5000, 'Samsung Dous 2 SGH ', 'samsung mobile.jpg', 'samsung galaxy'),
(2, 1, 3, 'iPhone 5s', 25000, 'iphone 5s', 'iphone mobile.jpg', 'iphone 5'),
(3, 1, 3, 'iPad', 30000, 'ipad apple brand', 'ipad.jpg', 'ipad'),
(4, 1, 3, 'iPhone 6s', 32000, 'Apple iPhone ', 'iphone.jpg', 'iphone 6'),
(5, 1, 3, 'iPad 2', 10000, 'samsung ipad', 'ipad 2.jpg', 'ipad 2'),
(6, 1, 1, 'Hp Laptop R series', 35000, 'Hp Red and Black combination Laptop', 'k2-_ed8b8f8d-e696-4a96-8ce9-d78246f10ed1.v1.jpg-bc204bdaebb10e709a997a8bb4518156dfa6e3ed-optim-450x450.jpg', 'hp laptop r series '),
(7, 1, 1, 'HP Pavilion', 50000, 'Laptop Hp Pavillion', '12039452_525963140912391_6353341236808813360_n.png', 'hp pavilion'),
(8, 1, 4, 'Sony', 40000, 'Sony Mobile', 'sony mobile.jpg', 'sony phone'),
(9, 1, 3, 'iPhone 3', 12000, 'iphone', 'white iphone.png', 'iphone 3'),
(10, 2, 6, 'Pink Embroidered Dress', 1000, 'red dress for girls', 'red dress.jpg', 'pink dress'),
(11, 4, 6, 'Blue Jacket Kids', 1200, 'Blue dress', 'images.jpg', 'blue jacket'),
(12, 2, 6, 'Women Grey Dress', 1500, 'ladies casual summer two colors pleted', '7475-ladies-casual-dresses-summer-two-colors-pleated.jpg', 'womens grey dress'),
(13, 2, 6, 'Formals Women', 1200, 'girls dress', 'Spring-Autumn-Winter-Young-Ladies-Casual-Wool-Dress-Women-s-One-Piece-Dresse-Dating-Clothes-Medium.jpg_640x640.jpg', 'formals women'),
(14, 4, 6, 'Kids Kurta', 1400, 'girl dress', 'download.jpg', 'kids kurta'),
(15, 2, 6, 'Women Flowing Dress', 1500, 'girl dress', 'shutterstock_203611819.jpg', 'womens flowing dress'),
(16, 3, 6, 'Men Jacket', 600, '2012-Winter-Sweater-for-Men-for-better-outlook', '2012-Winter-Sweater-for-Men-for-better-outlook.jpg', 'mens jacket'),
(17, 3, 6, 'Men Formal White Shirt', 1000, 'gents formal look', 'gents-formal-250x250.jpg', 'mens formal white shirt'),
(19, 4, 6, 'Kids Sherwani', 3000, 'ad', 'images (1).jpg', 'kids sherwani'),
(20, 3, 6, 'Men Sweater Winter collection', 1600, 'jg', 'Winter-fashion-men-burst-sweater.png', 'mens sweater'),
(21, 3, 6, 'Black T-shirt', 800, 'ssds', 'IN-Mens-Apparel-Voodoo-Tiles-09._V333872612_.jpg', 'black t shirt'),
(22, 4, 6, 'Kids Yellow T-shirt ', 1300, 'yello t shirt with pant', '1.0x0.jpg', 'kids yellow t shirt'),
(23, 4, 6, 'Kids Girls Dress', 1900, 'kids dress', 'GirlsClothing_Widgets.jpg', 'kids girls dress'),
(25, 4, 6, 'Yellow Salwaar Kids', 750, 'yellow salwaar kids', 'images (3).jpg', 'yellow salwar kids'),
(26, 4, 6, 'Girls Blue Top Kids', 650, 'girls blue top', 'kids-wear-121.jpg', 'girls blue top kids'),
(27, 4, 6, 'Checked Shirt Kids', 690, 'shirt for kids', 'image28.jpg', 'checked shirt kids'),
(32, 5, 0, 'Stylish Book Shelf', 2500, 'Book shelf', 'furniture-book-shelf-250x250.jpg', 'stylish book shelf'),
(33, 6, 5, 'LG Refrigerator', 35000, 'Refrigerator', 'CT_WM_BTS-BTC-AppliancesHome_20150723.jpg', 'fridge'),
(34, 6, 4, 'Sony Emergency Light', 1000, 'Emergency Light', 'emergency light.JPG', 'emergency light'),
(35, 4, 6, 'Kids Salwar Suit for Girls', 6000, 'Kids salwar Suit', 'images (2).jpg', 'kids salwar suit'),
(36, 6, 5, 'LG Iron', 1500, 'iron', 'iron.JPG', 'iron'),
(37, 6, 5, 'LG LED TV', 20000, 'LED TV', 'images (4).jpg', 'led tv'),
(38, 6, 5, 'LG Microwave Oven', 3500, 'Microwave Oven', 'images.jpg', 'microwave oven'),
(39, 6, 5, 'LG Mixer Grinder', 2500, 'Mixer Grinder', 'singer-mixer-grinder-mg-46-medium_4bfa018096c25dec7ba0af40662856ef.jpg', 'mixer grinder');

-- --------------------------------------------------------

--
-- Table structure for table `user_info`
--

CREATE TABLE `user_info` (
  `user_id` int(10) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `age` int(3) NOT NULL,
  `email` varchar(300) NOT NULL,
  `password` varchar(300) NOT NULL,
  `mobile` varchar(10) NOT NULL,
  `address1` varchar(300) NOT NULL,
  `address2` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_info`
--

INSERT INTO `user_info` (`user_id`, `first_name`, `last_name`, `age` , `email`, `password`, `mobile`, `address1`, `address2`) VALUES
(1, 'Suman', 'Shaw', 22 , 'sumanshaw7670@gmail.com' , 'password12345', '7019120290', 'A601 Vasundhara Krithika', 'Bangalore'),
(2, 'Sahana', 'C' , 20 , 'sahana1908@gmail.com' , 'password12345' , '9999999999' , 'absndhjwgfjh' , 'ghsfdgfjhfj' );


--
-- Indexes for dumped tables
--

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`brand_id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `user_info`
--
ALTER TABLE `user_info`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `brand_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `cat_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;
--
-- AUTO_INCREMENT for table `user_info`
--
ALTER TABLE `user_info`
  MODIFY `user_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
