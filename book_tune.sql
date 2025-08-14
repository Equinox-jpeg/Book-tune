-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 14, 2025 at 10:15 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `book_tune`
--

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `author` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `category` varchar(100) NOT NULL,
  `cover` varchar(255) NOT NULL,
  `is_premium` tinyint(1) DEFAULT 0,
  `views` int(11) DEFAULT 0,
  `rating` float DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`id`, `title`, `author`, `description`, `category`, `cover`, `is_premium`, `views`, `rating`, `created_at`) VALUES
(1, 'The Midnight Library', 'Matt Haig', 'Between life and death lies a library where each book lets Nora Seed try a life she might have lived, forcing her to face regret, hope, and what makes a life meaningful.', 'Fiction', 'midnight_library.jpg', 0, 805, 4.2, '2025-08-14 06:35:20'),
(2, 'Project Hail Mary', 'Andy Weir', 'Ryland Grace wakes alone on a spaceship with amnesia—and a mission that could save Earth from an extinction-level event—if he can survive long enough to remember why he is there.', 'Science Fiction', 'project_hail_mary.jpg', 1, 722, 3.1, '2025-08-14 06:35:20'),
(3, 'The Silent Patient', 'Alex Michaelides', 'After shooting her husband, artist Alicia Berenson never speaks again. A psychotherapist becomes obsessed with unlocking her secret in this twisty psychological thriller.', 'Thriller', 'silent_patient.jpg', 0, 407, 4.2, '2025-08-14 06:35:20'),
(4, 'Educated', 'Tara Westover', 'Raised by survivalists in rural Idaho and denied formal schooling, Tara teaches herself enough to step into the wider world, where education transforms her life.', 'Memoir', 'educated.jpg', 0, 743, 3.8, '2025-08-14 06:35:20'),
(5, 'Dune', 'Frank Herbert', 'On the desert planet Arrakis, noble houses battle for control of the spice while a young heir, Paul Atreides, confronts destiny, prophecy, and power.', 'Science Fiction', 'dune.jpg', 1, 408, 4.5, '2025-08-14 06:35:20'),
(6, 'Where the Crawdads Sing', 'Delia Owens', 'Abandoned in the marsh, Kya Clark grows up alone, finding solace in nature—until a death in town makes her the prime suspect.', 'Fiction', 'where_the_crawdads_sing.jpg', 0, 258, 4.5, '2025-08-14 06:35:20'),
(7, 'Atomic Habits', 'James Clear', 'A practical system for building good habits and breaking bad ones through tiny, incremental changes that compound.', 'Self-Help', 'atomic_habits.jpg', 0, 129, 4.7, '2025-08-14 06:35:20'),
(8, 'The Song of Achilles', 'Madeline Miller', 'A lyrical retelling of the bond between Achilles and Patroclus, from their boyhood to the siege of Troy.', 'Historical Fiction', 'song_of_achilles.jpg', 1, 415, 3.6, '2025-08-14 06:35:20'),
(9, 'Circe', 'Madeline Miller', 'Born to the sun god Helios but shunned by gods and mortals, Circe discovers witchcraft and her own power on a lonely island.', 'Fantasy', 'circe.jpg', 1, 154, 3.3, '2025-08-14 06:35:20'),
(10, 'Becoming', 'Michelle Obama', 'The former First Lady tells her story with candor—from childhood on the South Side to life in the White House.', 'Memoir', 'becoming.jpg', 0, 937, 3.2, '2025-08-14 06:35:20'),
(11, 'The Hobbit', 'J.R.R. Tolkien', 'A reluctant Bilbo Baggins is swept into a quest to reclaim a dwarven treasure guarded by the dragon Smaug.', 'Fantasy', 'the_hobbit.jpg', 0, 590, 3.8, '2025-08-14 06:35:20'),
(12, 'The Great Gatsby', 'F. Scott Fitzgerald', 'In Jazz Age New York, mysterious millionaire Jay Gatsby pursues an impossible dream: to reclaim the golden past.', 'Classic', 'great_gatsby.jpg', 0, 96, 4.4, '2025-08-14 06:35:20'),
(13, 'Pride and Prejudice', 'Jane Austen', 'Elizabeth Bennet spars with the proud Mr. Darcy as love, class, and wit collide in Regency England.', 'Classic', 'pride_and_prejudice.jpg', 0, 166, 4.1, '2025-08-14 06:35:20'),
(14, '1984', 'George Orwell', 'In a totalitarian state of unending surveillance, Winston Smith dares to seek truth and love.', 'Dystopian', '1984.jpg', 1, 160, 4.2, '2025-08-14 06:35:20'),
(15, 'Brave New World', 'Aldous Huxley', 'A genetically engineered, pleasure-driven society hides a profound cost, exposed by a man born outside it.', 'Dystopian', 'brave_new_world.jpg', 1, 984, 4.7, '2025-08-14 06:35:20'),
(16, 'The Catcher in the Rye', 'J.D. Salinger', 'Holden Caulfield wanders New York City wrestling with grief, hypocrisy, and the pain of growing up.', 'Classic', 'catcher_in_the_rye.jpg', 0, 902, 3.8, '2025-08-14 06:35:20'),
(17, 'To Kill a Mockingbird', 'Harper Lee', 'Young Scout watches her father defend a Black man falsely accused, confronting racism in the American South.', 'Classic', 'to_kill_a_mockingbird.jpg', 0, 904, 3.8, '2025-08-14 06:35:20'),
(18, 'The Alchemist', 'Paulo Coelho', 'A shepherd follows a recurring dream to Egypt in search of treasure, discovering a deeper purpose.', 'Fiction', 'the_alchemist.jpg', 0, 636, 4.6, '2025-08-14 06:35:20'),
(19, 'Sapiens: A Brief History of Humankind', 'Yuval Noah Harari', 'A sweeping narrative of human history—from foraging bands to global empires and biotech frontiers.', 'Nonfiction', 'sapiens.jpg', 1, 334, 4.2, '2025-08-14 06:35:20'),
(20, 'A Court of Thorns and Roses', 'Sarah J. Maas', 'After killing a wolf, Feyre is taken to the faerie lands and entangled in ancient magic and dangerous love.', 'Fantasy', 'acotar.jpg', 1, 694, 4, '2025-08-14 06:35:20'),
(21, 'It Ends With Us', 'Colleen Hoover', 'Lily must make an impossible choice when love and loyalty collide.', 'Romance', 'it_ends_with_us.jpg', 0, 141, 4.9, '2025-08-14 06:35:20'),
(22, 'Verity', 'Colleen Hoover', 'A struggling writer uncovers a chilling unfinished manuscript while finishing another author’s series.', 'Thriller', 'verity.jpg', 0, 319, 4.6, '2025-08-14 06:35:20'),
(23, 'The Girl on the Train', 'Paula Hawkins', 'An unreliable witness inserts herself into a missing-person case with devastating consequences.', 'Thriller', 'girl_on_the_train.jpg', 1, 913, 3.4, '2025-08-14 06:35:20'),
(24, 'Gone Girl', 'Gillian Flynn', 'A marriage unravels into deceit and media frenzy after a sudden disappearance.', 'Thriller', 'gone_girl.jpg', 1, 487, 3.6, '2025-08-14 06:35:20'),
(25, 'The Hunger Games', 'Suzanne Collins', 'Katniss Everdeen volunteers to take her sister’s place in a televised fight to the death.', 'Dystopian', 'hunger_games.jpg', 0, 107, 4.1, '2025-08-14 06:35:20'),
(26, 'Catching Fire', 'Suzanne Collins', 'Katniss becomes the spark of rebellion as the Capitol tightens its grip.', 'Dystopian', 'catching_fire.jpg', 0, 371, 3.7, '2025-08-14 06:35:20'),
(27, 'Mockingjay', 'Suzanne Collins', 'War erupts as the districts rise against the Capitol and Katniss faces the cost of revolution.', 'Dystopian', 'mockingjay.jpg', 1, 571, 3.8, '2025-08-14 06:35:20'),
(28, 'Foundation', 'Isaac Asimov', 'Hari Seldon predicts the fall of the Galactic Empire and a plan to shorten the coming dark age.', 'Science Fiction', 'foundation.jpg', 0, 743, 5, '2025-08-14 06:35:20'),
(29, 'Neuromancer', 'William Gibson', 'A washed-up hacker is hired for one last impossible heist in cyberspace.', 'Science Fiction', 'neuromancer.jpg', 1, 378, 3.2, '2025-08-14 06:35:20'),
(30, 'Snow Crash', 'Neal Stephenson', 'A sword-wielding hacker battles a mind-altering virus in the Metaverse.', 'Science Fiction', 'snow_crash.jpg', 1, 622, 3.5, '2025-08-14 06:35:20');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `is_premium` tinyint(1) DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `is_premium`, `created_at`) VALUES
(1, 'nubhan', '$2y$10$xvwj1sT6LPoqYbKt5Is85.UJYo7DT2osIB8e1yogXN7JbFqvNnHX2', 0, '2025-08-14 07:39:24');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
