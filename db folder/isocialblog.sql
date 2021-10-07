-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 07, 2021 at 07:32 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `isocialblog`
--

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `post_id`, `user_id`, `message`, `created_at`, `updated_at`) VALUES
(1, 36, 7, 'Et et est eos suscipit unde corrupti eos reiciendis. Amet omnis soluta ut occaecati id corrupti. Numquam consequatur tempora at libero. Temporibus aut minima quo natus aperiam.', '2021-10-06 22:48:29', '2021-10-06 22:48:29'),
(2, 15, 5, 'Dolorem mollitia magnam illo dolorum distinctio. Repellendus officiis esse harum corporis. Consequatur animi in omnis nihil nobis quae expedita. Soluta quo temporibus velit rerum qui eligendi sed.', '2021-10-06 22:48:29', '2021-10-06 22:48:29'),
(3, 44, 1, 'Veritatis recusandae ut dolorem saepe perspiciatis eum. Ut voluptatibus quaerat et repellendus sit maiores. Quaerat rerum dolorem natus nihil et dicta odio.', '2021-10-06 22:48:29', '2021-10-06 22:48:29'),
(4, 20, 9, 'Est iste harum omnis nostrum nihil odit ducimus. Deleniti asperiores tempora numquam veniam molestiae aut provident.', '2021-10-06 22:48:29', '2021-10-06 22:48:29'),
(5, 37, 7, 'Unde soluta iusto vel et voluptas. Incidunt ratione ad culpa. Amet corporis et voluptatem et. Praesentium incidunt qui temporibus corrupti vel vel.', '2021-10-06 22:48:29', '2021-10-06 22:48:29'),
(6, 44, 10, 'Aut molestias ea fuga hic. Quia repellat totam et nihil impedit mollitia. Ipsa nostrum aperiam velit sunt dolore adipisci omnis. Et officia atque necessitatibus aperiam sed quos.', '2021-10-06 22:48:29', '2021-10-06 22:48:29'),
(7, 23, 10, 'Praesentium laborum rerum fugit cumque odit culpa. Quibusdam deserunt aut id. Sit cupiditate sit fuga natus aspernatur.', '2021-10-06 22:48:29', '2021-10-06 22:48:29'),
(8, 25, 8, 'Eligendi ut nobis adipisci quae. Molestias perspiciatis debitis assumenda vel vel voluptatum. Ipsam sint quo facilis ea velit corporis.', '2021-10-06 22:48:29', '2021-10-06 22:48:29'),
(9, 29, 7, 'Eveniet sed optio reiciendis corrupti et iste sit possimus. Itaque voluptatem omnis atque est excepturi deserunt. Recusandae molestiae laborum voluptas.', '2021-10-06 22:48:29', '2021-10-06 22:48:29'),
(10, 47, 2, 'Dicta voluptas et sed culpa cupiditate dicta. In fuga quas iure. Pariatur blanditiis iure hic delectus. Ipsum sit nihil neque deleniti explicabo distinctio magni consequatur. Modi quia nobis ipsam eos omnis et sed.', '2021-10-06 22:48:29', '2021-10-06 22:48:29'),
(11, 33, 6, 'Quos voluptates cupiditate commodi ducimus praesentium numquam. Dignissimos dolore autem similique consequatur nihil. Velit architecto ducimus itaque adipisci quo corrupti itaque.', '2021-10-06 22:48:29', '2021-10-06 22:48:29'),
(12, 37, 7, 'Alias consequatur quod voluptas quia omnis. Omnis iure fuga et illum unde. Accusantium veritatis dolorum ut voluptas omnis et voluptas occaecati.', '2021-10-06 22:48:29', '2021-10-06 22:48:29'),
(13, 5, 5, 'Quia ullam quia culpa est eum qui. Harum in impedit sint iste fugit. Minus labore et placeat qui adipisci tempora. Sit ut impedit saepe praesentium animi.', '2021-10-06 22:48:29', '2021-10-06 22:48:29'),
(14, 11, 9, 'Minus libero dolorum voluptas eius. Quibusdam iste animi ea voluptate occaecati. Iusto non enim nulla sed.', '2021-10-06 22:48:29', '2021-10-06 22:48:29'),
(15, 25, 5, 'Esse dolor non consequatur hic et. Aut dolores veniam libero et et. Nemo laborum quia numquam aut et. Placeat voluptatibus perspiciatis veniam libero quasi est.', '2021-10-06 22:48:29', '2021-10-06 22:48:29'),
(16, 39, 4, 'Veniam molestiae sunt rem ut beatae voluptatem. Explicabo rem omnis id amet. Corporis mollitia voluptas est nobis recusandae eum aut.', '2021-10-06 22:48:29', '2021-10-06 22:48:29'),
(17, 4, 9, 'Sunt quia animi debitis exercitationem asperiores. Itaque nisi velit qui dolorem consequatur eius et. Aut culpa voluptates dolor est quam sunt cum. Ratione ut velit consequatur beatae. Cupiditate repellendus modi possimus adipisci officiis debitis.', '2021-10-06 22:48:29', '2021-10-06 22:48:29'),
(18, 36, 2, 'Tempora voluptatem sint id nobis est. Aliquid minus eaque tenetur sit.', '2021-10-06 22:48:29', '2021-10-06 22:48:29'),
(19, 27, 4, 'Quia commodi alias et. Debitis nulla suscipit et culpa. Vel sed quia sit accusamus nobis voluptatem aliquam.', '2021-10-06 22:48:29', '2021-10-06 22:48:29'),
(20, 48, 6, 'Debitis esse rerum non hic vel explicabo ab omnis. Aperiam quaerat nisi minima corrupti corporis minima. Dolore perspiciatis fugiat cupiditate distinctio aut aut.', '2021-10-06 22:48:29', '2021-10-06 22:48:29'),
(21, 49, 3, 'Aut cupiditate aut in quia enim eius qui. Laboriosam est velit iste voluptatem dolor ut sint.', '2021-10-06 22:48:29', '2021-10-06 22:48:29'),
(22, 26, 6, 'Eveniet officia qui blanditiis sunt nisi numquam accusantium. Esse sed consequatur cupiditate. Aliquid officiis et facilis nihil ad consequuntur. Aut occaecati qui provident vitae eum voluptatem.', '2021-10-06 22:48:29', '2021-10-06 22:48:29'),
(23, 9, 10, 'Enim voluptatem sint asperiores sapiente in dolore et. Ut tempora voluptatem autem excepturi. Est dolore enim et est eum. Ut in omnis et inventore rerum excepturi at.', '2021-10-06 22:48:29', '2021-10-06 22:48:29'),
(24, 16, 6, 'Ut incidunt fuga aut sit. Quia id amet saepe repudiandae exercitationem est labore. Omnis earum qui assumenda expedita in voluptas quia. Nemo doloremque eveniet sed architecto.', '2021-10-06 22:48:29', '2021-10-06 22:48:29'),
(25, 24, 1, 'Iure sit provident corrupti quas molestias et assumenda. Et quis ut a repellat sint quibusdam repellendus numquam. Ut qui commodi et rerum rerum quis sunt dolores.', '2021-10-06 22:48:29', '2021-10-06 22:48:29'),
(26, 40, 3, 'Aspernatur voluptatum et est impedit qui. Reprehenderit est libero ut nihil quia et. Illum in at blanditiis recusandae.', '2021-10-06 22:48:29', '2021-10-06 22:48:29'),
(27, 21, 4, 'Aspernatur quaerat et corporis eius. Voluptatibus id molestiae consequatur deleniti soluta. Est molestiae est voluptatem voluptas sit sed culpa. Consectetur atque placeat accusantium quaerat.', '2021-10-06 22:48:29', '2021-10-06 22:48:29'),
(28, 40, 5, 'Pariatur aspernatur et qui laborum ducimus. Libero dolore aspernatur voluptatem id. Consequuntur quas et voluptatibus et et ut sed. Magni et provident est nostrum reiciendis suscipit ducimus.', '2021-10-06 22:48:29', '2021-10-06 22:48:29'),
(29, 43, 2, 'Et dolores similique quia provident eveniet velit. Rem in commodi nemo qui. Eum labore voluptatum eligendi molestiae itaque et et quibusdam. Reprehenderit dignissimos maiores voluptatem qui tempore iste.', '2021-10-06 22:48:29', '2021-10-06 22:48:29'),
(30, 7, 5, 'Rerum necessitatibus sunt deleniti dolore voluptas. Sed ea qui ipsum id ut voluptas. Porro est ea et officiis eligendi.', '2021-10-06 22:48:29', '2021-10-06 22:48:29'),
(31, 42, 9, 'Nemo est sint deleniti in eius autem eos. Ut cumque quod temporibus iusto voluptatem sint. Voluptatem ex rerum beatae dolores cum. Non perferendis laborum omnis id sit fuga dolor.', '2021-10-06 22:48:29', '2021-10-06 22:48:29'),
(32, 8, 7, 'Accusantium eveniet eveniet sed accusamus voluptas. Adipisci corporis quos eius ea sint ullam quae. Dolorem porro deserunt est animi odio. Earum et consectetur aut voluptatem cum. Accusantium nesciunt quia et deserunt laborum vel odio.', '2021-10-06 22:48:29', '2021-10-06 22:48:29'),
(33, 2, 3, 'Qui iste a sunt ratione eum enim. Beatae ea sapiente voluptas odit. Accusantium reprehenderit ea explicabo sit asperiores minus voluptatem at. Dolore voluptatem nemo qui et labore.', '2021-10-06 22:48:29', '2021-10-06 22:48:29'),
(34, 37, 2, 'Quasi facilis harum reprehenderit. Dolore numquam nihil hic totam voluptas nulla suscipit. Culpa ut deserunt et non doloribus doloribus itaque.', '2021-10-06 22:48:29', '2021-10-06 22:48:29'),
(35, 28, 4, 'Voluptatibus aspernatur alias eveniet mollitia. Est ipsum sit magni voluptas. Consequatur rerum perspiciatis architecto totam.', '2021-10-06 22:48:29', '2021-10-06 22:48:29'),
(36, 22, 10, 'Aut rerum veritatis blanditiis et. Vitae impedit quia iste laborum aliquid quos et. Recusandae eos et quis. Rem quaerat excepturi cum ut qui odio.', '2021-10-06 22:48:29', '2021-10-06 22:48:29'),
(37, 9, 4, 'Et nisi voluptatem doloribus modi quas laudantium. Quod itaque velit delectus beatae. Tempora quia nulla accusamus minima. Assumenda repudiandae a eligendi id ut.', '2021-10-06 22:48:29', '2021-10-06 22:48:29'),
(38, 9, 6, 'Qui sed possimus magnam sint. Rerum ut occaecati at saepe cumque adipisci debitis. Vel accusamus ad adipisci aut.', '2021-10-06 22:48:29', '2021-10-06 22:48:29'),
(39, 49, 4, 'Quas ad voluptates sit dignissimos rerum dolor. Eum ratione blanditiis voluptatem et beatae eaque. Et ad reprehenderit recusandae animi.', '2021-10-06 22:48:29', '2021-10-06 22:48:29'),
(40, 50, 8, 'Itaque et non in sed illum rem. Omnis et perspiciatis molestiae voluptatum et perspiciatis. Quis deleniti consequatur sint blanditiis. Neque earum reprehenderit quisquam accusantium perspiciatis placeat.', '2021-10-06 22:48:29', '2021-10-06 22:48:29'),
(41, 49, 7, 'Et et necessitatibus quia quae. Aut cum quasi incidunt architecto. Assumenda quidem necessitatibus autem a quibusdam.', '2021-10-06 22:48:29', '2021-10-06 22:48:29'),
(42, 44, 6, 'Qui accusantium quas tenetur officiis deleniti in. Optio dolore et maxime consectetur. Consequuntur dolore consequatur voluptates iusto et doloremque eos. Officiis quidem velit vitae.', '2021-10-06 22:48:29', '2021-10-06 22:48:29'),
(43, 7, 4, 'Doloremque ut in non ipsum enim et veritatis hic. Laboriosam ducimus sequi sed consequatur. Dicta ut laudantium animi vel quia dolorem dolorem. Animi molestiae vel laborum.', '2021-10-06 22:48:29', '2021-10-06 22:48:29'),
(44, 5, 5, 'Modi illo minima quibusdam recusandae aliquam. Eligendi eveniet aut asperiores id cupiditate reiciendis officia qui. Libero temporibus tempora placeat qui laboriosam iure sunt. Dolore voluptas esse aut facilis molestiae ut.', '2021-10-06 22:48:29', '2021-10-06 22:48:29'),
(45, 26, 5, 'Ipsum maxime minima recusandae iste reiciendis. Sed enim cumque corporis quaerat atque accusantium architecto. Tempora sed error possimus itaque. Et nam ut suscipit.', '2021-10-06 22:48:29', '2021-10-06 22:48:29'),
(46, 1, 4, 'Minus quia corrupti repellat reprehenderit aut veniam. Rerum assumenda delectus temporibus esse vel sunt sint. Optio repudiandae et quo.', '2021-10-06 22:48:29', '2021-10-06 22:48:29'),
(47, 30, 6, 'Aut omnis distinctio eveniet eligendi nesciunt. Quidem atque nihil recusandae blanditiis veniam. Inventore consequatur porro optio quam omnis eligendi rerum qui. Aut ducimus et quo.', '2021-10-06 22:48:29', '2021-10-06 22:48:29'),
(48, 15, 4, 'Enim commodi ipsum facilis. Iure perferendis voluptatibus maxime soluta. Rem rerum nihil perferendis qui. Et ab magni quae enim ab ut omnis sunt. Perspiciatis cumque ea perferendis.', '2021-10-06 22:48:29', '2021-10-06 22:48:29'),
(49, 12, 6, 'Omnis neque quia voluptates enim eum quaerat facere. Nostrum aperiam voluptas tempora ut reprehenderit. Reiciendis odit rerum ab omnis qui reiciendis perspiciatis.', '2021-10-06 22:48:29', '2021-10-06 22:48:29'),
(50, 16, 1, 'Qui provident quia est. Sit non ab assumenda eius asperiores. Et nisi consectetur dolores facilis reprehenderit.', '2021-10-06 22:48:29', '2021-10-06 22:48:29'),
(51, 42, 1, 'Aliquid et rerum similique esse alias ea sunt. Illo ut rerum fugit mollitia est. Qui qui nemo ut vitae.', '2021-10-06 22:48:29', '2021-10-06 22:48:29'),
(52, 37, 10, 'Ducimus voluptatem repellendus voluptatem amet doloribus. Dolor animi molestiae corrupti veniam architecto aut.', '2021-10-06 22:48:29', '2021-10-06 22:48:29'),
(53, 6, 4, 'Harum dolorem dicta officiis sed libero quibusdam ab. Cumque placeat aspernatur fugiat aut. Omnis deleniti dolores nam voluptatibus sint mollitia officia. Nihil enim iusto non.', '2021-10-06 22:48:29', '2021-10-06 22:48:29'),
(54, 21, 5, 'Veritatis et ab inventore totam et consequatur facilis dolor. Rem esse neque eius voluptatibus sit rerum. Minima nemo quo error dolor. Aut eveniet occaecati labore quia.', '2021-10-06 22:48:29', '2021-10-06 22:48:29'),
(55, 12, 9, 'Distinctio adipisci ut quibusdam ratione accusamus. Repudiandae voluptatem dolore at sed sed sequi. Impedit sit fugiat a magni ex.', '2021-10-06 22:48:29', '2021-10-06 22:48:29'),
(56, 20, 2, 'Et qui consectetur non rerum repellendus. Adipisci asperiores consequatur suscipit. Dolores repellat non occaecati fugiat.', '2021-10-06 22:48:29', '2021-10-06 22:48:29'),
(57, 12, 8, 'Autem in quasi ducimus earum. Mollitia est in sunt. Quisquam explicabo perspiciatis doloribus velit aut. Officia quia minus quo saepe veniam totam sapiente. Illum rerum odio est.', '2021-10-06 22:48:29', '2021-10-06 22:48:29'),
(58, 20, 6, 'Quis perferendis quaerat deserunt et ipsa temporibus. Dolor saepe doloremque nisi placeat dolorum maxime. Neque voluptatem debitis nobis nesciunt optio laudantium. Eveniet non consequatur ratione accusantium fuga nihil et.', '2021-10-06 22:48:29', '2021-10-06 22:48:29'),
(59, 32, 3, 'Qui quia cum aut adipisci quo sit. Consequatur iusto quia blanditiis rem voluptatem molestiae suscipit iure. Aut doloremque iusto consectetur veniam id explicabo natus est. Rerum sunt at ut vitae sint quae sequi.', '2021-10-06 22:48:29', '2021-10-06 22:48:29'),
(60, 27, 6, 'Deserunt earum laborum qui cupiditate et. Ea sunt qui ut repudiandae et doloribus. Soluta dolore rerum aliquid quo quam. Excepturi perspiciatis architecto sunt.', '2021-10-06 22:48:29', '2021-10-06 22:48:29'),
(61, 8, 6, 'Omnis dolorum facilis aut nostrum. Exercitationem architecto et beatae qui voluptatibus quo.', '2021-10-06 22:48:29', '2021-10-06 22:48:29'),
(62, 37, 8, 'Ducimus voluptatem quia adipisci voluptatem voluptas doloribus. Sed maxime voluptatum velit dolorem aliquam aliquam quisquam qui. Laborum animi quia et asperiores iste eos.', '2021-10-06 22:48:29', '2021-10-06 22:48:29'),
(63, 30, 2, 'Sed quo perferendis soluta assumenda tenetur. Facere molestiae ratione eos sit nam cupiditate. Suscipit enim id explicabo autem illo.', '2021-10-06 22:48:29', '2021-10-06 22:48:29'),
(64, 27, 10, 'Voluptates ipsam in sit quis velit. Quis et quod optio atque non. Rerum dolorem quod provident enim.', '2021-10-06 22:48:29', '2021-10-06 22:48:29'),
(65, 38, 9, 'Aliquid molestiae exercitationem autem veritatis tempora ducimus. Quia aliquam voluptate magni fugit. Sit optio autem architecto eum at. Nisi fugiat quisquam aut placeat ut ad.', '2021-10-06 22:48:29', '2021-10-06 22:48:29'),
(66, 43, 10, 'Qui accusantium facilis culpa ab. Sit numquam vel quis et enim. Id soluta et quam consectetur neque et impedit. Qui voluptates fugiat fugit reiciendis odit doloribus laboriosam.', '2021-10-06 22:48:29', '2021-10-06 22:48:29'),
(67, 12, 9, 'Magni illo veniam beatae sed et aut. Ut accusantium ut incidunt odit et temporibus nihil. Facilis minus minima ab magnam corrupti fuga suscipit. Et aut id at alias necessitatibus quia autem.', '2021-10-06 22:48:29', '2021-10-06 22:48:29'),
(68, 11, 3, 'Aliquam incidunt sed rerum mollitia. Nam tempore officia voluptatem commodi. Eligendi eligendi perferendis officiis. Iure voluptatem facere sed voluptas.', '2021-10-06 22:48:29', '2021-10-06 22:48:29'),
(69, 49, 2, 'Eligendi sint nihil minima labore. Eius minus quas eligendi voluptatem.', '2021-10-06 22:48:29', '2021-10-06 22:48:29'),
(70, 19, 5, 'Architecto dolor animi repellendus necessitatibus consequuntur. Et sapiente dolorem alias nemo beatae architecto laboriosam adipisci. Doloremque dolore voluptates iste quis ullam animi.', '2021-10-06 22:48:29', '2021-10-06 22:48:29'),
(71, 41, 5, 'Aperiam voluptatem dolores ut soluta et. Est quis et tempore architecto et. Odio modi unde sit.', '2021-10-06 22:48:29', '2021-10-06 22:48:29'),
(72, 46, 4, 'Occaecati eaque aperiam corporis autem non assumenda sit. Dolore et nisi in aut in. Quidem consectetur dolor id. Assumenda nihil quae sint quia dolor cumque totam. Quidem velit suscipit dolor nihil.', '2021-10-06 22:48:29', '2021-10-06 22:48:29'),
(73, 37, 6, 'Dolorum qui exercitationem rerum sunt quaerat ut. Aut magni ut aut. Omnis voluptatibus nihil dolores consequuntur sed reiciendis placeat. Dignissimos tempora recusandae qui occaecati autem minima.', '2021-10-06 22:48:29', '2021-10-06 22:48:29'),
(74, 22, 5, 'Facere qui autem modi unde quis. Repellendus iusto non odit ad expedita ipsam. Ab enim culpa minus.', '2021-10-06 22:48:29', '2021-10-06 22:48:29'),
(75, 34, 7, 'Natus cupiditate corporis facere et. Corporis exercitationem ut occaecati modi molestiae qui. Et iure quidem quia ut ratione quae fuga. Ad quam maxime alias unde.', '2021-10-06 22:48:29', '2021-10-06 22:48:29'),
(76, 38, 10, 'Cupiditate neque ea excepturi soluta odio. Nemo tenetur tempora similique in dignissimos in minima. Aut commodi voluptatem natus omnis sed.', '2021-10-06 22:48:29', '2021-10-06 22:48:29'),
(77, 6, 1, 'Autem error est maiores in ut quisquam minima vero. Illum voluptate in fuga in ipsum. Non velit consequuntur ipsa qui.', '2021-10-06 22:48:29', '2021-10-06 22:48:29'),
(78, 6, 2, 'Eligendi possimus provident dignissimos culpa rerum voluptas. Et facilis minima ipsam voluptates est. Odio est ea consequatur.', '2021-10-06 22:48:29', '2021-10-06 22:48:29'),
(79, 37, 7, 'Eos voluptatum dolorem iure quam. Nemo dolorum deserunt aut excepturi. Ratione dolores dolores rerum odit et non iure ex. Nihil atque porro nesciunt necessitatibus inventore vel quia.', '2021-10-06 22:48:29', '2021-10-06 22:48:29'),
(80, 11, 3, 'Iusto corporis voluptates doloribus tempora veniam consequatur sint. Perferendis quia est et repellendus voluptate doloribus. Ut odit ea vitae. Repellat qui molestiae minus iure dolores et aut perspiciatis.', '2021-10-06 22:48:29', '2021-10-06 22:48:29'),
(81, 47, 4, 'Aut adipisci cum sequi tenetur aut. Qui ex repudiandae minus unde aut dolores aut ipsa. Ea dolore et saepe. Natus dolorem amet ipsam debitis sit officia accusamus. Laudantium aut sed ducimus quae officia.', '2021-10-06 22:48:29', '2021-10-06 22:48:29'),
(82, 8, 6, 'Explicabo sunt in ipsa aut aut ab molestiae. Nisi fuga quibusdam qui quis et. Aperiam voluptas enim eos esse ut quam. Commodi omnis quasi commodi consequatur ratione qui non labore.', '2021-10-06 22:48:29', '2021-10-06 22:48:29'),
(83, 26, 10, 'Alias et rerum eaque nam deleniti pariatur rerum delectus. Optio adipisci suscipit sit tenetur. Magni magnam itaque ut veniam in nulla rerum. Aut dolor reiciendis omnis reprehenderit.', '2021-10-06 22:48:29', '2021-10-06 22:48:29'),
(84, 47, 1, 'Repellendus consectetur natus dicta. Molestiae exercitationem eos ut tempora. Praesentium a consequatur perspiciatis eius ex occaecati aperiam.', '2021-10-06 22:48:29', '2021-10-06 22:48:29'),
(85, 18, 8, 'Rem impedit rerum dolores et quo velit et ut. Pariatur iure quibusdam quasi autem velit. Ipsum dicta repellat et quidem veniam. Accusantium corrupti eius laudantium a nihil. Porro fuga totam rerum laboriosam ut earum voluptatem.', '2021-10-06 22:48:29', '2021-10-06 22:48:29'),
(86, 4, 3, 'Modi asperiores unde totam quaerat sit dolores. Explicabo natus id dignissimos accusamus. Error iure non et officia.', '2021-10-06 22:48:29', '2021-10-06 22:48:29'),
(87, 14, 8, 'Voluptatem natus quis similique nulla est dolore error. Ipsam rerum odit recusandae. Alias ut cupiditate mollitia ut.', '2021-10-06 22:48:29', '2021-10-06 22:48:29'),
(88, 4, 5, 'Ea assumenda aperiam magnam quidem qui distinctio pariatur. Enim commodi mollitia repellat veniam et quo voluptatem odit. Ut est est maxime itaque enim sequi.', '2021-10-06 22:48:29', '2021-10-06 22:48:29'),
(89, 11, 8, 'Odit ipsum aspernatur itaque ut officiis et. Rem quaerat nam recusandae voluptatum cum soluta aut. Fuga sed tenetur necessitatibus. Porro enim fugit doloribus deserunt alias qui.', '2021-10-06 22:48:29', '2021-10-06 22:48:29'),
(90, 7, 8, 'Et in optio eaque beatae. Repellat rerum voluptas et voluptatem ducimus sequi alias. Ratione aut suscipit voluptas quia non fuga distinctio id. Iste consequatur et eos nam.', '2021-10-06 22:48:29', '2021-10-06 22:48:29'),
(91, 25, 1, 'Autem molestiae voluptas illo ut quo. Ipsam earum accusamus nisi veniam et ut.', '2021-10-06 22:48:29', '2021-10-06 22:48:29'),
(92, 18, 9, 'Blanditiis laboriosam quaerat nisi. Quia ea ut id ut ab. Ratione quas totam ipsa debitis et temporibus natus sapiente. Sunt possimus ut explicabo dolores blanditiis.', '2021-10-06 22:48:29', '2021-10-06 22:48:29'),
(93, 2, 10, 'Placeat non cupiditate asperiores sit. Dolorem enim cum officiis temporibus expedita magnam nobis. Fuga unde dignissimos enim.', '2021-10-06 22:48:29', '2021-10-06 22:48:29'),
(94, 41, 8, 'Temporibus ut in tempore excepturi occaecati. Quos dignissimos ipsa eos explicabo rerum ut fuga. Quisquam rerum hic iste aut voluptate est deserunt. Mollitia occaecati molestiae repellat.', '2021-10-06 22:48:29', '2021-10-06 22:48:29'),
(95, 41, 7, 'Exercitationem perspiciatis mollitia vel saepe possimus ipsam. Repellat hic officia mollitia vel. Consequuntur corrupti perferendis velit cumque laudantium culpa suscipit.', '2021-10-06 22:48:29', '2021-10-06 22:48:29'),
(96, 11, 3, 'Est rem rerum aliquid. Deserunt consequatur sed non sint omnis delectus velit. Magnam sed cum fugiat aut numquam libero assumenda. Et et et aut.', '2021-10-06 22:48:29', '2021-10-06 22:48:29'),
(97, 15, 9, 'Nihil harum aliquam beatae quia sit et. Nisi dolores voluptatem mollitia in quas facilis aperiam. Vel consectetur mollitia sint sunt earum.', '2021-10-06 22:48:29', '2021-10-06 22:48:29'),
(98, 8, 2, 'Qui dolores dolores id eos maxime corrupti consequuntur. Harum aspernatur velit et voluptas maiores. Reprehenderit libero nihil in quaerat. Rerum repellat est facere maxime consequatur ut.', '2021-10-06 22:48:29', '2021-10-06 22:48:29'),
(99, 2, 6, 'Et quo sit dolorem qui reprehenderit. A aut minus porro assumenda dolorem rem qui provident. Sapiente tenetur incidunt consequatur dicta id dolor sit. Adipisci eligendi ab ut.', '2021-10-06 22:48:29', '2021-10-06 22:48:29'),
(100, 32, 5, 'Mollitia quas commodi quia consequatur et necessitatibus dolorem est. Rem voluptatem necessitatibus consequatur. Nihil nihil quod ipsum id. Molestiae provident quia hic officiis cumque deleniti.', '2021-10-06 22:48:29', '2021-10-06 22:48:29');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2021_10_06_142312_create_posts_table', 1),
(6, '2021_10_06_173148_create_post_categories_table', 1),
(7, '2021_10_06_201933_create_comments_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `blog_banner` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `blog_body` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `tags` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `name`, `slug`, `blog_banner`, `blog_body`, `category_id`, `tags`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Neque optio est praesentium aut.', 'autem-facilis-quasi-et-qui-consequuntur-eveniet', 'photos/posts/default.jpg', 'Soluta sint temporibus cumque porro atque earum non. Tenetur dignissimos voluptas temporibus et suscipit voluptatem. Quibusdam et expedita veniam excepturi et ut. Autem aut saepe consequatur.', 1, 'new, latest, science, business', 4, '2021-10-06 22:48:29', '2021-10-06 22:48:29'),
(2, 'Aut ea exercitationem architecto ut magnam.', 'odit-magnam-dolore-eum-ut-saepe-quasi', 'photos/posts/default.jpg', 'Ut distinctio provident quo est. Quis ipsam ut officiis sit placeat eveniet corrupti. Maiores dicta sed et nesciunt iusto qui. Ullam quas omnis eligendi omnis.', 2, 'new, latest, science, business', 3, '2021-10-06 22:48:29', '2021-10-06 22:48:29'),
(3, 'Nesciunt iste sint dolorem rerum.', 'consequatur-unde-suscipit-architecto', 'photos/posts/default.jpg', 'Ut reprehenderit nihil temporibus. Illum ut eos nulla id. Qui et doloribus ut et iusto ut commodi.', 1, 'new, latest, science, business', 1, '2021-10-06 22:48:29', '2021-10-06 22:48:29'),
(4, 'Aut eum rerum velit qui deserunt et iure.', 'qui-illo-molestiae-consequatur-sed-incidunt-vero-in', 'photos/posts/default.jpg', 'Tenetur consequatur veritatis velit et incidunt sed. Eius fugit necessitatibus inventore a odit porro. Eius qui fuga fugit perspiciatis. Labore quas laboriosam ipsam minima dolorem consequatur.', 2, 'new, latest, science, business', 7, '2021-10-06 22:48:29', '2021-10-06 22:48:29'),
(5, 'Sint laboriosam maxime aut est laborum.', 'est-est-velit-ullam-nemo', 'photos/posts/default.jpg', 'Quia culpa earum beatae sunt magni rerum et. Sed nihil ut laborum. Eius placeat quibusdam quas omnis. Aut provident rerum sequi.', 1, 'new, latest, science, business', 1, '2021-10-06 22:48:29', '2021-10-06 22:48:29'),
(6, 'Nisi quasi veniam et non aperiam aperiam.', 'vel-at-ex-rerum-a-non', 'photos/posts/default.jpg', 'Doloremque corporis ut unde sed. Sit quasi nemo in sed itaque ut. Tenetur et dolore inventore iusto ea. Facilis aut amet molestiae odio temporibus debitis.', 2, 'new, latest, science, business', 7, '2021-10-06 22:48:29', '2021-10-06 22:48:29'),
(7, 'Suscipit praesentium earum aut.', 'ab-velit-accusantium-fugit-consequuntur', 'photos/posts/default.jpg', 'Provident aut ut delectus unde incidunt qui ut. Et voluptatibus id sequi. Tempore dolorem in facilis saepe.', 2, 'new, latest, science, business', 4, '2021-10-06 22:48:29', '2021-10-06 22:48:29'),
(8, 'Et accusantium delectus quis laudantium provident.', 'consectetur-perferendis-et-eveniet-quaerat-ipsa-et', 'photos/posts/default.jpg', 'Incidunt consectetur distinctio est numquam nisi. In nemo neque autem neque explicabo sequi. Suscipit dolore vitae eaque soluta atque mollitia voluptatibus itaque. Non saepe non unde eos doloremque.', 2, 'new, latest, science, business', 4, '2021-10-06 22:48:29', '2021-10-06 22:48:29'),
(9, 'Error incidunt quia id voluptatem.', 'blanditiis-hic-sint-culpa', 'photos/posts/default.jpg', 'Et laboriosam earum quibusdam at omnis sint. Cum porro hic dolore laborum aspernatur dolorem maxime. Provident aut dolores eligendi excepturi amet. Necessitatibus omnis autem non distinctio eius corporis.', 3, 'new, latest, science, business', 6, '2021-10-06 22:48:29', '2021-10-06 22:48:29'),
(10, 'Fugiat atque in quasi atque.', 'sit-in-unde-corporis-autem-et', 'photos/posts/default.jpg', 'Officiis magnam reprehenderit dolore nihil temporibus magnam cumque. Culpa id quos atque occaecati aut nisi nobis harum. Ad illum doloremque temporibus quia amet esse.', 2, 'new, latest, science, business', 3, '2021-10-06 22:48:29', '2021-10-06 22:48:29'),
(11, 'Tempora aut rerum molestias sit labore.', 'reprehenderit-laudantium-repudiandae-quos-tempore', 'photos/posts/default.jpg', 'Totam sint perferendis earum ut magnam. Voluptatum omnis aut aut earum error. Dolorem modi eum libero. Atque non corporis quod facere adipisci magni.', 2, 'new, latest, science, business', 5, '2021-10-06 22:48:29', '2021-10-06 22:48:29'),
(12, 'Accusantium omnis neque ipsa.', 'corrupti-et-ea-voluptate-eius-mollitia', 'photos/posts/default.jpg', 'Voluptatem et et ipsum dolores ea incidunt omnis. Pariatur qui dolor sint sequi aliquid delectus nostrum. Qui voluptatibus iusto nulla tenetur voluptas.', 1, 'new, latest, science, business', 6, '2021-10-06 22:48:29', '2021-10-06 22:48:29'),
(13, 'Eum dolorem numquam itaque est.', 'ducimus-ducimus-et-est-ut-libero-rerum-consequatur-id', 'photos/posts/default.jpg', 'Nisi illo earum est dolorem rerum quos eos. Atque cum aut eaque ut praesentium. Quo ut ut incidunt. Ut qui est sit nostrum laudantium aliquam.', 1, 'new, latest, science, business', 2, '2021-10-06 22:48:29', '2021-10-06 22:48:29'),
(14, 'Facilis dolores sint placeat est a a.', 'fuga-fuga-molestiae-maxime-consequuntur', 'photos/posts/default.jpg', 'Rerum iusto dolor consequatur cumque. Accusantium quia inventore eum illum dolorum. Vel possimus sapiente molestiae adipisci impedit saepe iste. Et et ad et nostrum ut qui maiores. Voluptatem blanditiis exercitationem facere et consequatur sint magni.', 2, 'new, latest, science, business', 9, '2021-10-06 22:48:29', '2021-10-06 22:48:29'),
(15, 'Distinctio expedita nemo possimus et architecto ad odit.', 'saepe-sunt-repudiandae-magnam-enim', 'photos/posts/default.jpg', 'Ipsum aliquid sed voluptatem unde magni aut aut. Dolore quia cupiditate velit illo est. Dolor in commodi officiis repellendus tenetur eos aliquid.', 2, 'new, latest, science, business', 3, '2021-10-06 22:48:29', '2021-10-06 22:48:29'),
(16, 'Error doloribus eius explicabo consequatur.', 'et-commodi-dicta-vel-similique-quas-est', 'photos/posts/default.jpg', 'Recusandae tempora blanditiis et beatae hic eaque. Sed quo voluptates qui. Labore nulla facere ut recusandae eos porro corrupti deleniti.', 3, 'new, latest, science, business', 8, '2021-10-06 22:48:29', '2021-10-06 22:48:29'),
(17, 'Et possimus suscipit blanditiis sint.', 'rem-quo-est-laudantium', 'photos/posts/default.jpg', 'Et provident eligendi similique nihil minus blanditiis architecto voluptatem. Rerum ipsum voluptas id ut non veritatis omnis. Consectetur ratione id nemo sequi iusto ducimus ratione.', 1, 'new, latest, science, business', 2, '2021-10-06 22:48:29', '2021-10-06 22:48:29'),
(18, 'Non illum cupiditate assumenda repudiandae.', 'sed-et-eveniet-aut', 'photos/posts/default.jpg', 'Accusamus dicta voluptate nobis ipsam labore. Dolore nihil earum debitis et. Eos quod sint voluptatem voluptas ea in. Unde mollitia aut molestiae numquam. Aut modi quis nesciunt qui aut pariatur eum.', 2, 'new, latest, science, business', 10, '2021-10-06 22:48:29', '2021-10-06 22:48:29'),
(19, 'Accusamus veritatis ducimus aut recusandae adipisci ullam ut.', 'ipsum-voluptatibus-numquam-est', 'photos/posts/default.jpg', 'Doloremque eum commodi vel minima et nostrum. Illum id aut culpa soluta.', 2, 'new, latest, science, business', 7, '2021-10-06 22:48:29', '2021-10-06 22:48:29'),
(20, 'Voluptatem dignissimos blanditiis ipsa rerum aut quis.', 'et-eum-quos-nemo-beatae-quo-beatae-non', 'photos/posts/default.jpg', 'Corporis sequi qui laudantium qui qui a odio. Ipsa blanditiis blanditiis atque non eum placeat rerum dolorem. Vel consequatur fugiat culpa fuga. Rerum sit et consequatur qui omnis laborum.', 2, 'new, latest, science, business', 10, '2021-10-06 22:48:29', '2021-10-06 22:48:29'),
(21, 'Alias eos voluptas saepe ipsum pariatur inventore amet ut.', 'eum-et-suscipit-iure-ducimus-non-repellendus', 'photos/posts/default.jpg', 'Quaerat qui doloribus aliquid expedita voluptate non. Nihil quos voluptate ipsum velit at sapiente. Impedit ut est quo. Eum qui quasi porro molestias perferendis libero.', 3, 'new, latest, science, business', 4, '2021-10-06 22:48:29', '2021-10-06 22:48:29'),
(22, 'Quia et iure tenetur aliquid iste natus.', 'autem-saepe-perferendis-numquam-voluptatibus-repellendus-ratione-et', 'photos/posts/default.jpg', 'Eveniet veniam ipsam non id eius. Aut in ipsum sapiente blanditiis voluptatem consequatur. Aut saepe id cupiditate iste ut fuga voluptates. Qui dolore qui sunt officia dolorem.', 3, 'new, latest, science, business', 5, '2021-10-06 22:48:29', '2021-10-06 22:48:29'),
(23, 'Est fuga molestiae quod adipisci.', 'debitis-omnis-mollitia-a-eveniet-suscipit-quas', 'photos/posts/default.jpg', 'Distinctio quaerat saepe mollitia enim in architecto rerum deserunt. Qui explicabo quibusdam et dolorem. Ut quia autem rerum autem harum et. Veniam est dolore facilis molestiae.', 3, 'new, latest, science, business', 9, '2021-10-06 22:48:29', '2021-10-06 22:48:29'),
(24, 'Rerum ratione omnis et dolorem quibusdam corporis.', 'similique-sapiente-quaerat-et-sed-dicta', 'photos/posts/default.jpg', 'Laborum quia soluta minima blanditiis maiores. Error labore ut et aspernatur necessitatibus.', 3, 'new, latest, science, business', 9, '2021-10-06 22:48:29', '2021-10-06 22:48:29'),
(25, 'Labore autem rerum est consequatur.', 'corrupti-et-amet-voluptas-commodi-nostrum', 'photos/posts/default.jpg', 'Alias sit quis eligendi libero. Corporis rem vel est dolorem vel dolores laborum. Nostrum enim ea et.', 1, 'new, latest, science, business', 9, '2021-10-06 22:48:29', '2021-10-06 22:48:29'),
(26, 'Ut repellendus impedit ea eveniet doloremque autem.', 'in-corrupti-est-facilis-alias-occaecati-aliquid-occaecati', 'photos/posts/default.jpg', 'Fuga sit omnis quo molestias neque. Iure non ea consequuntur rerum commodi. Odio itaque iusto aut laborum. Inventore sed veritatis deserunt repellendus mollitia occaecati omnis. Hic non ut voluptate officia tenetur.', 3, 'new, latest, science, business', 2, '2021-10-06 22:48:29', '2021-10-06 22:48:29'),
(27, 'Dolor mollitia dignissimos occaecati error quidem ut quidem.', 'officia-omnis-nostrum-non-voluptatum-optio-cupiditate-soluta', 'photos/posts/default.jpg', 'Debitis vel placeat quas tenetur neque consequatur. Qui quibusdam necessitatibus est quo. Ut qui repellendus debitis quaerat. Aut consequatur aliquid autem harum.', 3, 'new, latest, science, business', 3, '2021-10-06 22:48:29', '2021-10-06 22:48:29'),
(28, 'Repudiandae blanditiis unde libero saepe sapiente.', 'in-possimus-qui-atque-quam-impedit-laudantium', 'photos/posts/default.jpg', 'Eum veniam sed qui hic. Aliquam fuga sint aut aut unde facere iste est.', 1, 'new, latest, science, business', 6, '2021-10-06 22:48:29', '2021-10-06 22:48:29'),
(29, 'Fugiat nam cum et in.', 'aut-placeat-et-asperiores-sint-eos-qui', 'photos/posts/default.jpg', 'Quisquam at mollitia dolores ea. Rem sed non sequi est voluptas. Cum beatae est consequatur autem delectus. Nesciunt fugiat qui voluptatibus.', 3, 'new, latest, science, business', 1, '2021-10-06 22:48:29', '2021-10-06 22:48:29'),
(30, 'Sed nisi voluptatem alias suscipit sunt laboriosam.', 'ut-aut-voluptatem-aut-ea-et-vitae-blanditiis-officiis', 'photos/posts/default.jpg', 'Dicta distinctio ut magni vitae. Et voluptatum autem qui pariatur aut.', 3, 'new, latest, science, business', 5, '2021-10-06 22:48:29', '2021-10-06 22:48:29'),
(31, 'Voluptas quam mollitia ut alias.', 'ratione-nemo-nam-numquam-est-exercitationem-et-dolores', 'photos/posts/default.jpg', 'Odio dolores rerum aut est vel. Omnis et neque nobis id odio tempora repudiandae. Dolore enim repellendus voluptatum nostrum assumenda amet. Fugiat quidem sint et consequatur sit.', 1, 'new, latest, science, business', 7, '2021-10-06 22:48:29', '2021-10-06 22:48:29'),
(32, 'Dolorem in voluptate deleniti sed.', 'et-corporis-eum-accusantium-modi-ea-ducimus-ducimus', 'photos/posts/default.jpg', 'Qui illum ex rerum dolorum corporis quis totam. Dignissimos veniam totam voluptatem commodi est. Ex porro nemo beatae sed beatae voluptas.', 1, 'new, latest, science, business', 2, '2021-10-06 22:48:29', '2021-10-06 22:48:29'),
(33, 'Facere rerum a omnis facere et recusandae vitae.', 'alias-blanditiis-non-vel', 'photos/posts/default.jpg', 'Accusantium aut voluptates autem necessitatibus vero velit nemo. Sunt fugiat rerum non repellat. Quae fugit a ipsa explicabo.', 3, 'new, latest, science, business', 6, '2021-10-06 22:48:29', '2021-10-06 22:48:29'),
(34, 'Voluptatem autem aut cum quae animi.', 'corporis-et-quasi-commodi-voluptatibus-est-sint-iusto', 'photos/posts/default.jpg', 'Vel laudantium tempora voluptatibus maiores. Excepturi quo quibusdam vel asperiores officia unde. Nobis aperiam distinctio veniam corrupti omnis eum quia. Autem aut sed ad delectus non.', 3, 'new, latest, science, business', 2, '2021-10-06 22:48:29', '2021-10-06 22:48:29'),
(35, 'Incidunt ut officia aspernatur vero odit iure adipisci.', 'error-possimus-deserunt-officia-ut-ut-ut-explicabo', 'photos/posts/default.jpg', 'Repellat ut tempora maxime quis nisi non. Ipsum et et consequatur omnis ab corporis sed. Omnis voluptas rerum excepturi deleniti quia perspiciatis iure.', 1, 'new, latest, science, business', 8, '2021-10-06 22:48:29', '2021-10-06 22:48:29'),
(36, 'Libero dolorum aliquid consequatur qui nihil.', 'quisquam-autem-autem-est-aperiam-est-laborum', 'photos/posts/default.jpg', 'Eum exercitationem ullam dolorem delectus rem quis voluptates. Sapiente a nisi ut voluptate tempore id aut. Enim tempore ut praesentium quaerat nemo in. Maxime ut ex minima voluptatem nulla ratione porro sed.', 2, 'new, latest, science, business', 10, '2021-10-06 22:48:29', '2021-10-06 22:48:29'),
(37, 'Reiciendis voluptatibus quam iure deserunt quidem fugit.', 'maiores-magnam-ut-possimus', 'photos/posts/default.jpg', 'Illo aut adipisci corrupti eos omnis qui atque. Corrupti est voluptate assumenda atque odio. Ab laboriosam est velit.', 2, 'new, latest, science, business', 8, '2021-10-06 22:48:29', '2021-10-06 22:48:29'),
(38, 'Sed quis incidunt sed quo aliquam voluptatem nostrum.', 'est-aliquam-sunt-ullam-possimus-vel-soluta-sed', 'photos/posts/default.jpg', 'Eligendi qui nam velit itaque. Soluta omnis molestiae minima pariatur. Iure dolorem est odit animi id aut.', 3, 'new, latest, science, business', 6, '2021-10-06 22:48:29', '2021-10-06 22:48:29'),
(39, 'Iste suscipit nihil numquam voluptas dolor dolorum.', 'nulla-delectus-ut-tenetur-reprehenderit-sint', 'photos/posts/default.jpg', 'Sapiente fugit repudiandae ipsa. Qui mollitia qui ea error similique sequi modi. Saepe et inventore dolores repudiandae. Voluptatibus sed qui omnis non perferendis ad necessitatibus. Odio voluptates quis porro ut aut corrupti aut.', 3, 'new, latest, science, business', 1, '2021-10-06 22:48:29', '2021-10-06 22:48:29'),
(40, 'Quia quis officia suscipit non voluptas cum.', 'numquam-tempore-blanditiis-nulla-aspernatur-voluptatem', 'photos/posts/default.jpg', 'Exercitationem inventore quas ratione qui. Quisquam consequuntur aspernatur omnis reiciendis expedita maiores et nam. Quaerat cum omnis optio dolorum possimus saepe illo nesciunt. Sed mollitia debitis reprehenderit culpa quam aperiam sed.', 1, 'new, latest, science, business', 4, '2021-10-06 22:48:29', '2021-10-06 22:48:29'),
(41, 'Ipsum nihil recusandae eligendi provident quidem rerum quas.', 'similique-quia-hic-perferendis-odit-deleniti-iusto', 'photos/posts/default.jpg', 'Incidunt cumque rerum dicta blanditiis sed architecto. Cumque vel fugiat ea voluptatem eius. Sapiente provident qui quo nisi.', 3, 'new, latest, science, business', 1, '2021-10-06 22:48:29', '2021-10-06 22:48:29'),
(42, 'Saepe quasi qui mollitia non eveniet dolorem nostrum.', 'nisi-rerum-maxime-voluptates-est-fuga-architecto', 'photos/posts/default.jpg', 'Ut ut aliquid aut nisi. Doloribus velit qui quos animi ea. Quia dolor deleniti temporibus aut.', 1, 'new, latest, science, business', 9, '2021-10-06 22:48:29', '2021-10-06 22:48:29'),
(43, 'Occaecati labore possimus laborum et.', 'quisquam-et-omnis-quas-sequi-fuga-sed', 'photos/posts/default.jpg', 'Et nemo perspiciatis accusamus libero sed. Quia reiciendis repellendus omnis iure non ipsum assumenda. Omnis in dolorem sit corporis hic qui. Nihil quia corrupti earum quisquam nostrum similique.', 2, 'new, latest, science, business', 7, '2021-10-06 22:48:29', '2021-10-06 22:48:29'),
(44, 'Modi architecto quo non impedit rerum laborum.', 'non-temporibus-quia-incidunt-dignissimos-laborum-consequatur', 'photos/posts/default.jpg', 'Aut repellendus ad atque enim et quo. Necessitatibus eos minima voluptatem magnam blanditiis fuga. Qui voluptatem nostrum optio esse.', 1, 'new, latest, science, business', 9, '2021-10-06 22:48:29', '2021-10-06 22:48:29'),
(45, 'Eveniet quae earum voluptas quasi similique repudiandae.', 'vel-unde-et-et-fuga-laboriosam-corporis-ut', 'photos/posts/default.jpg', 'Rerum aut qui dignissimos sint veniam ipsam voluptas. Vel dicta et esse qui libero id. Qui quis hic vel earum doloremque autem voluptatibus vel.', 3, 'new, latest, science, business', 10, '2021-10-06 22:48:29', '2021-10-06 22:48:29'),
(46, 'Itaque sed vel sit ullam dolor fuga voluptatum aliquid.', 'qui-qui-quod-odit-veniam-odit-culpa', 'photos/posts/default.jpg', 'Quia dolorem neque neque dolores dolor omnis. Fuga blanditiis commodi nobis a expedita tenetur. Quos voluptatem aliquam vel illum qui. Distinctio quae qui molestiae consectetur.', 3, 'new, latest, science, business', 8, '2021-10-06 22:48:29', '2021-10-06 22:48:29'),
(47, 'Molestiae tenetur laudantium excepturi similique.', 'unde-saepe-esse-velit-dolores-et', 'photos/posts/default.jpg', 'Omnis molestiae quibusdam nesciunt dolores in aut. Ut eligendi dicta et. Quasi corrupti dolores totam ut quia animi voluptas. Voluptates delectus asperiores ab in.', 1, 'new, latest, science, business', 6, '2021-10-06 22:48:29', '2021-10-06 22:48:29'),
(48, 'Rerum quia recusandae ad libero numquam qui doloremque.', 'eaque-quo-aut-omnis-aspernatur-facilis-repellat', 'photos/posts/default.jpg', 'Ut recusandae beatae error aut aut beatae laborum. Repudiandae eos officia praesentium. Cum sapiente qui doloremque.', 1, 'new, latest, science, business', 4, '2021-10-06 22:48:29', '2021-10-06 22:48:29'),
(49, 'Quae molestiae fugiat et doloribus sint corporis eum.', 'architecto-numquam-libero-vero-vel-cupiditate', 'photos/posts/default.jpg', 'Cum voluptas itaque consequatur odio ad id. Sit eos quia quae corrupti vel rerum autem. Repudiandae optio voluptatem est fugiat quo. Minima necessitatibus id tempore dolor.', 1, 'new, latest, science, business', 7, '2021-10-06 22:48:29', '2021-10-06 22:48:29'),
(50, 'Consequatur perferendis fugit et ullam enim.', 'consequatur-perferendis-fugit-et-ullam-enim', 'photos/posts/1633582764.jpeg', '<p>New Tstes</p>', 1, 'new, latest, science, business', 1, '2021-10-06 22:48:29', '2021-10-06 22:59:40');

-- --------------------------------------------------------

--
-- Table structure for table `post_categories`
--

CREATE TABLE `post_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `post_categories`
--

INSERT INTO `post_categories` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Science', 'science', '2021-10-06 22:48:29', '2021-10-06 22:48:29'),
(2, 'Business', 'business', '2021-10-06 22:48:29', '2021-10-06 22:48:29'),
(3, 'Sports', 'sports', '2021-10-06 22:48:29', '2021-10-06 22:48:29'),
(4, 'Food', 'food', '2021-10-06 22:48:29', '2021-10-06 22:48:29'),
(5, 'International', 'international', '2021-10-06 22:48:29', '2021-10-06 22:48:29');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Seth Pagac', 'corbin35@example.org', '2021-10-06 22:48:29', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'SnrYtV1EmX', '2021-10-06 22:48:29', '2021-10-06 22:48:29'),
(2, 'Mr. Alexie Rath', 'marcelle.zieme@example.net', '2021-10-06 22:48:29', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'wWRnOIQU1Z', '2021-10-06 22:48:29', '2021-10-06 22:48:29'),
(3, 'Maximillian Daugherty', 'antoinette71@example.org', '2021-10-06 22:48:29', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'lASyCjBUDB', '2021-10-06 22:48:29', '2021-10-06 22:48:29'),
(4, 'Angelita Crona MD', 'jayme54@example.net', '2021-10-06 22:48:29', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'zIUp4M31dK', '2021-10-06 22:48:29', '2021-10-06 22:48:29'),
(5, 'Trent Anderson Jr.', 'caleb.kassulke@example.com', '2021-10-06 22:48:29', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '5VKrtDbA6y', '2021-10-06 22:48:29', '2021-10-06 22:48:29'),
(6, 'Lois Harris', 'chodkiewicz@example.org', '2021-10-06 22:48:29', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'y9BwUaZEwV', '2021-10-06 22:48:29', '2021-10-06 22:48:29'),
(7, 'Clinton Ferry III', 'rosalee.hodkiewicz@example.org', '2021-10-06 22:48:29', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'pTNeH9h2MK', '2021-10-06 22:48:29', '2021-10-06 22:48:29'),
(8, 'Ronaldo Gutmann Sr.', 'beulah17@example.net', '2021-10-06 22:48:29', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'fZ9SCtN23Z', '2021-10-06 22:48:29', '2021-10-06 22:48:29'),
(9, 'Roderick Quitzon', 'mreichert@example.com', '2021-10-06 22:48:29', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'xpBrUGDkF0', '2021-10-06 22:48:29', '2021-10-06 22:48:29'),
(10, 'Leopoldo Stehr', 'senger.baron@example.com', '2021-10-06 22:48:29', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'SrCV4gzEhG', '2021-10-06 22:48:29', '2021-10-06 22:48:29');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_post_id_foreign` (`post_id`),
  ADD KEY `comments_user_id_foreign` (`user_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`),
  ADD KEY `posts_user_id_foreign` (`user_id`);

--
-- Indexes for table `post_categories`
--
ALTER TABLE `post_categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `post_categories_name_unique` (`name`),
  ADD UNIQUE KEY `post_categories_slug_unique` (`slug`);

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
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `post_categories`
--
ALTER TABLE `post_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`),
  ADD CONSTRAINT `comments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
