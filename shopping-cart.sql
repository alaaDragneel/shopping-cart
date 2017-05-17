-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Sep 17, 2016 at 02:10 PM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.6.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shopping-cart`
--
CREATE DATABASE IF NOT EXISTS `shopping-cart` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `shopping-cart`;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2016_09_15_090104_create_products_table', 1),
('2016_09_15_103819_create_users_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `cart` text COLLATE utf8_unicode_ci NOT NULL,
  `address` text COLLATE utf8_unicode_ci NOT NULL,
  `payment_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `name`, `cart`, `address`, `payment_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'moaalaa', 'O:8:"App\\Cart":3:{s:5:"items";a:1:{i:2;a:3:{s:3:"qty";i:1;s:5:"price";i:42;s:4:"item";O:11:"App\\Product":24:{s:11:"\0*\0fillable";a:4:{i:0;s:5:"title";i:1;s:11:"description";i:2;s:3:"img";i:3;s:5:"price";}s:13:"\0*\0connection";N;s:8:"\0*\0table";N;s:13:"\0*\0primaryKey";s:2:"id";s:10:"\0*\0keyType";s:3:"int";s:10:"\0*\0perPage";i:15;s:12:"incrementing";b:1;s:10:"timestamps";b:1;s:13:"\0*\0attributes";a:7:{s:2:"id";i:2;s:5:"title";s:62:"Aut consequatur tenetur voluptates vero et explicabo omnis id.";s:11:"description";s:77:"Minus repellat mollitia numquam delectus consequatur ut. Eos aut quos cumque.";s:3:"img";s:5:"2.jpg";s:5:"price";i:42;s:10:"created_at";s:19:"2016-09-15 09:23:52";s:10:"updated_at";s:19:"2016-09-15 09:23:52";}s:11:"\0*\0original";a:7:{s:2:"id";i:2;s:5:"title";s:62:"Aut consequatur tenetur voluptates vero et explicabo omnis id.";s:11:"description";s:77:"Minus repellat mollitia numquam delectus consequatur ut. Eos aut quos cumque.";s:3:"img";s:5:"2.jpg";s:5:"price";i:42;s:10:"created_at";s:19:"2016-09-15 09:23:52";s:10:"updated_at";s:19:"2016-09-15 09:23:52";}s:12:"\0*\0relations";a:0:{}s:9:"\0*\0hidden";a:0:{}s:10:"\0*\0visible";a:0:{}s:10:"\0*\0appends";a:0:{}s:10:"\0*\0guarded";a:1:{i:0;s:1:"*";}s:8:"\0*\0dates";a:0:{}s:13:"\0*\0dateFormat";N;s:8:"\0*\0casts";a:0:{}s:10:"\0*\0touches";a:0:{}s:14:"\0*\0observables";a:0:{}s:7:"\0*\0with";a:0:{}s:13:"\0*\0morphClass";N;s:6:"exists";b:1;s:18:"wasRecentlyCreated";b:0;}}}s:8:"totalQty";i:1;s:10:"totalPrice";i:42;}', 'tets', 'ch_18ufD2ESkVxTsRUxTNyO2Wg5', 2, '2016-09-17 07:33:59', '2016-09-17 07:33:59'),
(2, 'mohamed', 'O:8:"App\\Cart":3:{s:5:"items";a:1:{i:1;a:3:{s:3:"qty";i:1;s:5:"price";i:17;s:4:"item";O:11:"App\\Product":24:{s:11:"\0*\0fillable";a:4:{i:0;s:5:"title";i:1;s:11:"description";i:2;s:3:"img";i:3;s:5:"price";}s:13:"\0*\0connection";N;s:8:"\0*\0table";N;s:13:"\0*\0primaryKey";s:2:"id";s:10:"\0*\0keyType";s:3:"int";s:10:"\0*\0perPage";i:15;s:12:"incrementing";b:1;s:10:"timestamps";b:1;s:13:"\0*\0attributes";a:7:{s:2:"id";i:1;s:5:"title";s:63:"Velit aut a ipsum provident accusantium voluptatem impedit quo.";s:11:"description";s:143:"Perferendis ut rerum deserunt commodi. Maiores deserunt tenetur voluptatem velit fuga ut eligendi. Aut in optio maxime rerum voluptate dolorem.";s:3:"img";s:5:"1.jpg";s:5:"price";i:17;s:10:"created_at";s:19:"2016-09-15 09:23:52";s:10:"updated_at";s:19:"2016-09-15 09:23:52";}s:11:"\0*\0original";a:7:{s:2:"id";i:1;s:5:"title";s:63:"Velit aut a ipsum provident accusantium voluptatem impedit quo.";s:11:"description";s:143:"Perferendis ut rerum deserunt commodi. Maiores deserunt tenetur voluptatem velit fuga ut eligendi. Aut in optio maxime rerum voluptate dolorem.";s:3:"img";s:5:"1.jpg";s:5:"price";i:17;s:10:"created_at";s:19:"2016-09-15 09:23:52";s:10:"updated_at";s:19:"2016-09-15 09:23:52";}s:12:"\0*\0relations";a:0:{}s:9:"\0*\0hidden";a:0:{}s:10:"\0*\0visible";a:0:{}s:10:"\0*\0appends";a:0:{}s:10:"\0*\0guarded";a:1:{i:0;s:1:"*";}s:8:"\0*\0dates";a:0:{}s:13:"\0*\0dateFormat";N;s:8:"\0*\0casts";a:0:{}s:10:"\0*\0touches";a:0:{}s:14:"\0*\0observables";a:0:{}s:7:"\0*\0with";a:0:{}s:13:"\0*\0morphClass";N;s:6:"exists";b:1;s:18:"wasRecentlyCreated";b:0;}}}s:8:"totalQty";i:1;s:10:"totalPrice";i:17;}', 'asa', 'ch_18ufFoESkVxTsRUxVecbT01S', 2, '2016-09-17 07:36:51', '2016-09-17 07:36:51'),
(4, 'alaa', 'O:8:"App\\Cart":3:{s:5:"items";a:1:{i:3;a:3:{s:3:"qty";i:1;s:5:"price";i:49;s:4:"item";O:11:"App\\Product":24:{s:11:"\0*\0fillable";a:4:{i:0;s:5:"title";i:1;s:11:"description";i:2;s:3:"img";i:3;s:5:"price";}s:13:"\0*\0connection";N;s:8:"\0*\0table";N;s:13:"\0*\0primaryKey";s:2:"id";s:10:"\0*\0keyType";s:3:"int";s:10:"\0*\0perPage";i:15;s:12:"incrementing";b:1;s:10:"timestamps";b:1;s:13:"\0*\0attributes";a:7:{s:2:"id";i:3;s:5:"title";s:25:"Culpa vel eius sed natus.";s:11:"description";s:130:"Minima fuga similique aut ipsa exercitationem. Ipsum dignissimos possimus reprehenderit beatae est. Sunt dolore a consequatur aut.";s:3:"img";s:5:"3.jpg";s:5:"price";i:49;s:10:"created_at";s:19:"2016-09-15 09:23:52";s:10:"updated_at";s:19:"2016-09-15 09:23:52";}s:11:"\0*\0original";a:7:{s:2:"id";i:3;s:5:"title";s:25:"Culpa vel eius sed natus.";s:11:"description";s:130:"Minima fuga similique aut ipsa exercitationem. Ipsum dignissimos possimus reprehenderit beatae est. Sunt dolore a consequatur aut.";s:3:"img";s:5:"3.jpg";s:5:"price";i:49;s:10:"created_at";s:19:"2016-09-15 09:23:52";s:10:"updated_at";s:19:"2016-09-15 09:23:52";}s:12:"\0*\0relations";a:0:{}s:9:"\0*\0hidden";a:0:{}s:10:"\0*\0visible";a:0:{}s:10:"\0*\0appends";a:0:{}s:10:"\0*\0guarded";a:1:{i:0;s:1:"*";}s:8:"\0*\0dates";a:0:{}s:13:"\0*\0dateFormat";N;s:8:"\0*\0casts";a:0:{}s:10:"\0*\0touches";a:0:{}s:14:"\0*\0observables";a:0:{}s:7:"\0*\0with";a:0:{}s:13:"\0*\0morphClass";N;s:6:"exists";b:1;s:18:"wasRecentlyCreated";b:0;}}}s:8:"totalQty";i:1;s:10:"totalPrice";i:49;}', 'alaa', 'ch_18ufKDESkVxTsRUxbfLDYqHv', 2, '2016-09-17 07:41:24', '2016-09-17 07:41:24'),
(5, 'alaa Dragneel', 'O:8:"App\\Cart":3:{s:5:"items";a:1:{i:2;a:3:{s:3:"qty";i:1;s:5:"price";i:42;s:4:"item";O:11:"App\\Product":24:{s:11:"\0*\0fillable";a:4:{i:0;s:5:"title";i:1;s:11:"description";i:2;s:3:"img";i:3;s:5:"price";}s:13:"\0*\0connection";N;s:8:"\0*\0table";N;s:13:"\0*\0primaryKey";s:2:"id";s:10:"\0*\0keyType";s:3:"int";s:10:"\0*\0perPage";i:15;s:12:"incrementing";b:1;s:10:"timestamps";b:1;s:13:"\0*\0attributes";a:7:{s:2:"id";i:2;s:5:"title";s:62:"Aut consequatur tenetur voluptates vero et explicabo omnis id.";s:11:"description";s:77:"Minus repellat mollitia numquam delectus consequatur ut. Eos aut quos cumque.";s:3:"img";s:5:"2.jpg";s:5:"price";i:42;s:10:"created_at";s:19:"2016-09-15 09:23:52";s:10:"updated_at";s:19:"2016-09-15 09:23:52";}s:11:"\0*\0original";a:7:{s:2:"id";i:2;s:5:"title";s:62:"Aut consequatur tenetur voluptates vero et explicabo omnis id.";s:11:"description";s:77:"Minus repellat mollitia numquam delectus consequatur ut. Eos aut quos cumque.";s:3:"img";s:5:"2.jpg";s:5:"price";i:42;s:10:"created_at";s:19:"2016-09-15 09:23:52";s:10:"updated_at";s:19:"2016-09-15 09:23:52";}s:12:"\0*\0relations";a:0:{}s:9:"\0*\0hidden";a:0:{}s:10:"\0*\0visible";a:0:{}s:10:"\0*\0appends";a:0:{}s:10:"\0*\0guarded";a:1:{i:0;s:1:"*";}s:8:"\0*\0dates";a:0:{}s:13:"\0*\0dateFormat";N;s:8:"\0*\0casts";a:0:{}s:10:"\0*\0touches";a:0:{}s:14:"\0*\0observables";a:0:{}s:7:"\0*\0with";a:0:{}s:13:"\0*\0morphClass";N;s:6:"exists";b:1;s:18:"wasRecentlyCreated";b:0;}}}s:8:"totalQty";i:1;s:10:"totalPrice";i:42;}', 'asa', 'ch_18uggnESkVxTsRUxWEwvj8iX', 3, '2016-09-17 09:08:48', '2016-09-17 09:08:48'),
(7, 'alaa Dragneel', 'O:8:"App\\Cart":3:{s:5:"items";a:2:{i:5;a:3:{s:3:"qty";i:2;s:5:"price";i:56;s:4:"item";O:11:"App\\Product":24:{s:11:"\0*\0fillable";a:4:{i:0;s:5:"title";i:1;s:11:"description";i:2;s:3:"img";i:3;s:5:"price";}s:13:"\0*\0connection";N;s:8:"\0*\0table";N;s:13:"\0*\0primaryKey";s:2:"id";s:10:"\0*\0keyType";s:3:"int";s:10:"\0*\0perPage";i:15;s:12:"incrementing";b:1;s:10:"timestamps";b:1;s:13:"\0*\0attributes";a:7:{s:2:"id";i:5;s:5:"title";s:38:"Quis qui dolorum vel in quasi odio et.";s:11:"description";s:157:"Veritatis officia quod laborum in rerum doloribus vero repellendus. Labore inventore aut velit culpa impedit. Quo laboriosam ullam minus dolores magnam amet.";s:3:"img";s:5:"5.png";s:5:"price";i:28;s:10:"created_at";s:19:"2016-09-15 09:23:52";s:10:"updated_at";s:19:"2016-09-15 09:23:52";}s:11:"\0*\0original";a:7:{s:2:"id";i:5;s:5:"title";s:38:"Quis qui dolorum vel in quasi odio et.";s:11:"description";s:157:"Veritatis officia quod laborum in rerum doloribus vero repellendus. Labore inventore aut velit culpa impedit. Quo laboriosam ullam minus dolores magnam amet.";s:3:"img";s:5:"5.png";s:5:"price";i:28;s:10:"created_at";s:19:"2016-09-15 09:23:52";s:10:"updated_at";s:19:"2016-09-15 09:23:52";}s:12:"\0*\0relations";a:0:{}s:9:"\0*\0hidden";a:0:{}s:10:"\0*\0visible";a:0:{}s:10:"\0*\0appends";a:0:{}s:10:"\0*\0guarded";a:1:{i:0;s:1:"*";}s:8:"\0*\0dates";a:0:{}s:13:"\0*\0dateFormat";N;s:8:"\0*\0casts";a:0:{}s:10:"\0*\0touches";a:0:{}s:14:"\0*\0observables";a:0:{}s:7:"\0*\0with";a:0:{}s:13:"\0*\0morphClass";N;s:6:"exists";b:1;s:18:"wasRecentlyCreated";b:0;}}i:6;a:3:{s:3:"qty";i:1;s:5:"price";i:33;s:4:"item";O:11:"App\\Product":24:{s:11:"\0*\0fillable";a:4:{i:0;s:5:"title";i:1;s:11:"description";i:2;s:3:"img";i:3;s:5:"price";}s:13:"\0*\0connection";N;s:8:"\0*\0table";N;s:13:"\0*\0primaryKey";s:2:"id";s:10:"\0*\0keyType";s:3:"int";s:10:"\0*\0perPage";i:15;s:12:"incrementing";b:1;s:10:"timestamps";b:1;s:13:"\0*\0attributes";a:7:{s:2:"id";i:6;s:5:"title";s:61:"Quia perspiciatis occaecati et rem pariatur eveniet non quia.";s:11:"description";s:162:"Sequi qui quia eligendi accusantium. Et non autem eligendi minima molestiae. Numquam asperiores velit nobis et. Aspernatur et ullam eum illum voluptatem eius nam.";s:3:"img";s:10:"defult.jpg";s:5:"price";i:33;s:10:"created_at";s:19:"2016-09-15 09:30:46";s:10:"updated_at";s:19:"2016-09-15 09:30:46";}s:11:"\0*\0original";a:7:{s:2:"id";i:6;s:5:"title";s:61:"Quia perspiciatis occaecati et rem pariatur eveniet non quia.";s:11:"description";s:162:"Sequi qui quia eligendi accusantium. Et non autem eligendi minima molestiae. Numquam asperiores velit nobis et. Aspernatur et ullam eum illum voluptatem eius nam.";s:3:"img";s:10:"defult.jpg";s:5:"price";i:33;s:10:"created_at";s:19:"2016-09-15 09:30:46";s:10:"updated_at";s:19:"2016-09-15 09:30:46";}s:12:"\0*\0relations";a:0:{}s:9:"\0*\0hidden";a:0:{}s:10:"\0*\0visible";a:0:{}s:10:"\0*\0appends";a:0:{}s:10:"\0*\0guarded";a:1:{i:0;s:1:"*";}s:8:"\0*\0dates";a:0:{}s:13:"\0*\0dateFormat";N;s:8:"\0*\0casts";a:0:{}s:10:"\0*\0touches";a:0:{}s:14:"\0*\0observables";a:0:{}s:7:"\0*\0with";a:0:{}s:13:"\0*\0morphClass";N;s:6:"exists";b:1;s:18:"wasRecentlyCreated";b:0;}}}s:8:"totalQty";i:3;s:10:"totalPrice";i:89;}', 'asd', 'ch_18ugj3ESkVxTsRUxy14IBMSx', 3, '2016-09-17 09:11:07', '2016-09-17 09:11:07');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `img` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `title`, `description`, `img`, `price`, `created_at`, `updated_at`) VALUES
(1, 'Velit aut a ipsum provident accusantium voluptatem impedit quo.', 'Perferendis ut rerum deserunt commodi. Maiores deserunt tenetur voluptatem velit fuga ut eligendi. Aut in optio maxime rerum voluptate dolorem.', '1.jpg', 17, '2016-09-15 07:23:52', '2016-09-15 07:23:52'),
(2, 'Aut consequatur tenetur voluptates vero et explicabo omnis id.', 'Minus repellat mollitia numquam delectus consequatur ut. Eos aut quos cumque.', '2.jpg', 42, '2016-09-15 07:23:52', '2016-09-15 07:23:52'),
(3, 'Culpa vel eius sed natus.', 'Minima fuga similique aut ipsa exercitationem. Ipsum dignissimos possimus reprehenderit beatae est. Sunt dolore a consequatur aut.', '3.jpg', 49, '2016-09-15 07:23:52', '2016-09-15 07:23:52'),
(4, 'Voluptas voluptas incidunt laboriosam dolor inventore.', 'Amet aliquam beatae molestias nostrum totam et asperiores. Recusandae non enim laboriosam veritatis. Consequatur consequatur nam quam nobis dolorem. Ab ut hic est expedita.', '4.jpg', 33, '2016-09-15 07:23:52', '2016-09-15 07:23:52'),
(5, 'Quis qui dolorum vel in quasi odio et.', 'Veritatis officia quod laborum in rerum doloribus vero repellendus. Labore inventore aut velit culpa impedit. Quo laboriosam ullam minus dolores magnam amet.', '5.png', 28, '2016-09-15 07:23:52', '2016-09-15 07:23:52'),
(6, 'Quia perspiciatis occaecati et rem pariatur eveniet non quia.', 'Sequi qui quia eligendi accusantium. Et non autem eligendi minima molestiae. Numquam asperiores velit nobis et. Aspernatur et ullam eum illum voluptatem eius nam.', 'defult.jpg', 33, '2016-09-15 07:30:46', '2016-09-15 07:30:46');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(2, 'sasuke_alaa@yahoo.com', '$2y$10$/.QbqpkgzIjqr.QJTO4tC.RPCPUtpR3LxvZNEQKL6GTPKdJ5BM5se', 'O4UiNYjLckq9i5h4jdav1UUIi6HsRFA2jiPofBgEnRsEua9xcRiL7kbpvVX4', '2016-09-17 07:31:34', '2016-09-17 09:08:15'),
(3, 'alaa_dragneel@yahoo.com', '$2y$10$REV0q2ahBn3tVNLHp6SX7erw9C0J7PUmjMr76jjLAwBuvsDuY.ELW', 'PSVVTcIkszhvcpqOsf2YBHFTKBPHT13sWfio9VS3n3zI3qhgSFFeP6f2rJla', '2016-09-17 08:02:01', '2016-09-17 10:00:02');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `user_order` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
