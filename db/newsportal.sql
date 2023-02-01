-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 01, 2023 at 02:15 AM
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
-- Database: `newsportal`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbladmin`
--

CREATE TABLE `tbladmin` (
  `id` int(11) NOT NULL,
  `AdminUserName` varchar(255) DEFAULT NULL,
  `AdminPassword` varchar(255) DEFAULT NULL,
  `AdminEmailId` varchar(255) DEFAULT NULL,
  `userType` int(11) DEFAULT NULL,
  `CreationDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbladmin`
--

INSERT INTO `tbladmin` (`id`, `AdminUserName`, `AdminPassword`, `AdminEmailId`, `userType`, `CreationDate`, `UpdationDate`) VALUES
(1, 'admin', 'f925916e2754e5e03f75dd58a5733251', 'phpgurukulofficial@gmail.com', 1, '2021-05-26 18:30:00', '2021-11-11 16:23:15');

-- --------------------------------------------------------

--
-- Table structure for table `tblcategory`
--

CREATE TABLE `tblcategory` (
  `id` int(11) NOT NULL,
  `CategoryName` varchar(200) DEFAULT NULL,
  `Description` mediumtext DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `Is_Active` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblcategory`
--

INSERT INTO `tblcategory` (`id`, `CategoryName`, `Description`, `PostingDate`, `UpdationDate`, `Is_Active`) VALUES
(6, 'POLITIK', 'Kategory berkaitan dengan politik Nasional', '2021-06-21 18:30:00', '2023-01-31 19:05:56', 1),
(8, 'Uncategories', 'Kategori berkaitan dengan berita lainnya', '2021-11-07 18:17:28', '2023-01-31 19:06:37', 1),
(9, 'HUKUM', 'Kategori berkaitan dengan Hukum', '2023-01-31 15:19:06', '2023-01-31 19:06:14', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblcomments`
--

CREATE TABLE `tblcomments` (
  `id` int(11) NOT NULL,
  `postId` int(11) DEFAULT NULL,
  `name` varchar(120) DEFAULT NULL,
  `email` varchar(150) DEFAULT NULL,
  `comment` mediumtext DEFAULT NULL,
  `postingDate` timestamp NULL DEFAULT current_timestamp(),
  `status` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tblpages`
--

CREATE TABLE `tblpages` (
  `id` int(11) NOT NULL,
  `PageName` varchar(200) DEFAULT NULL,
  `PageTitle` mediumtext DEFAULT NULL,
  `Description` longtext DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblpages`
--

INSERT INTO `tblpages` (`id`, `PageName`, `PageTitle`, `Description`, `PostingDate`, `UpdationDate`) VALUES
(1, 'aboutus', 'About Law Firm Dedi Iskandar & Partner', '<p><strong>Law Firm Dedi Iskandar,S.H.,M.H.&amp; Partners</strong> merupakan kantor pengacara,advokat dan konsultan hukum yang didirikan oleh pengacara profesional <strong>Dedi Iskandar,S.H., M.H.,</strong> dengan segudang prestasi baik akademik maupun non akademik, sehingga <strong>Law Firm Dedi Iskandar, S.H.,M.H.</strong> yang terkonsentrasi dalam layanan konsultasi hukum, pendampingan hukum kepada seluruh masyarakat Negera Kesatuan Republik Indonesia dalam perjuangan penegakan keadilan.</p><p><br>\r\n<strong>Law Firm Dedi Iskandar,S.H.,M.H.</strong> di dukung oleh Tim Pengacara yang telah terpercaya, berpengalaman dan profesional dalam berbagai macam perkara baik perkara Pidana maupun Perkara Perdata. Dalam layanan pendampingan hukum atau penanganan perkara <strong>Law Firm Dedi Iskandar,S.H.,M.H.</strong> selalu mengedepankan langkah penyelesaian perkara yang cepat, efektif dan efisien terhadap klien dengan berlandaskan azas-azas musyawarah mufakat ataupun mediasi. <strong>Law Firm Dedi Iskandar,S.H.,M.H.</strong> telah berpengalaman dalam berbagai layanan dan pendampingan hukum baik individu, organisasi, perusahaan ( Corporate ).</p><p><br>\r\n<strong>Law Firm Dedi Iskandar,S.H.,M.H.</strong> dengan Visi dan Misi meperjuangkan penegakan hukum dan keadilan kepada masyarakat pencari keadilan dengan penuh tanggung jawab dan profesional sehingga tercapai penyelesaian perkara yang tepat sasaran, efektif dan efisien.</p><p>\r\n<br>\r\n<strong>Law Firm Dedi Iskandar,S.H.,M.H.&amp; Partners</strong> telah berpengalaman dalam penanganan perkara di bidang Hukum diantaranya : <br>\r\nHukum Pidana\r\nMeliputi perkara-perkara pidana penipuan, penggelapan, pembunuhan, penggelapan dalam pekerjaan/jabatan, penganiayaan, pencemaran nama baik, perbuatan tidak menyenangkan, pelecehan seksual, penyalahgunaan Narkotika dan Psikotropika (Narkoba), Kasus Korupsi, penyelundupan dan pencurian, dan perkara-perkara pidana lainnya.</p><p>\r\n<br><b>\r\nHUKUM PERDAGANGAN\r\n</b></p><p>Pendirian Badan-badan Usaha, seperti: UD, CV, Firma, PT, dll., Pengurusan Perijinan Usaha, Pembuatan kontrak-kontrak dagang, Analisa kontrak-kontrak dagang, Pelanggaran kontrak dagang (breach of contract), Mempertahankan kontrak dagang, Mengajukan gugatan sengketa dagang, Penggunaan Surat Berharga, dan lain-lain.</p><p>\r\n<br><b>\r\nHUKUM PERBANKAN</b><br>\r\nPembiayaan suatu proyek baik proyek pemerintah maupun swasta, Analisa Dokumen Kredit Bank, Kredit Sindikasi, Penanganan Kasus-kasus pidana perbankan, Penyelesaian kredit bermasalah atau macet, Eksekusi benda jaminan, Kartu kredit (credit card), persoalan seputar jasa perbankan, dan lain-lain.</p><p>\r\n<br><b>\r\nHUKUM PERUSAHAAN</b></p><p>\r\nPembuatan Draft Anggaran Dasar Perusahaan, Pendirian Perusahaan seperti UD, Firma, CV, dan Perseroan Terbatas, Pengurusan Perijinan Usaha, Pembuatan Draft Kontrak dan/atau Dokumen perusahaan lainnya (Legal Drafting), Pengurusan Legalitas Kontrak/Kerjasama dengan Perusahaan lain, Investasi (Penanaman Modal) pada perusahaan lain, Legal Audit Dokumen Perusahaan, Penggabungan Perusahaan baik Merger maupun Konsolidasi, Pembelian Perusahaan termasuk Akuisisi, Pembubaran suatu perusahaan.</p><p>\r\n<br><b>\r\nHUKUM KONTRAK/PERJANJIAN</b></p><p>\r\nPembuatan Draft Kontrak Bisnis, Peraturan Perusahaan, Perjanjian Investasi/Penanaman Modal, Perjanjian Kerjasama, Perjanjian Hutang, Perjanjian Konsinyasi, Perjanjian Agen dan Distributor, dan lain lain.</p><p>\r\n<br><b>\r\nHUKUM KEPAILITAN</b></p><p>\r\nPembuatan Draft Rencana Penutupan Perusahaan, Pengajuan gugatan kepailitan, Mempertahankan perusahaan dari gugatan kepailitan pihak lain, Penutupan dan Pembubaran suatu Perusahaan, dan lain-sebagainya.</p><p>\r\n<br><b>\r\nHUKUM KEKAYAAN ATAS INTELEKTUAL</b></p><p>\r\nPendaftaran merk dagang, Pendaftaran hak cipta, Pelanggaran Hak Cipta, Pelanggaran/Pemalsuan Merek, Pelanggaran Paten milik pihak lain, Pembukaan Rahasia Dagang Milik Perusahaan Lain, Pelanggaran terhadap desain industri milik perusahaan lain, dan sebagainya.</p><p>\r\n<br><b>\r\nHUKUM KEDOKTERAN</b></p><p>\r\nInformed Consent, Peraturan Rumah Sakit, Malpraktik Dokter &amp; Dokter Gigi, Malpraktik Tenaga Kesehatan lainnya, Malpraktik Akuntan, Malpraktik yang dilakukan oleh Arsitek, dan atau Tenaga Ahli lainnya, dan sebagainya.</p><p>\r\n<br><b>\r\nHUKUM PERDATA UMUM</b></p><p>\r\nMeliputi perkara-perkara Hutang Piutang, Jual Beli, Sewa Menyewa, Pinjam Meminjam, Perbuatan Melawan Hukum, ingkar janji (wanprestasi), titip jual, dan lain-lain.</p><p>\r\n<br><b>\r\nHUKUM PERLINDUNGAN KONSUMEN</b></p><p>\r\nPengaturan Aktivitas Perusahaan sesuai dengan UU Perlindungan Konsumen, Penanganan Kasus-kasus pelanggaran UU Perlindungan Konsumen, Penuntutan atas adanya iklan yang menyesatkan konsumen, Penuntutan terhadap produsen yang merugikan konsumen, dan lain sebagainya.</p><p>\r\n<br><b>\r\nHUKUM ASURANSI</b></p><p>\r\nKlaim Asuransi (insurance claim) termasuk juga Reasuransi, Asuransi dana pensiun (Pension Fund), Mempertahankan adanya klaim asuransi, Penelitian Dokumen-dokumen Claim Asuransi, dan lain-lain.</p><p>\r\n<br><b>\r\nHUKUM JASA KONSTRUKSI</b></p><p>\r\nPendirian Perusahaan Jasa Konstruksi, Perijinan Perusahaan Jasa Konstruksi, Pembuatan draft kontrak-kontrak antara pengembang dengan kontraktor, Perpajakan, Tinjau ulang dokumen-dokumen hukum (review the legal dokumen), Pembuatan draft kontrak-kontrak antara developer ke Pembeli, Analisa hukum terhadap dokumen-dokumen jasa konstruksi, dan lain-lain.</p><p>\r\n<br><b>\r\nHUKUM PERTANAHAN</b></p><p>\r\nSengketa kepemilikan Tanah, Sengketa jual beli tanah, kasus penghunian tanah oleh orang tidak berhak, kasus penyerobotan tanah, kasus sertifikat ganda, kasus pemaksaan dalam jual beli tanah, serta kasus-kasus tanah lainnya.</p>', '2021-06-29 18:30:00', '2023-01-31 09:30:17');

-- --------------------------------------------------------

--
-- Table structure for table `tblposts`
--

CREATE TABLE `tblposts` (
  `id` int(11) NOT NULL,
  `PostTitle` longtext DEFAULT NULL,
  `CategoryId` int(11) DEFAULT NULL,
  `SubCategoryId` int(11) DEFAULT NULL,
  `PostDetails` longtext CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `Is_Active` int(1) DEFAULT NULL,
  `PostUrl` mediumtext DEFAULT NULL,
  `PostImage` varchar(255) DEFAULT NULL,
  `viewCounter` int(11) DEFAULT NULL,
  `postedBy` varchar(255) DEFAULT NULL,
  `lastUpdatedBy` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblposts`
--

INSERT INTO `tblposts` (`id`, `PostTitle`, `CategoryId`, `SubCategoryId`, `PostDetails`, `PostingDate`, `UpdationDate`, `Is_Active`, `PostUrl`, `PostImage`, `viewCounter`, `postedBy`, `lastUpdatedBy`) VALUES
(14, 'Mengembalikan Hak Konstitusional Yang Terampas Paksa Karena Pejabat Kepala Daerah', 9, 12, '<p style=\"box-sizing: inherit; margin-bottom: 10px; color: rgb(25, 27, 29); font-family: Cabin, sans-serif; font-size: 16px;\"><span style=\"box-sizing: inherit; font-weight: bolder;\">Permohonan</span>&nbsp;Pengujian Pasal 201 Ayat (10) dan ayat (11) Undang-Undang Republik Indonesia Nomor 10 Tahun 2016 tentang Perubahan Kedua Atas Undang Undang Nomor<br style=\"box-sizing: inherit;\">1 Tahun 2015 tentang Penetapan Peraturan Pemerintah Pengganti Undang-Undang Nomor 1 Tahun 2014 tentang Pemilihan Gubernur, Bupati Dan Walikota Menjadi Undang-Undang (Lembaran Negara Republik Indonesia Tahun 2016 Nomor 130, Tambahan Lembaran Negara Republik Indonesia Nomor 5898) Terhadap Pasal 1 ayat (2), Pasal 18 Ayat (4), Pasal 27 ayat (1) dan Pasal 28D Ayat (1) Undang-Undang Dasar Tahun 1945.</p><p style=\"box-sizing: inherit; margin-bottom: 10px; color: rgb(25, 27, 29); font-family: Cabin, sans-serif; font-size: 16px;\">Para Pemohon Perseorangan Warga Negara Indonesia, yang hak konstitusionalnya dirugikan terdiri dari, Dr. ( Can. ) Dewi Nadya Maharani S.H., M.H, Suzie Alancy Firman, SH, Moch. Sidik, Rahmatulloh,S.Pd, M.Si, Mohammad Syaiful Jihad<br style=\"box-sizing: inherit;\">Pasal 201 ayat (10) UU No. 10/2016 “Untuk mengisi kekosongan jabatan Gubernur, diangkat penjabat Gubernur yang berasal dari jabatan pimpinan tinggi madya sampai dengan pelantikan Gubernur sesuai dengan ketentuan peraturan perundang-undangan.”</p><p style=\"box-sizing: inherit; margin-bottom: 10px; color: rgb(25, 27, 29); font-family: Cabin, sans-serif; font-size: 16px;\">Itu artinya penjabat Gubernur akan ditunjuk dari pejabat Eselon I untuk melaksanakan pemilu serentak 2024 bagi kepala daerah yang habis masa jabatan 2022 dan 2023 oleh Menteri Dalam Negeri.</p><p style=\"box-sizing: inherit; margin-bottom: 10px; color: rgb(25, 27, 29); font-family: Cabin, sans-serif; font-size: 16px;\">Pasal 201 ayat (11) UU No. 10/2016 “Untuk mengisi kekosongan jabatan Bupati/Walikota, diangkat penjabat Bupati/Walikota yang berasal dari jabatan pimpinan tinggi Pratama sampai dengan pelantikan Bupati, dan Walikota sesuai dengan ketentuan peraturan perundang-undangan.”</p><p style=\"box-sizing: inherit; margin-bottom: 10px; color: rgb(25, 27, 29); font-family: Cabin, sans-serif; font-size: 16px;\">Itu artinya penjabat Walikota/ Bupati akan ditunjuk dari pejabat Eselon II b untuk melaksanakan pemilu serentak 2024 bagi kepala daerah yang habis masa jabatan 2022 dan 2023 oleh Menteri Dalam Negeri.</p><p style=\"box-sizing: inherit; margin-bottom: 10px; color: rgb(25, 27, 29); font-family: Cabin, sans-serif; font-size: 16px;\">Tentu saja hal tersebut merampas Hak Konstitusional Para Pemohon, karena dengan adanya pasal-pasal tersebut Para Pemohon tidak bisa memilih pemimpin kepala daerah secara langsung. Sehingga Para Pemohon mengajukan Pengujian Undang-undang atas pasal a quo.<br style=\"box-sizing: inherit;\">Batu uji Pasal 1 ayat (2) UUD 1945.</p><p style=\"box-sizing: inherit; margin-bottom: 10px; color: rgb(25, 27, 29); font-family: Cabin, sans-serif; font-size: 16px;\">internasional yang Indonesia telah setujui dalam, Declaration of Human Rights, Art. 29 (2),</p><p style=\"box-sizing: inherit; margin-bottom: 10px; color: rgb(25, 27, 29); font-family: Cabin, sans-serif; font-size: 16px;\">” Jika diterjemahkan secara bebas yaitu, “Dalam melaksanakan hak dan kebebasannya, setiap orang hanya tunduk pada: batasan seperti yang ditentukan oleh hukum semata-mata untuk tujuan mengamankan pengakuan dan penghormatan yang layak terhadap hak dan kebebasan orang lain dan memenuhi persyaratan moralitas, ketertiban umum, dan kesejahteraan umum yang adil dalam masyarakat yang demokratis.”</p><p style=\"box-sizing: inherit; margin-bottom: 10px; color: rgb(25, 27, 29); font-family: Cabin, sans-serif; font-size: 16px;\">Batu uji Pasal 18 ayat (4) UUD 1945.<br style=\"box-sizing: inherit;\">Ada perbedaan Efektivitas penunjukkan, Legitimasi rendah, berkarir berbasis prestasi, menjalankan kewenangan terbatas, masa Jabatan singkat, “Orang” Droping pusat, pengetahuan daerah terbatas, sedangkan yang berasal dari pemilihan lebih kuat, berkarir berbasis popularitas dan akseptabilitas, menjalankan kewenangan penuh, masa jabatan lama, orang daerah menguasai penuh lokalitas;<br style=\"box-sizing: inherit;\">Batu uji Pasal 27 ayat (1) UUD 1945.</p><p style=\"box-sizing: inherit; margin-bottom: 10px; color: rgb(25, 27, 29); font-family: Cabin, sans-serif; font-size: 16px;\">Bagaimana mungkin pemegang kekuasaan menjunjung hukum dan pemerintahan tidak ada kecualinya ketika menjalankan kekuasaan dengan merampas hak PARA PEMOHON? Apakah dibolehkan mengatakan menjunjung tinggi hukum dan pemerintahan pada saat yang sama merampas hak PARA PEMOHON.<br style=\"box-sizing: inherit;\">Batu uji Pasal 28D ayat (1) UUD 1945.</p><p style=\"box-sizing: inherit; margin-bottom: 10px; color: rgb(25, 27, 29); font-family: Cabin, sans-serif; font-size: 16px;\">Pemegang kekuasaan bahkan tidak memberikan kepastian hukum, kenapa? Karena PARA PEMOHON merasa hak-hak konstitusional PARA PEMOHON bisa kapan saja hilang ketika Presiden dan DPR RI Bersatu membuat undang-undang seperti yang dikehendaki,</p><p style=\"box-sizing: inherit; margin-bottom: 10px; color: rgb(25, 27, 29); font-family: Cabin, sans-serif; font-size: 16px;\">meski menjadi terampas Hak PARA PEMOHON salah satunya menentukan sendiri pemimpinnya. Petitum Menerima dan mengabulkan permohonan PARA PEMOHON untuk seluruhnya; Menyatakan Pasal 201 Ayat (10) dan ayat (11) UU No. 10/2016 bertentangan dengan Undang-Undang Dasar 1945 dan tidak memiliki kekuatan mengikat; Menyatakan ketentuan Pasal 201 Ayat (10) dan ayat (11) UU No. 10/2016 bertentangan dengan Undang-Undang Dasar Negara Republik Indonesia Tahun 1945 dan tidak mempunyai kekuatan hukum yang mengikat, sepanjang tidak dimaknai yang menjadi kepala daerah adalah yang melalui proses pemilihan kepala daerah yang dipilih langsung secara demokratis.</p><p style=\"box-sizing: inherit; margin-bottom: 10px; color: rgb(25, 27, 29); font-family: Cabin, sans-serif; font-size: 16px;\">Menyatakan ketentuan Pasal 201 Ayat (10) dan ayat (11) UU No. 10/2016 bertentangan dengan Undang-Undang Dasar Negara Republik Indonesia Tahun 1945 dan tidak mempunyai kekuatan hukum yang mengikat, sepanjang tidak dimaknai penjabat kepala daerah adalah kepala daerah yang sudah dipilih rakyat sebelumnya untuk melanjutkan pemerintahan guna menyiapkan pemilihan kepala daerah 2024. (&nbsp;<em style=\"box-sizing: inherit;\"><span style=\"box-sizing: inherit; font-weight: bolder;\">Penulis adalah Kuasa&nbsp; Hukum para Pemohon</span>)</em></p>', '2023-01-31 15:22:42', '2023-01-31 23:18:37', 1, 'Mengembalikan-Hak-Konstitusional-Yang-Terampas-Paksa-Karena-Pejabat-Kepala-Daerah', 'b06314f5d98e907272416d339c78d675.jpg', 37, 'admin', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblsubcategory`
--

CREATE TABLE `tblsubcategory` (
  `SubCategoryId` int(11) NOT NULL,
  `CategoryId` int(11) DEFAULT NULL,
  `Subcategory` varchar(255) DEFAULT NULL,
  `SubCatDescription` mediumtext DEFAULT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `Is_Active` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblsubcategory`
--

INSERT INTO `tblsubcategory` (`SubCategoryId`, `CategoryId`, `Subcategory`, `SubCatDescription`, `PostingDate`, `UpdationDate`, `Is_Active`) VALUES
(12, 9, 'OPINI', 'Post Berdasarkan Opini', '2023-01-31 15:20:24', '2023-01-31 19:06:57', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbladmin`
--
ALTER TABLE `tbladmin`
  ADD PRIMARY KEY (`id`),
  ADD KEY `AdminUserName` (`AdminUserName`);

--
-- Indexes for table `tblcategory`
--
ALTER TABLE `tblcategory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcomments`
--
ALTER TABLE `tblcomments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`),
  ADD KEY `postId` (`postId`);

--
-- Indexes for table `tblpages`
--
ALTER TABLE `tblpages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblposts`
--
ALTER TABLE `tblposts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`),
  ADD KEY `postcatid` (`CategoryId`),
  ADD KEY `postsucatid` (`SubCategoryId`),
  ADD KEY `subadmin` (`postedBy`);

--
-- Indexes for table `tblsubcategory`
--
ALTER TABLE `tblsubcategory`
  ADD PRIMARY KEY (`SubCategoryId`),
  ADD KEY `catid` (`CategoryId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbladmin`
--
ALTER TABLE `tbladmin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tblcategory`
--
ALTER TABLE `tblcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tblcomments`
--
ALTER TABLE `tblcomments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tblpages`
--
ALTER TABLE `tblpages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblposts`
--
ALTER TABLE `tblposts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `tblsubcategory`
--
ALTER TABLE `tblsubcategory`
  MODIFY `SubCategoryId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tblcomments`
--
ALTER TABLE `tblcomments`
  ADD CONSTRAINT `pid` FOREIGN KEY (`postId`) REFERENCES `tblposts` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `tblposts`
--
ALTER TABLE `tblposts`
  ADD CONSTRAINT `postcatid` FOREIGN KEY (`CategoryId`) REFERENCES `tblcategory` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `postsucatid` FOREIGN KEY (`SubCategoryId`) REFERENCES `tblsubcategory` (`SubCategoryId`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `subadmin` FOREIGN KEY (`postedBy`) REFERENCES `tbladmin` (`AdminUserName`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `tblsubcategory`
--
ALTER TABLE `tblsubcategory`
  ADD CONSTRAINT `catid` FOREIGN KEY (`CategoryId`) REFERENCES `tblcategory` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
