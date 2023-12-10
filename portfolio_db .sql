-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Dec 10, 2023 at 08:33 PM
-- Server version: 5.7.39
-- PHP Version: 7.4.33

SET FOREIGN_KEY_CHECKS=0;
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: portfolio_db
--

-- --------------------------------------------------------

--
-- Table structure for table tbl_clients
--

CREATE TABLE tbl_clients (
  id int(6) UNSIGNED NOT NULL,
  firstname varchar(255) NOT NULL,
  lastname varchar(255) NOT NULL,
  email varchar(255) NOT NULL,
  comments text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table tbl_contacts
--

CREATE TABLE tbl_contacts (
  id int(6) UNSIGNED NOT NULL,
  first_name varchar(100) NOT NULL,
  last_name varchar(250) NOT NULL,
  email varchar(100) NOT NULL,
  comments varchar(1500) NOT NULL,
  date_recieved timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table tbl_contacts
--

INSERT INTO tbl_contacts (id, first_name, last_name, email, comments, date_recieved) VALUES
(1, 'Viktor', 'Kim', 'v_kim188484@fanshaweonline.ca', 'Send me a message\r\n', '2023-12-07 23:52:33');

-- --------------------------------------------------------

--
-- Table structure for table tbl_media
--

CREATE TABLE tbl_media (
  id int(6) UNSIGNED NOT NULL,
  project_id int(11) NOT NULL,
  title varchar(100) NOT NULL,
  uploaded_at timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  photo_path varchar(255) NOT NULL,
  description text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table tbl_media
--

INSERT INTO tbl_media (id, project_id, title, uploaded_at, photo_path, description) VALUES
(1, 1, 'Earbuds Website', '2023-11-18 04:21:34', 'Project Image 1', 'Welcome to my Earbuds Shop Portfolio! Dive into an immersive experience with AR models, bringing earbuds to life in your space. Explore the intricacies of our designs through X-ray models, revealing the technology beneath the surface. Dynamic animations add flair, offering a unique perspective on each product. Join me on this journey where technology meets creativity, and discover a new dimension in the world of earbuds.'),
(2, 2, '3d Car Model', '2023-11-18 04:21:51', 'Project Image 2', 'Explore automotive excellence in my portfolio project—a stunning 3D car model crafted in Cinema 4D for promotional brilliance. From sleek contours to lifelike detailing, witness the fusion of art and technology. Each render is a testament to the promotional power of immersive 3D visualization. Experience the allure of this virtual ride as it takes center stage, showcasing the dynamic capabilities of Cinema 4D in the realm of promotional design.'),
(3, 3, 'Hockey Intro', '2023-11-18 04:22:11', 'Project Image 3', 'Welcome to the thrilling introduction to my hockey sports event project! Experience the adrenaline through meticulously designed animations, beautiful models, and captivating cinematography. Dive into the dynamic world of hockey, where each frame tells a story of skill and passion. From the intricacies of player models to the cinematic magic capturing the essence of the sport, this project is a visual journey into the heart of hockey. Join me in celebrating the excitement of the game through artful animation and stunning cinematography. ');

-- --------------------------------------------------------

--
-- Table structure for table tbl_projects
--

CREATE TABLE tbl_projects (
  id int(6) UNSIGNED NOT NULL,
  title varchar(100) NOT NULL,
  description text NOT NULL,
  created_at timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table tbl_projects
--

INSERT INTO tbl_projects (id, title, description, created_at) VALUES
(1, 'Earbuds Website', 'Welcome to my Earbuds Shop Portfolio! Dive into an immersive experience with AR models, bringing earbuds to life in your space. Explore the intricacies of our designs through X-ray models, revealing the technology beneath the surface. Dynamic animations add flair, offering a unique perspective on each product. Join me on this journey where technology meets creativity, and discover a new dimension in the world of earbuds.', '2023-11-17 19:54:50'),
(2, '3d Car Model', 'Explore automotive excellence in my portfolio project—a stunning 3D car model crafted in Cinema 4D for promotional brilliance. From sleek contours to lifelike detailing, witness the fusion of art and technology. Each render is a testament to the promotional power of immersive 3D visualization. Experience the allure of this virtual ride as it takes center stage, showcasing the dynamic capabilities of Cinema 4D in the realm of promotional design.', '2023-11-17 19:55:17'),
(3, 'Hockey Intro', 'Welcome to the thrilling introduction to my hockey sports event project! Experience the adrenaline through meticulously designed animations, beautiful models, and captivating cinematography. Dive into the dynamic world of hockey, where each frame tells a story of skill and passion. From the intricacies of player models to the cinematic magic capturing the essence of the sport, this project is a visual journey into the heart of hockey. Join me in celebrating the excitement of the game through artful animation and stunning cinematography. ', '2023-11-17 19:55:42');

-- --------------------------------------------------------

--
-- Table structure for table tbl_skills
--

CREATE TABLE tbl_skills (
  id int(6) UNSIGNED NOT NULL,
  skill name varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table tbl_skills
--

INSERT INTO tbl_skills (id, skill name) VALUES
(1, 'HTML, CSS, SCSS, JavaScript, Github, Adobe Suit, Cinema 4d, Figma');

-- --------------------------------------------------------

--
-- Table structure for table tbl_user
--

CREATE TABLE tbl_user (
  id int(6) UNSIGNED NOT NULL,
  first_name varchar(100) NOT NULL,
  last_name varchar(250) NOT NULL,
  bio text NOT NULL,
  avatar varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table tbl_user
--

INSERT INTO tbl_user (id, first_name, last_name, bio, avatar) VALUES
(1, 'Viktor', 'Kim', 'Hey! I\'m Viktor, an Interactive Media Design student passionate about front-end and web development. Currently navigating the exciting realm where creativity meets code, I specialize in crafting engaging user interfaces using HTML, CSS, SCSS, and JavaScript. With an eye for design and a love for problem-solving, I enjoy transforming ideas into visually stunning and functional websites. Eager to stay ahead in this dynamic field, I embrace new technologies and strive to create seamless digital experiences. Join me on this journey as I explore the intersection of design and technology, shaping the future of interactive media. ', 'My Photo');

--
-- Indexes for dumped tables
--

--
-- Indexes for table tbl_clients
--
ALTER TABLE tbl_clients
  ADD PRIMARY KEY (id);

--
-- Indexes for table tbl_contacts
--
ALTER TABLE tbl_contacts
  ADD PRIMARY KEY (id);

--
-- Indexes for table tbl_media
--
ALTER TABLE tbl_media
  ADD PRIMARY KEY (id);

--
-- Indexes for table tbl_projects
--
ALTER TABLE tbl_projects
  ADD PRIMARY KEY (id);

--
-- Indexes for table tbl_skills
--
ALTER TABLE tbl_skills
  ADD PRIMARY KEY (id);

--
-- Indexes for table tbl_user
--
ALTER TABLE tbl_user
  ADD PRIMARY KEY (id);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table tbl_clients
--
ALTER TABLE tbl_clients
  MODIFY id int(6) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table tbl_contacts
--
ALTER TABLE tbl_contacts
  MODIFY id int(6) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table tbl_media
--
ALTER TABLE tbl_media
  MODIFY id int(6) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table tbl_projects
--
ALTER TABLE tbl_projects
  MODIFY id int(6) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table tbl_skills
--
ALTER TABLE tbl_skills
  MODIFY id int(6) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table tbl_user
--
ALTER TABLE tbl_user
  MODIFY id int(6) UNSIGNED NOT NULL AUTO_INCREMENT;
SET FOREIGN_KEY_CHECKS=1;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
