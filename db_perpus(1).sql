-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jan 23, 2020 at 05:13 AM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `db_perpus`
--

-- --------------------------------------------------------

--
-- Table structure for table `kriteria`
--

CREATE TABLE IF NOT EXISTS `kriteria` (
`id` int(11) NOT NULL,
  `awalan` varchar(100) NOT NULL,
  `kelebihan` varchar(1000) NOT NULL,
  `kekurangan` varchar(1000) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=61 DEFAULT CHARSET=utf32;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_anggota`
--

CREATE TABLE IF NOT EXISTS `tbl_anggota` (
  `nim` varchar(11) NOT NULL,
  `nama` varchar(1000) NOT NULL,
  `tempat_lahir` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_anggota`
--

INSERT INTO `tbl_anggota` (`nim`, `nama`, `tempat_lahir`) VALUES
('A ', '1. Menyenangkan\n2. Kreativitas tinggi (punya gagasan ide - ide bagus)\n3. Konkret\n4. Tidak romantis (alias realistis)\n5. Manis dan Menggoda\n6. Selalu ada di baris terdepan\n7. Tidak Emosional\n8. Suka berpetualang (suka tantangan)\n9. Mendapatkan sesuatu dari hasil Belajar sendiri (Mandiri)\n10. Ambisius\n11. Jujur\n12. Terbuka\n13. Pandai menyembunyikan perasaan\n14. Bertanggung jawab', '1. Keras kepala dan susah di atur\n2. Egois (selalu ingin keinginannya di ikuti)\n3. Selalu ingin mengkritik seseorang yang tidak sesuai ekspektasi\n4. Jarang memberikan petunjuk (pasif)\n5. Tidak sabar\n6. Berwibawa\n7. Terlalu cepat mengambil keputusan'),
('B', 'Cinta damai\nSuka bereksperimen\nBerani\nRamah\nSuka di hormati', 'Emosional gampang tersentuh (sensitif)\nTidak punya pendirian\nEgois\nSenang dimanjakan\nSuka menunda nunda sesuai keinginan sendiri\nPemalu\nSuka memendam perasaan\ntertutup\nKesulitan dalam berkomunikasi\n'),
('C ', 'Energik\nPositif\nSosial\nSenang dengan kebersamaan (mudah bergaul)\nFlexible\nOptimis\nTerampil\nUlet\nKompeten\nMurah hati\nSetia', 'Egois\nSuka di Hargai\nSuka balas dendam\n'),
('D', 'Punya Kepribadian kuat\nMemiliki tujuan yang jelas dan kuat\nPekerja keras\nTidak mudah menghakimi orang lain\nIntuisi nya kuat\nBisa dipercaya\nPunya keyakinan kuat\nPerhatian\nPeduli\nRendah hati\nSetia\nSerius\nPunya sikap terbuka dan Bebas\nPerfeksionis\nKeluarga yang terpenting\n', 'Idealis dan keras kepala\nSensitif (melankolis)\nPosesif (pencemburu)\nPemikiran kolot\nKaku\nSuka beradu pendapat\nPelupa\nTidak mau kalah\n'),
('E', 'Ramah\nMurah senyum\nMencinta Seni dan Berseni\nIntelektual tinggi (pemikiran unik)\nTidak suka keributan\nSuka kebebasan\nTerbuka\nFlexible mudah bergaul\nSenang mencari jalan keluar dari setiap masalah dengan tepat dan cepat\n', 'Tidak realistis\nSangat Pemilih\nPemarah dan Emosional (kata-kata tajam setajam silet)\nSuka berbicara\nSuka menunutut\nPlin plan\nSikapnya terkadang sedingin Es\nTidak setia\n'),
('F', 'Penyayang\nHatinya lembut\nSuka menolong\nSetia\nSisi kemanusiaannya tinggi\nRomantis\nBerpikir terbuka\nToleran\nPeka terhadap lingkungan\nPencinta alam\nCermat\nTerencana\nMembuat sekitar merasa nyaman\nhumoris\n', 'Plin plan\nIdealis\nEmosional\nSuka mengatur\n'),
('G', 'Pekerja yang baik\nAktif\nSuka mengambil alih Tugas dan kewajiban\nperfeksionis\nMemiliki Tujuan yang jelas\nDaya cipta\nMemiliki Naluri\nFilosofis\nSuka membaca (belajar Sejarah)\nSuka berkelana\nKeagamaannya baik\nTidak senang urusan pribadi dicampuri\n', 'Ekspektasi tinggi, berharap orang lain harus bisa'),
('H', 'Berhati - hati\nPekerja Keras\nPemimpi\nPerfeksionis\nPercaya diri\nKreatif\nSabar\nKepribadiannya Kuat\nMotivasi diri kuat\nSangat Cakap mengatur orang lain\nAmbisius\nPraktis', 'Pendiriannya Kuat (pemikiranya tidak bisa dirubah)\nEgois\nPosesif\nMoney Oriented\n'),
('I', 'Berani mengambil resiko\nMembela kebenaran\nElegan dan penuh gaya\nSuka Tantangan\nSuka Berpetualang\nPenyayang\nBaik hati\nTidak Egois', 'Moody (gampang boses)\nMudah tersinggung jika diberi masukan yang tidak disukai (mempertahankan argumennya)'),
('J', 'Fisik kuat\nEnergik\nRoyal\nAmbisius\nSenang dengan orang yang lebih pintar\n', 'Idialis'),
('K', 'Punya keinginan besar\nSabar\nMurah hati\nBaik hati\nPunya daya tarik\nBisa jadi teman yang baik\nBisa diajak kerja sama\nSetia\nKuat\nPercaya diri\nMampu mengendalikan situasai\nPenyayang\nGemar melakukan hal yang punya nilai\n', 'Pemalu\nIntrovert (tertutup)\nEmosional\n'),
('L', 'Romantis\nBerani mengambil kesempatan\nSuka mencoba pengalaman baru\nKemampuan berkomunikasinya baik\nTeliti\nEnergik\nKarir cemerlang\n', 'Sulit menjaga hubungan\nSuka dengan orang yang lebih baik\n'),
('M', 'Tekun dan penuh keinginan\nEnergik\nBerani\nCerdas\nImajinatif\nPekerja keras\nSetia\nSuka memberikan nasihat yang baik\nDalam sebuah hubungan cenderung memberikan segalanya\nPenampilan Lugu\nSelalu ingin menang\nPantang menyerah\nMurah hati\nSuka memberi\n', 'Emosional dan mudah marah\nSuka mengkritik\nGak bisa terima saran\nTertutup\nPemalu\nTerkadang Egois\nSulit mengekspresikan perasaan\n'),
('N', 'Terlihat tidak berdosa\nMenang adalah hasrat utama\nKreatif\nImajinatif\nSelalu mencari kebebasan berekspresi\nMemiliki jiwa Seni\nGigih\n', 'Tidak terduga\nPemalu\nKritis\nSulit menunjukan emosi\nBisa menjadi Egois\nSelalu benar\nSuka lupa teman dan keluarga\n'),
('O ', 'Suka aktifitas yang menarik\nMampu merubah energi untuk menghasilkan uang\nPunya keinginan besar\nPecinta yang baik\nSenang dengan Kualitas dalam sebuah hubungan\nSetia\nBijaksana\nMembela kebenaran\nMoral no satu\n', 'Posesif\nPercintaan menjadi masalah serius\n');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_buku`
--

CREATE TABLE IF NOT EXISTS `tbl_buku` (
`id` int(5) NOT NULL,
  `judul` varchar(200) NOT NULL,
  `pengarang` varchar(100) NOT NULL,
  `penerbit` varchar(150) NOT NULL,
  `thn_terbit` varchar(4) NOT NULL,
  `isbn` varchar(25) NOT NULL,
  `jumlah_buku` int(3) NOT NULL,
  `lokasi` enum('rak1','rak2','rak3') NOT NULL,
  `tgl_input` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_buku`
--

INSERT INTO `tbl_buku` (`id`, `judul`, `pengarang`, `penerbit`, `thn_terbit`, `isbn`, `jumlah_buku`, `lokasi`, `tgl_input`) VALUES
(23, 'Matematika', 'Asepudin', 'Gramedial', '2015', '4871847h', 5, 'rak2', '0000-00-00 00:00:00'),
(24, 'Dasar PHP', 'Solihin', 'Toko bukbek', '2010', '943823jc4', 4, 'rak2', '0000-00-00 00:00:00'),
(25, 'Pintar CSS', 'Jack', 'Media Suar', '2012', '934748', 8, 'rak1', '0000-00-00 00:00:00'),
(26, 'Bahasa Arab', 'Soleh', 'Muslim post', '2015', '923847', 4, 'rak1', '0000-00-00 00:00:00'),
(29, 'Angular js', 'anggul', 'Raja Program', '2016', '943823jc4', 3, 'rak2', '0000-00-00 00:00:00'),
(30, 'Mahir MySQL', 'April', 'Megatama', '2014', '1234', 2, 'rak1', '2016-10-31 03:03:43'),
(31, 'Mahir PHP', 'Julian', 'Jorge', '2016', '4325', 1, 'rak3', '2016-10-31 09:06:05'),
(33, 'test', 'lala', 'lalala', '2014', '4871847h', 5, 'rak2', '2016-10-31 22:03:44'),
(34, 'HTML Untuk Pemula', 'Surya', 'Penerbit 1', '2014', '2345', 5, 'rak1', '2016-11-05 12:16:37');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_transaksi`
--

CREATE TABLE IF NOT EXISTS `tbl_transaksi` (
`id` int(5) NOT NULL,
  `judul` varchar(250) NOT NULL,
  `nim` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `tgl_pinjam` varchar(15) NOT NULL,
  `tgl_kembali` varchar(15) NOT NULL,
  `status` varchar(10) NOT NULL,
  `ket` varchar(250) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_transaksi`
--

INSERT INTO `tbl_transaksi` (`id`, `judul`, `nim`, `nama`, `tgl_pinjam`, `tgl_kembali`, `status`, `ket`) VALUES
(7, 'matematika', 2015804045, 'Wewen Nurwendi', '01-11-2015', '08-11-2015', 'Kembali', ''),
(9, 'PHP Dasar', 2015804065, 'Iqbal Rizqi Purnama', '24-10-2016', '07-11-2016', 'Kembali', ''),
(11, 'matematika', 2011140204, 'Erlang', '28-10-2016', '09-11-2016', 'perpanjang', 'pinjem lagi'),
(12, 'PHP Dasar', 2015804045, 'Wewen', '28-10-2016', '04-11-2016', 'Pinjam', ''),
(13, 'Samudra PHP', 210234, 'maratus', '28-10-2016', '04-11-2016', 'Pinjam', 'lope'),
(15, 'Pintar CSS', 210234, 'maratus', '04-11-2016', '11-11-2016', 'Kembali', 'pintar'),
(19, 'Mahir MySQL', 213834, 'Fariz', '04-11-2016', '25-11-2016', 'Pinjam', 'daspd'),
(20, 'Pintar CSS', 201328, 'Cristine', '04-11-2016', '11-11-2016', 'perpanjang', ''),
(21, 'Pintar CSS', 201328, 'Cristine', '04-11-2016', '11-11-2016', 'Kembali', ''),
(22, 'Pintar CSS', 201328, 'Cristine', '30-11-2016', '09-11-2016', 'Pinjam', ''),
(23, 'Angular js', 201238, 'Lala', '04-11-2016', '11-11-2016', 'Pinjam', 'sdad'),
(24, 'Mahir PHP', 201238, 'Lala', '05-11-2016', '12-11-2016', 'Pinjam', 'lal'),
(25, 'Matematika', 21394, 'Ria Putri', '05-11-2016', '12-11-2016', 'Kembali', 'lalsd');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE IF NOT EXISTS `tbl_user` (
`id` int(3) NOT NULL,
  `nama` varchar(200) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(200) NOT NULL,
  `email` varchar(100) NOT NULL,
  `foto` varchar(50) NOT NULL,
  `level` enum('admin','user') NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`id`, `nama`, `username`, `password`, `email`, `foto`, `level`) VALUES
(1, 'Admin', 'admin', '21232f297a57a5a743894a0e4a801fc3', 'mapan@gmail.com', 'avatar5.png', 'admin'),
(11, 'ali', 'ali', '86318e52f5ed4801abe1d13d509443de', 'ali@ali.com', '512634.jpg', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `kriteria`
--
ALTER TABLE `kriteria`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_anggota`
--
ALTER TABLE `tbl_anggota`
 ADD PRIMARY KEY (`nim`);

--
-- Indexes for table `tbl_buku`
--
ALTER TABLE `tbl_buku`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_transaksi`
--
ALTER TABLE `tbl_transaksi`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `kriteria`
--
ALTER TABLE `kriteria`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=61;
--
-- AUTO_INCREMENT for table `tbl_buku`
--
ALTER TABLE `tbl_buku`
MODIFY `id` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=35;
--
-- AUTO_INCREMENT for table `tbl_transaksi`
--
ALTER TABLE `tbl_transaksi`
MODIFY `id` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
MODIFY `id` int(3) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
