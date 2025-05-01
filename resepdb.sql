-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 01, 2025 at 08:43 AM
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
-- Database: `resepdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `resep_makanan`
--

CREATE TABLE `resep_makanan` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `deskripsi` text NOT NULL,
  `foto` varchar(255) NOT NULL,
  `ingredients` text NOT NULL,
  `steps` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `resep_makanan`
--

INSERT INTO `resep_makanan` (`id`, `nama`, `deskripsi`, `foto`, `ingredients`, `steps`, `created_at`) VALUES
(12, 'Nasi Goreng', 'Nasi goreng dengan bumbu sederhana yang nikmat dan mudah dibuat.', 'image/resep-nasi-goreng-kecap-manis_43.jpeg', '[\"2 piring nasi putih\", \"2 siung bawang putih\", \"1 butir telur\", \"2 sdm kecap manis\", \"Garam dan merica secukupnya\"]', '[\"Tumis bawang putih hingga harum.\", \"Masukkan telur, orak-arik.\", \"Tambahkan nasi dan aduk rata.\", \"Masukkan kecap, garam, dan merica.\", \"Aduk rata dan sajikan hangat.\"]', '2025-04-29 11:20:31'),
(13, 'Sate Ayam', 'Sate ayam dengan bumbu kacang khas Indonesia.', 'image/sate-ayam-khas-madura-foto-resep-utama.jpg', '[\"500 gram daging ayam\", \"Tusuk sate\", \"Bumbu kacang\", \"Kecap manis\", \"Bawang merah goreng\"]', '[\"Potong ayam dan tusukkan ke tusuk sate.\", \"Bakar sambil dioles bumbu.\", \"Sajikan dengan bumbu kacang dan kecap.\"]', '2025-04-29 11:20:31'),
(14, 'Mie Goreng', 'Mie goreng sederhana dengan rasa gurih dan sedikit pedas.', 'image/miee.avif', '[\"1 bungkus mie telur\", \"2 siung bawang putih, cincang\", \"1 sdm kecap manis\", \"1 sdm saus tiram\", \"1/2 wortel, iris tipis\", \"Kol secukupnya, iris\", \"Minyak goreng\"]', '[\"Rebus mie hingga matang, tiriskan.\", \"Tumis bawang putih hingga harum.\", \"Masukkan sayuran dan aduk rata.\", \"Masukkan mie dan bumbu, aduk rata.\", \"Sajikan hangat dengan taburan bawang goreng.\"]', '2025-04-29 11:20:31'),
(15, 'Bakso Urat', 'Bakso urat kenyal dengan cita rasa gurih dan kuah kaldu segar.', 'image/baksoo.jpg', '[\"500 gram daging sapi cincang\", \"100 gram es batu\", \"1 sdt lada\", \"3 siung bawang putih\", \"Garam secukupnya\", \"Air untuk merebus\"]', '[\"Haluskan daging bersama bawang, lada, dan garam.\", \"Tambahkan es batu sedikit demi sedikit hingga adonan lembut.\", \"Bentuk bulatan bakso, rebus hingga mengapung.\", \"Sajikan dengan kuah kaldu dan pelengkap.\"]', '2025-04-29 11:20:31'),
(16, 'Ayam Bakar', 'Ayam bakar manis pedas dengan bumbu meresap dan aroma khas.', 'image/ayamm.jpg', '[\"1 ekor ayam, potong sesuai selera\", \"3 siung bawang putih\", \"5 siung bawang merah\", \"2 sdm kecap manis\", \"1 sdt garam dan merica\", \"2 sdm minyak goreng\"]', '[\"Haluskan bumbu dan tumis hingga harum.\", \"Masukkan ayam, masak hingga bumbu meresap.\", \"Bakar ayam di atas bara atau teflon.\", \"Olesi dengan sisa bumbu saat membakar.\", \"Sajikan dengan nasi hangat dan sambal.\"]', '2025-04-29 11:20:31'),
(17, 'Capcay Kuah', 'Capcay kuah dengan aneka sayuran segar dan kuah gurih.', 'image/capcay.jpg', '[\"Wortel\", \"Brokoli\", \"Kol\", \"Sawi\", \"2 siung bawang putih\", \"1 sdt saus tiram\", \"Air secukupnya\", \"Garam dan merica\"]', '[\"Tumis bawang putih hingga harum.\", \"Masukkan sayuran, aduk rata.\", \"Tambahkan air dan bumbu, masak hingga sayur matang.\", \"Sajikan hangat.\"]', '2025-04-29 11:20:31'),
(18, 'Perkedel Kentang', 'Perkedel kentang renyah di luar, lembut di dalam.', 'image/kentang.jpg', '[\"500 gram kentang, kukus dan haluskan\", \"2 siung bawang putih\", \"1 butir telur\", \"Garam\", \"Merica\", \"Seledri cincang\"]', '[\"Campur semua bahan hingga rata.\", \"Bentuk bulat pipih.\", \"Goreng dalam minyak panas hingga keemasan.\", \"Tiriskan dan sajikan.\"]', '2025-04-29 11:20:31'),
(19, 'Tempe Mendoan', 'Tempe goreng tipis dengan tepung berbumbu khas Banyumas.', 'image/mendoan.jpg', '[\"1 papan tempe, iris tipis\", \"100 gram tepung terigu\", \"Daun bawang iris\", \"Ketumbar bubuk\", \"Garam\", \"Air secukupnya\"]', '[\"Campur tepung dengan bumbu dan air.\", \"Celupkan tempe, lalu goreng setengah matang.\", \"Sajikan dengan sambal kecap.\"]', '2025-04-29 11:20:31'),
(20, 'Sop Ayam', 'Sop ayam bening dengan sayuran segar dan kuah gurih.', 'image/sopayam.jpg', '[\"Daging ayam\", \"Wortel\", \"Kentang\", \"Buncis\", \"Bawang putih\", \"Bawang merah\", \"Garam\", \"Merica\", \"Air\"]', '[\"Rebus ayam dan buang buihnya.\", \"Masukkan bumbu dan sayuran.\", \"Masak hingga matang dan sajikan hangat.\"]', '2025-04-29 11:20:31'),
(21, 'Telur Balado', 'Telur rebus dengan sambal balado pedas menggugah selera.', 'image/telur.jpg', '[\"6 butir telur rebus\", \"Cabai merah\", \"Bawang merah\", \"Bawang putih\", \"Garam\", \"Gula\", \"Minyak goreng\"]', '[\"Goreng telur sebentar.\", \"Haluskan dan tumis bumbu hingga matang.\", \"Masukkan telur dan aduk rata.\", \"Masak hingga bumbu meresap.\"]', '2025-04-29 11:20:31'),
(22, 'Rendang Daging', 'Rendang daging sapi khas Padang yang kaya rempah dan dimasak hingga empuk.', 'image/rendang.jpg', '[\"1 kg daging sapi\", \"500 ml santan kental\", \"Serai, lengkuas, daun jeruk\", \"Bumbu halus: bawang merah, bawang putih, cabai merah besar, jahe, kunyit\", \"Garam, gula merah\"]', '[\"Tumis bumbu halus hingga harum.\", \"Masukkan daging, aduk rata dengan bumbu.\", \"Tuang santan, masak dengan api kecil sambil diaduk.\", \"Masak hingga kering dan berminyak.\"]', '2025-04-29 11:23:10'),
(23, 'Tumis Kangkung', 'Sayur tumis kangkung sederhana dengan rasa gurih dan sedikit pedas.', 'image/kangkung.jpg', '[\"1 ikat kangkung\", \"2 siung bawang putih\", \"1 buah cabai merah besar\", \"1 sdm saus tiram\", \"Garam dan air sedikit\"]', '[\"Tumis bawang dan cabai hingga harum.\", \"Masukkan kangkung, aduk cepat.\", \"Tambahkan saus tiram dan sedikit air.\", \"Masak hingga kangkung layu.\"]', '2025-04-29 11:23:10'),
(24, 'Ikan Bakar ', 'Ikan bakar dengan bumbu rica khas Manado yang pedas dan segar.', 'image/ikan-bakar.jpg', '[\"2 ekor ikan nila/bawal\"]', '[\"Lumuri ikan dengan garam dan jeruk nipis, diamkan 15 menit.\"]', '2025-04-29 11:23:10'),
(25, 'Spaghetti Aglio e Olio', 'Spaghetti Italia sederhana dengan minyak zaitun dan bawang putih.', 'image/spaghetti.jpg', '[\"200 gram spaghetti\", \"5 siung bawang putih, iris tipis\", \"Cabai kering\", \"Minyak zaitun\", \"Garam, peterseli\"]', '[\"Rebus spaghetti hingga al dente.\", \"Tumis bawang dan cabai dengan minyak zaitun.\", \"Masukkan spaghetti, aduk rata.\", \"Taburi peterseli dan sajikan hangat.\"]', '2025-04-29 11:23:10'),
(26, 'Pecel Lele', 'Lele goreng garing disajikan dengan sambal dan lalapan segar.', 'image/pecel-lele.jpg', '[\"4 ekor ikan lele\", \"Air jeruk nipis, garam\", \"Minyak goreng\", \"Sambal: cabai, bawang merah, tomat, terasi, garam\"]', '[\"Cuci lele, lumuri jeruk nipis dan garam.\", \"Goreng lele hingga kering.\", \"Haluskan bahan sambal, tumis jika suka.\", \"Sajikan dengan sambal dan lalapan.\"]', '2025-04-29 11:23:10'),
(27, 'Kari Ayam', 'Kari ayam dengan kuah santan kental dan aroma rempah khas.', 'image/kari-ayam.jpg', '[\"1 ekor ayam potong\", \"500 ml santan\", \"Bumbu: bawang merah, bawang putih, jahe, kunyit, ketumbar, kapulaga\", \"Garam, gula\", \"Minyak\"]', '[\"Tumis bumbu halus hingga harum.\", \"Masukkan ayam dan aduk rata.\", \"Tuang santan, masak hingga ayam empuk.\", \"Sajikan hangat.\"]', '2025-04-29 11:23:10'),
(28, 'Gudeg Jogja', 'Olahan nangka muda khas Yogyakarta yang manis dan kaya rempah.', 'image/gudeg.jpg', '[\"1 kg nangka muda\", \"500 ml santan\", \"Gula merah, daun salam, lengkuas\", \"Telur rebus, ayam\", \"Bawang merah, bawang putih, ketumbar, kemiri\"]', '[\"Rebus nangka dengan bumbu dan santan.\", \"Masukkan telur dan ayam.\", \"Masak lama hingga kuah menyusut dan warna kecoklatan.\", \"Sajikan dengan nasi dan sambal krecek.\"]', '2025-04-29 11:23:10'),
(29, 'Tahu Gejrot', 'Tahu goreng dengan kuah manis pedas khas Cirebon.', 'image/tahu-gejrot.jpg', '[\"10 buah tahu goreng\"]', '[\"Rebus gula dan asam untuk kuah.\"]', '2025-04-29 11:23:10'),
(30, 'Sayur Lodeh', 'Sayuran berkuah santan khas Jawa yang gurih dan lezat.', 'image/lodeh.jpg', '[\"Terong, labu, kacang panjang, tahu\", \"500 ml santan\", \"Bumbu: bawang merah, bawang putih, kencur, lengkuas\", \"Garam dan gula\"]', '[\"Tumis bumbu hingga harum.\", \"Masukkan santan dan sayur.\", \"Masak hingga sayur empuk dan bumbu meresap.\", \"Sajikan hangat.\"]', '2025-04-29 11:23:10'),
(31, 'Ayam Kecap Pedas', 'Ayam goreng tumis dengan kecap manis dan cabai.', 'image/ayam-kecap.jpg', '[\"500 gram ayam\", \"2 sdm kecap manis\", \"3 siung bawang putih\", \"2 cabai merah besar\", \"Air, garam, gula, merica\"]', '[\"Goreng ayam hingga setengah matang.\", \"Tumis bumbu, masukkan ayam.\", \"Tambahkan kecap dan air, masak hingga bumbu meresap.\", \"Sajikan.\"]', '2025-04-29 11:23:10'),
(34, 'Pempek Palembang', 'Makanan khas Palembang berbahan dasar ikan dan sagu.', 'image/pempek.jpg', '[\"500 gram daging ikan tenggiri\", \"200 gram sagu\", \"Air\", \"Garam\", \"Cuka\", \"Gula\", \"Cabe rawit\"]', '[\"Campur ikan, sagu, dan bumbu hingga adonan kalis.\", \"Bentuk dan rebus hingga matang.\", \"Sajikan dengan kuah cuko.\"]', '2025-04-30 09:14:43'),
(35, 'Rawon Daging', 'Sup daging sapi khas Jawa Timur dengan kuah hitam dari kluwek.', 'image/rawon.jpg', '[\"500 gram daging sapi\", \"Bumbu kluwek\", \"Bawang putih\", \"Serai\", \"Daun jeruk\"]', '[\"Tumis bumbu halus termasuk kluwek.\", \"Masukkan daging dan air.\", \"Masak hingga daging empuk.\"]', '2025-04-30 09:14:43'),
(36, 'Lontong Sayur', 'Lontong dengan sayur labu siam dan kuah santan pedas.', 'image/lontong-sayur.jpg', '[\"Lontong\", \"Labu siam\", \"Santan\", \"Bumbu halus: bawang, cabai\", \"Tempe, tahu\"]', '[\"Tumis bumbu, masukkan labu dan santan.\", \"Rebus hingga matang, sajikan dengan lontong.\"]', '2025-04-30 09:14:43'),
(37, 'Ayam Penyet', 'Ayam goreng yang digeprek dengan sambal terasi pedas.', 'image/ayam-penyet.jpg', '[\"Ayam\", \"Bumbu ungkep\", \"Sambal terasi\", \"Tomat, cabai, terasi\"]', '[\"Goreng ayam setelah diungkep.\", \"Ulek sambal dan penyetkan ayam di atasnya.\"]', '2025-04-30 09:14:43'),
(38, 'Seblak Bandung', 'Seblak pedas khas Bandung dengan kerupuk basah dan telur.', 'image/seblak.jpg', '[\"Kerupuk mentah\", \"Telur\", \"Cabai\", \"Bawang\", \"Sosis atau bakso\"]', '[\"Rendam kerupuk dengan air hangat.\", \"Tumis bumbu, masukkan telur dan kerupuk.\", \"Masak hingga bumbu meresap.\"]', '2025-04-30 09:14:43'),
(39, 'Nasi Uduk', 'Nasi yang dimasak dengan santan dan rempah, disajikan dengan lauk.', 'image/nasi-uduk.jpg', '[\"Beras\", \"Santan\", \"Serai\", \"Daun salam\", \"Lengkuas\"]', '[\"Masak nasi bersama santan dan rempah.\", \"Kukus hingga matang.\", \"Sajikan dengan lauk.\"]', '2025-04-30 09:14:43'),
(40, 'Tahu Isi', 'Tahu goreng berisi sayuran dan terkadang daging cincang.', 'image/tahu-isi.jpg', '[\"Tahu goreng\", \"Wortel\", \"Kol\", \"Bawang\", \"Tepung terigu\"]', '[\"Isi tahu dengan tumisan sayuran.\", \"Celupkan ke adonan tepung dan goreng.\"]', '2025-04-30 09:14:43'),
(41, 'Asinan Bogor', 'Sayur dan buah segar dengan kuah asam pedas manis.', 'image/asinan.jpg', '[\"Kol\", \"Wortel\", \"Timun\", \"Nanas\", \"Saus cuka dan cabai\"]', '[\"Iris semua bahan.\", \"Siram dengan kuah asinan, simpan di kulkas sebelum disajikan.\"]', '2025-04-30 09:14:43'),
(42, 'Karedok', 'Salad khas Sunda dengan bumbu kacang mentah.', 'image/karedok.jpg', '[\"Kol\", \"Toge\", \"Kacang panjang\", \"Mentimun\", \"Sambal kacang mentah\"]', '[\"Cuci sayuran.\", \"Campur dengan sambal kacang mentah.\"]', '2025-04-30 09:14:43'),
(43, 'Ayam Woku', 'Ayam masak khas Manado dengan bumbu wangi dan pedas.', 'image/woku.jpg', '[\"1 ekor ayam\", \"Daun jeruk\", \"Kemangi\", \"Cabai\", \"Bawang, tomat\"]', '[\"Tumis bumbu hingga wangi.\", \"Masukkan ayam dan air.\", \"Masak hingga bumbu meresap.\"]', '2025-04-30 09:14:43'),
(44, 'Kerak Telor', 'Makanan Betawi dari telur bebek, ketan, dan serundeng.', 'image/kerak-telor.jpg', '[\"Telur bebek\", \"Beras ketan\", \"Kelapa parut\", \"Ebi\", \"Bawang goreng\"]', '[\"Campur bahan dan tuang ke wajan panas.\", \"Tunggu hingga matang dan bagian bawah kering.\"]', '2025-04-30 09:14:43'),
(45, 'Serabi Solo', 'Kue tradisional dari Solo dengan rasa manis dan legit.', 'image/serabi.jpg', '[\"Tepung beras\", \"Santan\", \"Ragi\", \"Gula merah cair\", \"Pandan\"]', '[\"Campur semua bahan.\", \"Masak di cetakan serabi kecil hingga matang.\"]', '2025-04-30 09:14:43'),
(46, 'Bakwan Jagung', 'Camilan goreng renyah dari jagung manis dan tepung terigu.', 'image/bakwan-jagung.jpg', '[\"2 buah jagung manis, serut\", \"100 gram tepung terigu\", \"Daun bawang\", \"Bawang putih\", \"Garam\"]', '[\"Campur semua bahan hingga adonan kental.\", \"Goreng hingga keemasan.\"]', '2025-04-30 14:10:31'),
(47, 'Martabak Telur', 'Martabak asin isi daging cincang dan daun bawang.', 'image/martabak.jpg', '[\"Kulit lumpia atau adonan martabak\", \"Telur\", \"Daging cincang\", \"Daun bawang\", \"Bawang bombai\"]', '[\"Campur isian dalam satu wadah.\", \"Isi kulit dan goreng hingga matang.\"]', '2025-04-30 14:10:31'),
(48, 'Es Campur', 'Minuman dingin segar berisi aneka buah dan sirup.', 'image/es-campur.jpg', '[\"Aneka buah segar\", \"Cincau\", \"Kolang-kaling\", \"Sirup merah\", \"Es serut\", \"Susu kental manis\"]', '[\"Campur semua bahan dalam mangkuk besar.\", \"Tuang sirup dan susu, sajikan dingin.\"]', '2025-04-30 14:10:31'),
(49, 'Bubur Ayam', 'Bubur nasi gurih dengan topping ayam suwir, kerupuk dan sambal.', 'image/bubur-ayam.jpg', '[\"Beras\", \"Air\", \"Ayam suwir\", \"Kacang kedelai goreng\", \"Daun bawang, kerupuk\"]', '[\"Masak bubur hingga lembut.\", \"Sajikan dengan topping ayam dan pelengkap lainnya.\"]', '2025-04-30 14:10:31'),
(50, 'Sayur Asem', 'Sayur kuah bening asam segar khas Jawa.', 'image/sayur-asem.jpg', '[\"Melinjo\", \"Kacang panjang\", \"Jagung\", \"Asam Jawa\", \"Bumbu halus\"]', '[\"Rebus air dan bumbu.\", \"Masukkan semua bahan, masak hingga matang.\"]', '2025-04-30 14:12:58'),
(51, 'Lumpia Semarang', 'Lumpia goreng isi rebung, telur dan ayam khas Semarang.', 'image/lumpia.jpg', '[\"Kulit lumpia\", \"Rebung\", \"Telur\", \"Ayam cincang\", \"Bawang putih\"]', '[\"Tumis isian hingga matang.\", \"Gulung dengan kulit lumpia dan goreng.\"]', '2025-04-30 14:12:58'),
(52, 'Sambal Goreng Ati', 'Hati ayam yang dimasak dengan sambal merah pedas.', 'image/sambal-goreng-ati.jpg', '[\"Ati ampela\", \"Cabai merah\", \"Tomat\", \"Bawang merah & putih\", \"Garam, gula\"]', '[\"Goreng ati, sisihkan.\", \"Tumis bumbu dan masukkan ati. Masak hingga bumbu meresap.\"]', '2025-04-30 14:12:58'),
(53, 'Opor Ayam', 'Ayam masak santan gurih khas Lebaran.', 'image/opor.jpg', '[\"1 ekor ayam\", \"500 ml santan\", \"Bumbu halus\", \"Daun salam\", \"Serai\"]', '[\"Tumis bumbu hingga harum.\", \"Masukkan ayam, lalu santan.\", \"Masak hingga ayam empuk.\"]', '2025-04-30 14:12:58'),
(54, 'Nasi Kuning', 'Nasi gurih berwarna kuning dari kunyit, disajikan dengan lauk.', 'image/nasi-kuning.jpg', '[\"Beras\", \"Santan\", \"Kunyit\", \"Daun salam\", \"Serai\"]', '[\"Masak beras dengan santan dan bumbu hingga matang.\", \"Kukus jika perlu.\"]', '2025-04-30 14:12:58'),
(55, 'Ikan Pepes', 'Ikan dibumbui dan dibungkus daun pisang lalu dikukus.', 'image/pepes-ikan.jpg', '[\"Ikan mas/nila\", \"Bumbu halus\", \"Daun kemangi\", \"Daun pisang\"]', '[\"Bumbui ikan, bungkus dengan daun pisang.\", \"Kukus hingga matang.\"]', '2025-04-30 14:12:58'),
(56, 'Tumis Tahu Kecap', 'Tahu goreng ditumis dengan kecap manis dan cabai.', 'image/tumis-tahu.jpg', '[\"Tahu\", \"Kecap manis\", \"Bawang merah\", \"Cabai\", \"Tomat\"]', '[\"Goreng tahu, tumis bumbu, lalu masukkan tahu dan kecap.\"]', '2025-04-30 14:12:58'),
(57, 'Sate Padang', 'Sate dengan kuah kental kuning pedas khas Padang.', 'image/sate-padang.jpg', '[\"Daging sapi\", \"Bumbu kuning\", \"Santan\", \"Tepung beras\", \"Tusuk sate\"]', '[\"Rebus daging, potong dan tusuk.\", \"Masak kuah kental.\", \"Sajikan sate dengan kuah.\"]', '2025-04-30 14:12:58'),
(58, 'Cilok Bandung', 'Cilok kenyal dari tepung tapioka yang disajikan dengan sambal kacang.', 'image/cilok.jpg', '[\"Tepung tapioka\", \"Bawang putih\", \"Air panas\", \"Garam\", \"Sambal kacang\"]', '[\"Campur bahan, bentuk bulat.\", \"Rebus hingga mengapung.\", \"Sajikan dengan bumbu kacang.\"]', '2025-04-30 14:12:58'),
(59, 'Ketoprak', 'Mie, tahu, lontong dan tauge disiram bumbu kacang.', 'image/ketoprak.jpg', '[\"Tahu\", \"Tauge\", \"Mie bihun\", \"Lontong\", \"Bumbu kacang\"]', '[\"Tata bahan dalam piring.\", \"Siram dengan bumbu kacang dan kecap.\"]', '2025-04-30 14:12:58'),
(60, 'Bakmie Jawa', 'Bakmie rebus khas Jawa dengan rasa gurih rempah.', 'image/bakmie-jawa.jpg', '[\"Mie telur\", \"Ayam suwir\", \"Kol\", \"Bawang merah & putih\", \"Kaldu ayam\"]', '[\"Tumis bumbu, masukkan ayam dan mie.\", \"Tambahkan air kaldu, sajikan panas.\"]', '2025-04-30 14:12:58'),
(61, 'Gado-Gado', 'Sayuran rebus dengan siraman bumbu kacang dan kerupuk.', 'image/gado-gado.jpg', '[\"Bayam\", \"Tauge\", \"Kentang\", \"Telur rebus\", \"Bumbu kacang\"]', '[\"Rebus semua sayuran.\", \"Sajikan dengan bumbu kacang dan kerupuk.\"]', '2025-04-30 14:12:58'),
(62, 'biyu', 'enakk', 'image/1746081490_WhatsApp Image 2024-09-11 at 06.55.36_2a800ca1.jpg', '[\"biyu\"]', '[\"12\"]', '2025-05-01 06:38:10');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `foto` varchar(255) DEFAULT 'assets/default-user.png',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `role` varchar(20) DEFAULT 'user'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `foto`, `created_at`, `role`) VALUES
(7, 'abi', 'nayla1234@gmail.com', '$2y$10$JB9LSxZgnNNNTB.ohLkIn../gaOGXJ2okaSTfrG0T3F.vUAEGXdb.', 'jaehyun-nct.png', '2025-04-25 06:31:18', 'user'),
(13, 'KHALID ABYYU TASMAN', 'khalidabiyu3@gmail.com', '$2y$10$Wk95idteQRrx6l08e03lo.Vkt0oOgH7PKkPng1e6k.3U89aRmU6HS', 'assets/default-user.png', '2025-04-29 13:17:38', 'user'),
(14, 'nezarr', 'nezar123@gmail.com', '$2y$10$zeNpCQDVS1mK0NGeRObY/uMhCNWS0ONtYq0wOgJH.jyyP94F2oFOq', 'WhatsApp Image 2025-04-15 at 19.06.48_e8f80e96.jpg', '2025-04-30 00:06:57', 'user'),
(16, 'abi', 'raafi@gmail.com', '$2y$10$HCyDTb/T0sx5SGNQ2edDnetph1.EUhfr8ogoCMgleZRU7EXUUhanq', 'WhatsApp Image 2025-04-15 at 19.06.48_e8f80e96.jpg', '2025-04-30 02:40:55', 'user');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `resep_makanan`
--
ALTER TABLE `resep_makanan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `resep_makanan`
--
ALTER TABLE `resep_makanan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
