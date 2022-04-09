-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Waktu pembuatan: 12 Jan 2022 pada 14.57
-- Versi server: 10.5.12-MariaDB
-- Versi PHP: 7.3.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `id17880731__2021projectquiz`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `answer`
--

CREATE TABLE `answer` (
  `qid` text NOT NULL,
  `ansid` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `answer`
--

INSERT INTO `answer` (`qid`, `ansid`) VALUES
('qb01', 'f03'),
('qb02', 'q02'),
('qb03', 'h03'),
('qb04', 'i03'),
('qb05', 'j01'),
('qc01', 'k01'),
('qc02', 'l01'),
('qc03', 'm01'),
('qc04', 'n02'),
('qc05', 'o02'),
('qd01', 'p03'),
('qd02', 'q01'),
('qd03', 'r03'),
('qd04', 's02'),
('qd05', 't02'),
('qa01', 'a02'),
('qa02', 'b03'),
('qa03', 'c01'),
('qa04', 'd02'),
('qa05', 'e02');

-- --------------------------------------------------------

--
-- Struktur dari tabel `audio`
--

CREATE TABLE `audio` (
  `id` int(11) NOT NULL,
  `gid` text COLLATE utf8_unicode_ci NOT NULL,
  `sid` int(11) NOT NULL,
  `audio_link` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `history`
--

CREATE TABLE `history` (
  `email` varchar(50) NOT NULL,
  `eid` text NOT NULL,
  `score` int(11) NOT NULL,
  `level` int(11) NOT NULL,
  `sahi` int(11) NOT NULL,
  `wrong` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `history`
--

INSERT INTO `history` (`email`, `eid`, `score`, `level`, `sahi`, `wrong`, `date`) VALUES
('test123@gmail.com', 'bd001', 22, 10, 8, 2, '2022-01-10 17:45:06'),
('kevinjulio@gmail.com', 'kt003', 30, 10, 10, 0, '2022-01-10 17:45:26'),
('celine@gmail.com', 'pt002', 22, 10, 8, 2, '2022-01-10 17:45:36'),
('annisanurdiana@gmail.com', 'bd001', 8, 5, 2, 4, '2022-01-10 19:16:34'),
('', 'bd001', -1, 1, 0, 1, '2022-01-11 02:59:32'),
('annisanurdiana@gmail.com', 'dsa004', 4, 2, 1, 1, '2022-01-12 14:48:46');

-- --------------------------------------------------------

--
-- Struktur dari tabel `options`
--

CREATE TABLE `options` (
  `qid` varchar(50) NOT NULL,
  `option` varchar(5000) NOT NULL,
  `optionid` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `options`
--

INSERT INTO `options` (`qid`, `option`, `optionid`) VALUES
('qa01', 'SQL dan DDL', 'a01'),
('qa01', 'SQL dan Tanpa-SQL', 'a02'),
('qa01', 'Postrgres dan MongoDB', 'a03'),
('qa02', 'Kunci kandidat', 'b01'),
('qa02', 'Kunci utama', 'b02'),
('qa02', 'semua', 'b03'),
('qa03', 'ALTER TABLE', 'c01'),
('qa03', 'TAMBAHKAN KOLOM', 'c02'),
('qa03', 'MASUKKAN KOLOM	', 'c03'),
('qa04', 'Tabel', 'd01'),
('qa04', 'Struktur seperti pohon', 'd02'),
('qa04', 'Catatan', 'd03'),
('qa05', 'Baris', 'e01'),
('qa05', 'Sebuah Meja', 'e02'),
('qa05', 'Sebuah Lapangan', 'e03'),
('qb01', 'o', 'f01'),
('qb01', 't', 'f02'),
('qb01', 'h', 'f03'),
('qb02', 'ekspresi reguler', 'g01'),
('qb02', 'ulang', 'g02'),
('qb02', 'pyregex', 'g03'),
('qb03', 'acak.seragam ()', 'h01'),
('qb03', 'acak.random()', 'h02'),
('qb03', 'semua benar', 'h03'),
('qb04', 'Tulis', 'i01'),
('qb04', 'Output.binary', 'i02'),
('qb04', 'Buang', 'i03'),
('qb05', 'Menu.posting (250.250)', 'j01'),
('qb05', 'Menu.post()', 'j02'),
('qb05', 'Menu.display_popup(250.250)', 'j03'),
('qc01', 'Val dan var', 'k01'),
('qc01', 'Vas dan val', 'k02'),
('qc01', 'This dan var', 'k03'),
('qc02', 'Var	', 'l01'),
('qc02', 'Val', 'l02'),
('qc02', 'Init', 'l03'),
('qc03', 'Val', 'm01'),
('qc03', 'Void', 'm02'),
('qc03', 'This', 'm03'),
('qc04', 'Void', 'n01'),
('qc04', 'Fun', 'n02'),
('qc04', 'Static', 'n03'),
('qc05', 'Kotlin itu sederhana	', 'o01'),
('qc05', 'Kotlin mendukung pemrograman berorientasi objek dan pemrograman fungsional', 'o02'),
('qc05', 'Kotlin adalah pemrograman berorientasi objek', 'o03'),
('qd01', '(1)	', 'p01'),
('qd01', '(log n)	', 'p02'),
('qd01', '(n2)', 'p03'),
('qd02', 'Tumpukan	', 'q01'),
('qd02', 'Daftar	', 'q02'),
('qd02', 'Antre', 'q03'),
('qd03', 'Seri Fibonacci	', 'r01'),
('qd03', 'Menara Hanoi	', 'r02'),
('qd03', 'Semua yang di atas', 'r03'),
('qd04', 'Pencarian Linier	', 's01'),
('qd04', 'Pencarian Biner	', 's02'),
('qd04', 'Pencarian Interpolasi', 's03'),
('qd05', 'satu perbandingan lebih sedikit dibuat pada iterasi berikutnya	', 't01'),
('qd05', 'setidaknya satu elemen berada pada posisi terurutnya	', 't02'),
('qd05', 'Kedua A & B benar', 't03');

-- --------------------------------------------------------

--
-- Struktur dari tabel `questions`
--

CREATE TABLE `questions` (
  `eid` text NOT NULL,
  `qid` text NOT NULL,
  `qns` text NOT NULL,
  `choice` int(10) NOT NULL,
  `sn` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `questions`
--

INSERT INTO `questions` (`eid`, `qid`, `qns`, `choice`, `sn`) VALUES
('bd001', 'qa01', 'Ada 2 jenis database yaitu :', 4, 1),
('bd001', 'qa02', 'Berapa banyak jenis kunci dalam Desain Basis Data?', 4, 2),
('bd001', 'qa03', 'Dalam SQL, perintah mana yang digunakan untuk mengubah data dalam tabel?', 3, 3),
('bd001', 'qa04', 'Manakah dari berikut ini yang mewakili hubungan antara satu set nilai?', 3, 4),
('bd001', 'qa05', 'Manakah dari opsi berikut yang digunakan untuk pengambilan data?', 3, 5),
('pt002', 'qb01', 'Apa output untuk \'python\' [-3]?', 3, 1),
('pt002', 'qb02', 'Beri nama modul python yang mendukung ekspresi reguler!', 3, 2),
('pt002', 'qb03', 'Bagaimana kita bisa menghasilkan angka acak dengan python menggunakan metode?', 3, 3),
('pt002', 'qb04', 'Pilih fungsi yang benar di antara mereka yang dapat digunakan untuk menulis data yang akan dilakukan untuk keluaran biner?', 3, 4),
('pt002', 'qb05', 'Dengan Python kita dapat membuat menu popup. Pilih kode untuk menampilkan menu popup?', 3, 5),
('kt003', 'qc01', 'Ada dua jenis deklarasi variabel di kotlin yaitu...', 3, 1),
('kt003', 'qc02', 'Deklarasi Variabel yang bersifat umum dan dapat diberikan berkali-kali disebut...', 3, 2),
('kt003', 'qc03', 'Sebuah deklarasi Variabel yang konstan, tidak dapat diberikan beberapa kali dan dapat diinisialisasi hanya satu kali dikenal sebagai...', 3, 3),
('kt003', 'qc04', 'Manakah dari berikut ini yang benar untuk mendeklarasikan metode atau fungsi di kotlin...', 3, 4),
('kt003', 'qc05', 'Manakah dari berikut ini yang merupakan keunggulan kotlin dibandingkan java...', 3, 5),
('dsa004', 'qd01', 'Apa kompleksitas waktu kasus terburuk dari algoritma pencarian linier?', 3, 1),
('dsa004', 'qd02', 'Struktur data apa yang digunakan untuk depth first traversal dari graf?', 3, 2),
('dsa004', 'qd03', 'Manakah dari berikut ini yang merupakan contoh pendekatan pemrograman dinamis?', 3, 3),
('dsa004', 'qd04', 'Manakah dari teknik pencarian berikut yang tidak memerlukan data dalam bentuk terurut?', 3, 4),
('dsa004', 'qd05', 'Setelah setiap iterasi dalam bubble sort?', 3, 5);

-- --------------------------------------------------------

--
-- Struktur dari tabel `quiz`
--

CREATE TABLE `quiz` (
  `eid` text NOT NULL,
  `title` varchar(100) NOT NULL,
  `sahi` int(11) NOT NULL,
  `wrong` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `quiz`
--

INSERT INTO `quiz` (`eid`, `title`, `sahi`, `wrong`, `total`, `date`) VALUES
('bd001', 'Basis Data', 6, 1, 5, '2022-01-10 16:39:14'),
('pt002', 'Python', 6, 1, 5, '2022-01-10 16:39:34'),
('kt003', 'Kotlin', 4, 0, 5, '2022-01-10 16:39:42'),
('dsa004', 'DSA', 4, 0, 5, '2022-01-10 16:59:07');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rank`
--

CREATE TABLE `rank` (
  `email` varchar(50) NOT NULL,
  `score` int(11) NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `rank`
--

INSERT INTO `rank` (`email`, `score`, `time`) VALUES
('annisanurdiana25@gmail.com', -10, '2022-01-10 18:34:48'),
('annisanurdiana@gmail.com', 17, '2022-01-12 14:48:37');

-- --------------------------------------------------------

--
-- Struktur dari tabel `soal`
--

CREATE TABLE `soal` (
  `sid` int(20) NOT NULL,
  `isi` text COLLATE utf8_unicode_ci NOT NULL,
  `pil` text COLLATE utf8_unicode_ci NOT NULL,
  `mp3` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `jb` int(11) NOT NULL,
  `kt` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `wk` int(11) NOT NULL,
  `ss` double NOT NULL,
  `lv` int(11) NOT NULL,
  `ts` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `st` enum('0','process','resolved','') COLLATE utf8_unicode_ci NOT NULL,
  `ket` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `soal`
--

INSERT INTO `soal` (`sid`, `isi`, `pil`, `mp3`, `jb`, `kt`, `wk`, `ss`, `lv`, `ts`, `st`, `ket`) VALUES
(2, 'Apa kompleksitas waktu kasus terburuk dari algoritma pencarian linier?', '{\"a\":\"(1)\",\"b\":\"(log n)\",\"c\":\"(n2)\"}', '', 2, 'dsa', 25, 5, 4, '2021-11-10 03:23:10', '', '-'),
(3, 'Struktur data apa yang digunakan untuk depth first traversal dari graf?', '{\"a\":\"Tumpukan\",\"b\":\"Daftar\",\"c\":\"Antre\"}', '', 0, 'dsa', 20, 5, 3, '2021-11-10 03:23:10', '', '-'),
(4, 'Manakah dari berikut ini yang merupakan contoh pendekatan pemrograman dinamis?', '{\"a\":\"Seri Fibonacci\",\"b\":\"Menara Hanoi\",\"c\":\"Semua yang di atas\"}', '', 2, 'dsa', 15, 5, 2, '2021-11-10 03:23:10', '', '-'),
(5, 'Apa output untuk \'python\' [-3]?', '{\"a\":\"o\",\"b\":\"t\",\"c\":\"h\"}', '', 2, 'python', 20, 5, 2, '2021-11-10 03:43:35', '', ''),
(6, 'Beri nama modul python yang mendukung ekspresi reguler!', '{\"a\":\"ekspresi reguler\",\"b\":\"ulang\",\"c\":\"pyregex\"}', '', 1, 'python', 20, 5, 2, '2021-11-10 03:44:17', '', ''),
(7, 'Bagaimana kita bisa menghasilkan angka acak dengan python menggunakan metode?', '{\"a\":\"acak.seragam ()\",\"b\" :\"acak.random()\",\"c\":\"Semua benar\"}', '', 2, 'python', 25, 5, 3, '2021-11-10 04:38:29', '', ''),
(11, 'Misalkan kita memiliki dua himpunan A & B, maka A<B adalah...', '{\"a\":\"Benar jika len(A) lebih kecil dari len(B)\",\"b\" :\"Benar jika A adalah himpunan bagian sejati dari B\",\"c\":\"Benar jika elemen di A jika dibandingkan lebih kecil dari elemen di B\"}', '', 1, 'python', 30, 5, 4, '2021-11-10 03:50:28', '', ''),
(13, 'Pilih fungsi yang benar di antara mereka yang dapat digunakan untuk menulis data yang akan dilakukan untuk keluaran biner?', '{\"a\":\"Tulis\",\"b\" :\"Output.binary\",\"c\":\"Buang\"}', '', 2, 'python', 20, 5, 2, '2021-11-10 03:57:51', '', ''),
(15, 'Manakah dari teknik pencarian berikut yang tidak memerlukan data dalam bentuk terurut?', '{\"a\":\"Pencarian Linier\",\"b\":\"Pencarian Biner\",\"c\":\"Pencarian Interpolasi\"}', '', 1, 'dsa', 10, 5, 1, '2021-11-10 04:00:09', '', '-'),
(16, 'Setelah setiap iterasi dalam bubble sort?', '{\"a\":\"satu perbandingan lebih sedikit dibuat pada iterasi berikutnya\",\"b\":\"setidaknya satu elemen berada pada posisi terurutnya\",\"c\":\"Kedua A & B benar\"}', '', 1, 'dsa', 25, 5, 4, '2021-11-10 04:00:09', '', '-'),
(17, 'Banyaknya pohon biner dengan 3 simpul yang bila dilintasi secara post order menghasilkan barisan A,B,C adalah?', '{\"a\":\"5\",\"b\":\"3\",\"c\":\"4\"}', '', 0, 'dsa', 30, 5, 5, '2021-11-10 04:00:09', '', '-'),
(18, 'Jika antrian diimplementasikan menggunakan array, apa kompleksitas runtime terburuk dari operasi antrian dan dequeue?', '{\"a\":\"(n), (1)\",\"b\":\"(n), (n)\",\"c\":\"(1), (1)\"}', '', 2, 'dsa', 30, 5, 5, '2021-11-10 04:00:09', '', '-'),
(19, 'Semua pohon merentang yang mungkin dari graf G?', '{\"a\":\"tergantung pada algoritma yang digunakan\",\"b\":\"memiliki jumlah rusuk dan simpul yang sama\",\"c\":\"memiliki jumlah simpul yang sama tetapi tidak memiliki tepi\"}', '', 1, 'dsa', 20, 5, 3, '2021-11-10 04:00:09', '', '-'),
(20, 'Jika kita memilih Algoritma Prim untuk pohon rentang berbobot unik daripada Algoritma Kruskal, maka?', '{\"a\":\"kita akan mendapatkan pohon merentang yang sama\",\"b\":\"spanning akan memiliki tepi yang lebih sedikit\",\"c\":\"kita akan mendapatkan pohon rentang yang berbeda\"}', '', 0, 'dsa', 15, 5, 2, '2021-11-10 04:00:09', '', '-'),
(21, 'Kompleksitas kasus terburuk dari pencarian biner cocok dengan?', '{\"a\":\"pencarian interpolasi\",\"b\":\"pencarian linier\",\"c\":\"menggabungkan semacam\"}', '', 1, 'dsa', 10, 5, 1, '2021-11-10 04:00:09', '', '-'),
(22, 'Dengan Python kita dapat membuat menu popup. Pilih kode untuk menampilkan menu popup?', '{\"a\":\"Menu.posting (250.250)\",\"b\" :\"Menu.post()\",\"c\":\"Menu.display_popup(250.250)\"}', '', 0, 'python', 25, 5, 5, '2021-11-10 04:10:17', '', ''),
(24, 'Operator mana yang memiliki prioritas lebih tinggi dalam daftar berikut...', '{\"a\":\"% Modulus\",\"b\" :\"**, Eksponen\",\"c\":\"& BitWise DAN\"}', '', 1, 'python', 30, 5, 5, '2021-11-10 20:53:27', '', ''),
(26, 'Apa yang akan menjadi output dari kode berikut: jenis cetak(tipe(int)) ...\r\n', '{\"a\":\"ketik \'int\'\",\"b\" :\"ketik \'tipe\'\",\"c\":\"0\"}', '', 1, 'python', 20, 5, 4, '2021-11-10 04:25:44', '', ''),
(27, 'Apa output dari segmen berikut: chr(ord(\'A\')) ...\r\n', '{\"a\":\"A\",\"b\" :\"B\",\"c\":\"a\"}', '', 0, 'python', 20, 5, 4, '2021-11-10 04:25:44', '', ''),
(30, 'Apa yang dipanggil ketika suatu fungsi didefinisikan di dalam kelas?', '{\"a\":\"Modul\",\"b\" :\"Kelas\",\"c\":\"Metode\"}', '', 2, 'python', 20, 5, 3, '2021-11-10 04:34:10', '', ''),
(32, 'Berapa banyak jenis kunci dalam Desain Basis Data?', '{\"a\":\"Kunci kandidat\",\"b\":\"Kunci utama\",\"c\":\"Semua ini\"}', '', 2, 'basis data', 20, 5, 2, '2021-11-10 04:38:44', '', '-'),
(33, 'Dalam SQL, perintah mana yang digunakan untuk menambahkan batasan kolom/integritas ke tabel?', '{\"a\":\"ALTER TABLE\",\"b\":\"TAMBAHKAN KOLOM\",\"c\":\"MASUKKAN KOLOM\"}', '', 0, 'basis data', 25, 5, 3, '2021-11-10 04:37:56', '', '-'),
(35, 'Ada 2 jenis database yaitu :', '{\"a\":\"SQL dan DDL\",\"b\":\"SQL dan Tanpa-SQL\",\"c\":\"Postrgres dan MongoDB\"}', '', 1, 'basis data', 25, 5, 3, '2021-11-10 04:51:13', '', '-'),
(36, 'Perintah mana yang digunakan untuk menghapus tabel dari database di SQL?', '{\"a\":\"Hapus Tabel\",\"b\":\"Lepaskan Tabel\",\"c\":\"Tabel Jatuh\"}', '', 2, 'basis data', 25, 5, 3, '2021-11-10 04:51:13', '', '-'),
(37, 'Dalam SQL, perintah mana yang digunakan untuk mengubah data dalam tabel?', '{\"a\":\"Pembaruan\",\"b\":\"Masukkan\",\"c\":\"Telusuri\"}', '', 0, 'basis data', 20, 5, 2, '2021-11-10 04:51:13', '', '-'),
(38, 'Manakah dari berikut ini yang bukan merupakan karakteristik dari model database relasional?', '{\"a\":\"Tabel\",\"b\":\"Struktur seperti pohon\",\"c\":\"Catatan\"}', '', 1, 'basis data', 25, 5, 3, '2021-11-10 04:51:13', '', '-'),
(39, 'Sistem Manajemen Basis Data (DBMS) adalah', '{\"a\":\"Pengumpulan data yang saling terkait\",\"b\":\"Pengumpulan data yang menggambarkan satu perusahaan tertentu\",\"c\":\"Kumpulan program untuk mengakses data\"}', '', 0, 'basis data', 30, 5, 4, '2021-11-10 04:51:13', '', '-'),
(40, 'Ada dua jenis deklarasi variabel di kotlin yaitu...', '{\"a\":\"Val dan var\",\"b\":\"Vas dan val\",\"c\":\"This dan var\"}', '', 0, 'kotlin', 10, 5, 1, '2021-11-10 04:54:24', '', '-'),
(41, 'Deklarasi Variabel yang bersifat umum dan dapat diberikan berkali-kali disebut...', '{\"a\":\"Var\",\"b\":\"Val\",\"c\":\"Init\"}', '', 0, 'kotlin', 10, 5, 1, '2021-11-10 04:54:24', '', '-'),
(42, 'Sebuah deklarasi Variabel yang konstan, tidak dapat diberikan beberapa kali dan dapat diinisialisasi hanya satu kali dikenal sebagai...', '{\"a\":\"Val\",\"b\":\"Void\",\"c\":\"This\"}', '', 0, 'kotlin', 15, 5, 2, '2021-11-10 04:54:24', '', '-'),
(43, 'Manakah dari berikut ini yang benar untuk mendeklarasikan metode atau fungsi di kotlin...', '{\"a\":\"Void\",\"b\":\"Fun\",\"c\":\"Static\"}', '', 1, 'kotlin', 15, 5, 2, '2021-11-10 04:54:24', '', '-'),
(44, 'Manakah dari berikut ini yang merupakan keunggulan kotlin dibandingkan java...', '{\"a\":\"Kotlin itu sederhana\",\"b\":\"Kotlin mendukung pemrograman berorientasi objek dan pemrograman fungsional\",\"c\":\"Kotlin adalah pemrograman berorientasi objek\"}', '', 1, 'kotlin', 20, 5, 3, '2021-11-10 04:54:24', '', '-'),
(45, 'Manakah dari pernyataan berikut yang salah...', '{\"a\":\"Kotlin tidak menawarkan konversi implisit, dan Java mendukung konversi implisit\",\"b\":\"Kotlin mendukung anggota statis\",\"c\":\"Kotlin memungkinkan pengguna untuk membuat fungsi ekstensi sementara Java tidak menawarkan fungsi ekstensi apa pun\"}', '', 1, 'kotlin', 20, 5, 3, '2021-11-10 04:54:24', '', '-'),
(46, 'Fitur baru kotlin yang memungkinkan kita untuk menulis kode asinkron secara berurutan disebut...', '{\"a\":\"Retrofit\",\"b\":\"API\",\"c\":\"Coroutines\"}', '', 2, 'kotlin', 25, 5, 4, '2021-11-10 04:54:24', '', '-'),
(47, 'Fitur yang dapat menggantikan findViewById() disebut...', '{\"a\":\"Singleton\",\"b\":\"Retrofit\",\"c\":\"viewBinding\"}', '', 2, 'kotlin', 25, 5, 4, '2021-11-10 04:54:24', '', '-'),
(48, 'Manakah dari berikut ini yang merupakan batasan viewBinding dibandingkan dengan Data Binding...', '{\"a\":\"View Binding tidak mendukung pengikatan data satu arah\",\"b\":\"View Binding cepat\",\"c\":\"View Binding tidak mendukung variabel tata letak\"}', '', 2, 'kotlin', 30, 5, 5, '2021-11-10 04:54:24', '', '-'),
(49, 'Apa ekspresi kondisional yang baru di kotlin di atas java...', '{\"a\":\"Switch\",\"b\":\"Else\",\"c\":\"When\"}', '', 2, 'kotlin', 30, 5, 5, '2021-11-10 04:54:24', '', '-'),
(59, 'Manakah dari berikut ini yang mewakili hubungan antara satu set nilai?', '{\"a\":\"Baris\",\"b\":\"Sebuah Meja\",\"c\":\"Sebuah Lapangan\"}', '', 0, 'basis data', 20, 5, 2, '2021-11-10 05:03:54', '', '-'),
(60, 'Manakah dari berikut ini yang benar mengenai fungsi Agregat?', '{\"a\":\"Dibutuhkan satu nilai dan mengembalikan daftar nilai sebagai hasilnya\",\"b\":\"Dibutuhkan nilai tunggal dan mengembalikan nilai tunggal sebagai hasilnya\",\"c\":\"Dibutuhkan daftar nilai dan mengembalikan nilai tunggal sebagai hasilnya\"}', '', 2, 'basis data', 30, 5, 5, '2021-11-10 05:03:54', '', '-'),
(61, 'Manakah dari opsi berikut yang digunakan untuk pengambilan data?', '{\"a\":\"Struktur Data\",\"b\":\"Pertanyaan\",\"c\":\"Daftar tertaut\"}', '', 1, 'basis data', 25, 5, 3, '2021-11-10 05:03:54', '', '-'),
(63, 'Apa itu Kecerdasan Buatan?', '{\"a\":\"Membuat Mesin menjadi cerdas\",\"b\":\"Menempatkan kecerdasan Anda ke dalam Komputer\",\"c\":\"Bermain Game\"}', '', 0, 'AI', 20, 5, 1, '2021-11-10 07:56:14', '', ''),
(64, 'Siapa bapak kecerdasan buatan?', '{\"a\":\"Fisher Ada\",\"b\":\"John McCarthy\",\"c\":\"Alan Turning\"}', '', 1, 'AI', 20, 5, 1, '2021-11-10 07:56:14', '', ''),
(65, ' Penalaran default adalah jenis lain dari -', '{\"a\":\"Penalaran yang tidak monoton\",\"b\":\"Penalaran bitonic\",\"c\":\"Penalaran monoton\"}', '', 0, 'AI', 25, 5, 2, '2021-11-10 08:14:16', '', ''),
(66, 'AI yang lemah adalah\r\n', '{\"a\":\"perwujudan kemampuan intelektual manusia di dalam komputer\",\"b\":\"seperangkat program komputer yang menghasilkan keluaran yang akan dianggap mencerminkan kecerdasan jika dihasilkan oleh manusia\",\"c\":\"studi fakultas mental melalui penggunaan model mental diimplementasikan pada komputer\"}', '', 2, 'AI', 20, 5, 3, '2021-12-31 04:00:45', '', ''),
(67, 'Manakah yang bukan bahasa pemrograman yang umum digunakan untuk AI?', '{\"a\":\"Perl\",\"b\":\"aksara jawa\",\"c\":\"PELAT\"}', '', 0, 'AI', 20, 5, 2, '2021-11-10 08:35:15', '', ''),
(68, 'Tahap proses manufaktur apa yang digambarkan sebagai \"pemetaan fungsi ke dalam bentuk\"?', '{\"a\":\"manajemen proyek\",\"b\":\"Desain\",\"c\":\"servis lapangan\"}', '', 1, 'AI', 25, 5, 3, '2021-11-10 08:35:15', '', ''),
(69, 'Heuristik adalah cara mencoba', '{\"a\":\"Untuk membandingkan dua node di pohon pencarian untuk melihat apakah yang satu lebih baik dari yang lain\",\"b\":\"Untuk menemukan sesuatu atau ide yang tertanam dalam suatu program\",\"c\":\"Semua Benar\"}', '', 2, 'AI', 20, 5, 4, '2021-11-10 08:39:53', '', ''),
(70, ' Manakah dari berikut ini yang bukan merupakan tahapan AI?', '{\"a\":\"Analisis kognitif\",\"b\":\"Analisis diagnostik\",\"c\":\"Analisis prediktif\"}', '', 0, 'AI', 20, 5, 3, '2021-11-10 08:39:53', '', ''),
(71, 'Apa tujuan utama AI?\r\n', '{\"a\":\"Buat Sistem Pakar\",\"b\":\"Menerapkan Kecerdasan Manusia dalam Mesin\",\"c\":\"Kedua Pilihan\"}', '', 2, 'AI', 20, 5, 2, '2021-11-10 08:43:58', '', ''),
(72, 'Manakah dari algoritma pencarian berikut yang membutuhkan lebih sedikit memori?', '{\"a\":\"Pencarian Optimal\",\"b\":\"Pencarian Luas-Pertama\",\"c\":\"Pencarian Pertama Kedalaman\"}', '', 2, 'AI', 20, 5, 2, '2021-11-10 08:58:21', '', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `subject`
--

CREATE TABLE `subject` (
  `sub_id` int(11) NOT NULL,
  `ns` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `lv` int(11) NOT NULL,
  `ds` text COLLATE utf8_unicode_ci NOT NULL DEFAULT '-',
  `d2s` text COLLATE utf8_unicode_ci NOT NULL DEFAULT '-',
  `plink` text COLLATE utf8_unicode_ci NOT NULL DEFAULT '-'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `subject`
--

INSERT INTO `subject` (`sub_id`, `ns`, `lv`, `ds`, `d2s`, `plink`) VALUES
(1, 'dsa', 0, '-', '-', 'https://everythingisviral.com/wp-content/uploads/2020/10/polite-cat.png'),
(2, 'dsa', 1, '-', '-', 'https://everythingisviral.com/wp-content/uploads/2020/10/polite-cat.png'),
(3, 'dsa', 2, '-', '-', 'https://everythingisviral.com/wp-content/uploads/2020/10/polite-cat.png'),
(4, 'dsa', 3, '-', '-', 'https://everythingisviral.com/wp-content/uploads/2020/10/polite-cat.png'),
(5, 'dsa', 4, '-', '-', 'https://everythingisviral.com/wp-content/uploads/2020/10/polite-cat.png'),
(6, 'dsa', 5, '-', '-', 'https://everythingisviral.com/wp-content/uploads/2020/10/polite-cat.png'),
(7, 'dsa', 6, '-', '-', 'https://everythingisviral.com/wp-content/uploads/2020/10/polite-cat.png'),
(8, 'dsa', 7, '-', '-', 'https://everythingisviral.com/wp-content/uploads/2020/10/polite-cat.png'),
(9, 'dsa', 8, '-', '-', 'https://everythingisviral.com/wp-content/uploads/2020/10/polite-cat.png'),
(10, 'dsa', 9, '-', '-', 'https://everythingisviral.com/wp-content/uploads/2020/10/polite-cat.png'),
(11, 'dsa', 10, '-', '-', 'https://everythingisviral.com/wp-content/uploads/2020/10/polite-cat.png'),
(12, 'python', 0, '-', '-', 'https://everythingisviral.com/wp-content/uploads/2020/10/polite-cat.png'),
(13, 'python', 1, '-', '-', 'https://everythingisviral.com/wp-content/uploads/2020/10/polite-cat.png'),
(14, 'python', 2, '-', '-', 'https://everythingisviral.com/wp-content/uploads/2020/10/polite-cat.png'),
(15, 'python', 3, '-', '-', 'https://everythingisviral.com/wp-content/uploads/2020/10/polite-cat.png'),
(16, 'python', 4, '-', '-', 'https://everythingisviral.com/wp-content/uploads/2020/10/polite-cat.png'),
(17, 'python', 5, '-', '-', 'https://everythingisviral.com/wp-content/uploads/2020/10/polite-cat.png'),
(18, 'python', 6, '-', '-', 'https://everythingisviral.com/wp-content/uploads/2020/10/polite-cat.png'),
(19, 'python', 7, '-', '-', 'https://everythingisviral.com/wp-content/uploads/2020/10/polite-cat.png'),
(20, 'python', 8, '-', '-', 'https://everythingisviral.com/wp-content/uploads/2020/10/polite-cat.png'),
(21, 'python', 9, '-', '-', 'https://everythingisviral.com/wp-content/uploads/2020/10/polite-cat.png'),
(22, 'python', 10, '-', '-', 'https://everythingisviral.com/wp-content/uploads/2020/10/polite-cat.png'),
(23, 'basis data', 0, '-', '-', 'https://everythingisviral.com/wp-content/uploads/2020/10/polite-cat.png'),
(24, 'basis data', 1, '-', '-', 'https://everythingisviral.com/wp-content/uploads/2020/10/polite-cat.png'),
(25, 'basis data', 2, '-', '-', 'https://everythingisviral.com/wp-content/uploads/2020/10/polite-cat.png'),
(26, 'basis data', 3, '-', '-', 'https://everythingisviral.com/wp-content/uploads/2020/10/polite-cat.png'),
(27, 'basis data', 4, '-', '-', 'https://everythingisviral.com/wp-content/uploads/2020/10/polite-cat.png'),
(28, 'basis data', 5, '-', '-', 'https://everythingisviral.com/wp-content/uploads/2020/10/polite-cat.png'),
(29, 'basis data', 6, '-', '-', 'https://everythingisviral.com/wp-content/uploads/2020/10/polite-cat.png'),
(30, 'basis data', 7, '-', '-', 'https://everythingisviral.com/wp-content/uploads/2020/10/polite-cat.png'),
(31, 'basis data', 8, '-', '-', 'https://everythingisviral.com/wp-content/uploads/2020/10/polite-cat.png'),
(32, 'basis data', 9, '-', '-', 'https://everythingisviral.com/wp-content/uploads/2020/10/polite-cat.png'),
(33, 'basis data', 10, '-', '-', 'https://everythingisviral.com/wp-content/uploads/2020/10/polite-cat.png'),
(34, 'kotlin', 0, '-', '-', 'https://everythingisviral.com/wp-content/uploads/2020/10/polite-cat.png'),
(35, 'kotlin', 1, '-', '-', 'https://everythingisviral.com/wp-content/uploads/2020/10/polite-cat.png'),
(36, 'kotlin', 2, '-', '-', 'https://everythingisviral.com/wp-content/uploads/2020/10/polite-cat.png'),
(37, 'kotlin', 3, '-', '-', 'https://everythingisviral.com/wp-content/uploads/2020/10/polite-cat.png'),
(38, 'kotlin', 4, '-', '-', 'https://everythingisviral.com/wp-content/uploads/2020/10/polite-cat.png'),
(39, 'kotlin', 5, '-', '-', 'https://everythingisviral.com/wp-content/uploads/2020/10/polite-cat.png'),
(40, 'kotlin', 6, '-', '-', 'https://everythingisviral.com/wp-content/uploads/2020/10/polite-cat.png'),
(41, 'kotlin', 7, '-', '-', 'https://everythingisviral.com/wp-content/uploads/2020/10/polite-cat.png'),
(42, 'kotlin', 8, '-', '-', 'https://everythingisviral.com/wp-content/uploads/2020/10/polite-cat.png'),
(43, 'kotlin', 9, '-', '-', 'https://everythingisviral.com/wp-content/uploads/2020/10/polite-cat.png'),
(44, 'kotlin', 10, '-', '-', 'https://everythingisviral.com/wp-content/uploads/2020/10/polite-cat.png'),
(45, 'AI', 0, '-', '-', 'https://everythingisviral.com/wp-content/uploads/2020/10/polite-cat.png'),
(46, 'AI', 1, '-', '-', 'https://everythingisviral.com/wp-content/uploads/2020/10/polite-cat.png'),
(47, 'AI', 2, '-', '-', 'https://everythingisviral.com/wp-content/uploads/2020/10/polite-cat.png'),
(48, 'AI', 3, '-', '-', 'https://everythingisviral.com/wp-content/uploads/2020/10/polite-cat.png'),
(49, 'AI', 4, '-', '-', 'https://everythingisviral.com/wp-content/uploads/2020/10/polite-cat.png'),
(50, 'AI', 5, '-', '-', 'https://everythingisviral.com/wp-content/uploads/2020/10/polite-cat.png'),
(51, 'AI', 6, '-', '-', 'https://everythingisviral.com/wp-content/uploads/2020/10/polite-cat.png'),
(52, 'AI', 7, '-', '-', 'https://everythingisviral.com/wp-content/uploads/2020/10/polite-cat.png'),
(53, 'AI', 8, '-', '-', 'https://everythingisviral.com/wp-content/uploads/2020/10/polite-cat.png'),
(54, 'AI', 9, '-', '-', 'https://everythingisviral.com/wp-content/uploads/2020/10/polite-cat.png'),
(55, 'AI', 10, '-', '-', 'https://everythingisviral.com/wp-content/uploads/2020/10/polite-cat.png');

-- --------------------------------------------------------

--
-- Struktur dari tabel `subjek`
--

CREATE TABLE `subjek` (
  `sub_id` int(11) NOT NULL,
  `ns` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `lv` int(11) NOT NULL,
  `ds` text COLLATE utf8_unicode_ci NOT NULL DEFAULT '-',
  `d2s` text COLLATE utf8_unicode_ci NOT NULL DEFAULT '-',
  `plink` text COLLATE utf8_unicode_ci NOT NULL DEFAULT '-'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `subjek`
--

INSERT INTO `subjek` (`sub_id`, `ns`, `lv`, `ds`, `d2s`, `plink`) VALUES
(1, 'dsa', 0, '-', '-', 'https://everythingisviral.com/wp-content/uploads/2020/10/polite-cat.png'),
(2, 'dsa', 1, '-', '-', 'https://everythingisviral.com/wp-content/uploads/2020/10/polite-cat.png'),
(3, 'dsa', 2, '-', '-', 'https://everythingisviral.com/wp-content/uploads/2020/10/polite-cat.png'),
(4, 'dsa', 3, '-', '-', 'https://everythingisviral.com/wp-content/uploads/2020/10/polite-cat.png'),
(5, 'dsa', 4, '-', '-', 'https://everythingisviral.com/wp-content/uploads/2020/10/polite-cat.png'),
(6, 'dsa', 5, '-', '-', 'https://everythingisviral.com/wp-content/uploads/2020/10/polite-cat.png'),
(7, 'dsa', 6, '-', '-', 'https://everythingisviral.com/wp-content/uploads/2020/10/polite-cat.png'),
(8, 'dsa', 7, '-', '-', 'https://everythingisviral.com/wp-content/uploads/2020/10/polite-cat.png'),
(9, 'dsa', 8, '-', '-', 'https://everythingisviral.com/wp-content/uploads/2020/10/polite-cat.png'),
(10, 'dsa', 9, '-', '-', 'https://everythingisviral.com/wp-content/uploads/2020/10/polite-cat.png'),
(11, 'dsa', 10, '-', '-', 'https://everythingisviral.com/wp-content/uploads/2020/10/polite-cat.png'),
(12, 'python', 0, '-', '-', 'https://everythingisviral.com/wp-content/uploads/2020/10/polite-cat.png'),
(13, 'python', 1, '-', '-', 'https://everythingisviral.com/wp-content/uploads/2020/10/polite-cat.png'),
(14, 'python', 2, '-', '-', 'https://everythingisviral.com/wp-content/uploads/2020/10/polite-cat.png'),
(15, 'python', 3, '-', '-', 'https://everythingisviral.com/wp-content/uploads/2020/10/polite-cat.png'),
(16, 'python', 4, '-', '-', 'https://everythingisviral.com/wp-content/uploads/2020/10/polite-cat.png'),
(17, 'python', 5, '-', '-', 'https://everythingisviral.com/wp-content/uploads/2020/10/polite-cat.png'),
(18, 'python', 6, '-', '-', 'https://everythingisviral.com/wp-content/uploads/2020/10/polite-cat.png'),
(19, 'python', 7, '-', '-', 'https://everythingisviral.com/wp-content/uploads/2020/10/polite-cat.png'),
(20, 'python', 8, '-', '-', 'https://everythingisviral.com/wp-content/uploads/2020/10/polite-cat.png'),
(21, 'python', 9, '-', '-', 'https://everythingisviral.com/wp-content/uploads/2020/10/polite-cat.png'),
(22, 'python', 10, '-', '-', 'https://everythingisviral.com/wp-content/uploads/2020/10/polite-cat.png'),
(23, 'basis data', 0, '-', '-', 'https://everythingisviral.com/wp-content/uploads/2020/10/polite-cat.png'),
(24, 'basis data', 1, '-', '-', 'https://everythingisviral.com/wp-content/uploads/2020/10/polite-cat.png'),
(25, 'basis data', 2, '-', '-', 'https://everythingisviral.com/wp-content/uploads/2020/10/polite-cat.png'),
(26, 'basis data', 3, '-', '-', 'https://everythingisviral.com/wp-content/uploads/2020/10/polite-cat.png'),
(27, 'basis data', 4, '-', '-', 'https://everythingisviral.com/wp-content/uploads/2020/10/polite-cat.png'),
(28, 'basis data', 5, '-', '-', 'https://everythingisviral.com/wp-content/uploads/2020/10/polite-cat.png'),
(29, 'basis data', 6, '-', '-', 'https://everythingisviral.com/wp-content/uploads/2020/10/polite-cat.png'),
(30, 'basis data', 7, '-', '-', 'https://everythingisviral.com/wp-content/uploads/2020/10/polite-cat.png'),
(31, 'basis data', 8, '-', '-', 'https://everythingisviral.com/wp-content/uploads/2020/10/polite-cat.png'),
(32, 'basis data', 9, '-', '-', 'https://everythingisviral.com/wp-content/uploads/2020/10/polite-cat.png'),
(33, 'basis data', 10, '-', '-', 'https://everythingisviral.com/wp-content/uploads/2020/10/polite-cat.png'),
(34, 'kotlin', 0, '-', '-', 'https://everythingisviral.com/wp-content/uploads/2020/10/polite-cat.png'),
(35, 'kotlin', 1, '-', '-', 'https://everythingisviral.com/wp-content/uploads/2020/10/polite-cat.png'),
(36, 'kotlin', 2, '-', '-', 'https://everythingisviral.com/wp-content/uploads/2020/10/polite-cat.png'),
(37, 'kotlin', 3, '-', '-', 'https://everythingisviral.com/wp-content/uploads/2020/10/polite-cat.png'),
(38, 'kotlin', 4, '-', '-', 'https://everythingisviral.com/wp-content/uploads/2020/10/polite-cat.png'),
(39, 'kotlin', 5, '-', '-', 'https://everythingisviral.com/wp-content/uploads/2020/10/polite-cat.png'),
(40, 'kotlin', 6, '-', '-', 'https://everythingisviral.com/wp-content/uploads/2020/10/polite-cat.png'),
(41, 'kotlin', 7, '-', '-', 'https://everythingisviral.com/wp-content/uploads/2020/10/polite-cat.png'),
(42, 'kotlin', 8, '-', '-', 'https://everythingisviral.com/wp-content/uploads/2020/10/polite-cat.png'),
(43, 'kotlin', 9, '-', '-', 'https://everythingisviral.com/wp-content/uploads/2020/10/polite-cat.png'),
(44, 'kotlin', 10, '-', '-', 'https://everythingisviral.com/wp-content/uploads/2020/10/polite-cat.png'),
(45, 'AI', 0, '-', '-', 'https://everythingisviral.com/wp-content/uploads/2020/10/polite-cat.png'),
(46, 'AI', 1, '-', '-', 'https://everythingisviral.com/wp-content/uploads/2020/10/polite-cat.png'),
(47, 'AI', 2, '-', '-', 'https://everythingisviral.com/wp-content/uploads/2020/10/polite-cat.png'),
(48, 'AI', 3, '-', '-', 'https://everythingisviral.com/wp-content/uploads/2020/10/polite-cat.png'),
(49, 'AI', 4, '-', '-', 'https://everythingisviral.com/wp-content/uploads/2020/10/polite-cat.png'),
(50, 'AI', 5, '-', '-', 'https://everythingisviral.com/wp-content/uploads/2020/10/polite-cat.png'),
(51, 'AI', 6, '-', '-', 'https://everythingisviral.com/wp-content/uploads/2020/10/polite-cat.png'),
(52, 'AI', 7, '-', '-', 'https://everythingisviral.com/wp-content/uploads/2020/10/polite-cat.png'),
(53, 'AI', 8, '-', '-', 'https://everythingisviral.com/wp-content/uploads/2020/10/polite-cat.png'),
(54, 'AI', 9, '-', '-', 'https://everythingisviral.com/wp-content/uploads/2020/10/polite-cat.png'),
(55, 'AI', 10, '-', '-', 'https://everythingisviral.com/wp-content/uploads/2020/10/polite-cat.png');

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksi`
--

CREATE TABLE `transaksi` (
  `tid` int(11) NOT NULL,
  `uid_user` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `sid_soal` int(11) NOT NULL,
  `js` int(11) NOT NULL,
  `ml` text COLLATE utf8_unicode_ci NOT NULL DEFAULT 'a',
  `audio` text COLLATE utf8_unicode_ci NOT NULL DEFAULT '-',
  `wj` int(11) NOT NULL,
  `ts` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `st` enum('0','process','resolved','') COLLATE utf8_unicode_ci NOT NULL,
  `ket` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '-'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `transaksi`
--

INSERT INTO `transaksi` (`tid`, `uid_user`, `sid_soal`, `js`, `ml`, `audio`, `wj`, `ts`, `st`, `ket`) VALUES
(1, '1', 15, 0, 'a', '-', 6, '2021-11-23 09:35:57', '0', '-'),
(2, '1', 21, 1, 'a', '-', 2, '2021-11-23 09:35:57', 'resolved', '-'),
(3, '1', 4, 1, 'a', '-', 3, '2021-11-23 09:41:11', '0', '-'),
(4, '1', 20, 1, 'a', '-', 2, '2021-11-23 09:41:11', '0', '-'),
(5, '1', 19, 1, 'a', '-', 4, '2021-11-23 09:41:46', 'resolved', '-'),
(6, '1', 3, 0, 'a', '-', 2, '2021-11-23 09:41:46', 'resolved', '-'),
(7, '1', 2, 2, 'a', '-', 3, '2021-11-23 09:42:48', 'resolved', '-'),
(8, '1', 16, 1, 'a', '-', 3, '2021-11-23 09:42:48', 'resolved', '-'),
(9, '1', 18, 2, 'a', '-', 3, '2021-11-23 09:43:37', 'resolved', '-'),
(10, '1', 17, 0, 'a', '-', 2, '2021-11-23 09:43:37', 'resolved', '-'),
(11, '1', 41, 0, 'a', '-', 6, '2021-11-23 09:48:01', 'resolved', '-'),
(12, '1', 40, 2, 'a', '-', 5, '2021-11-23 09:48:01', '0', '-'),
(13, '1', 63, 1, 'a', '-', 5, '2021-11-23 09:49:26', '0', '-'),
(14, '1', 64, 2, 'a', '-', 4, '2021-11-23 09:49:26', '0', '-'),
(15, '1', 43, 2, 'a', '-', 6, '2021-11-23 09:50:33', '0', '-'),
(16, '1', 42, 2, 'a', '-', 6, '2021-11-23 09:50:33', '0', '-'),
(17, '1', 37, 0, 'a', '-', 9, '2021-11-23 10:05:14', 'resolved', '-'),
(18, '1', 32, 2, 'a', '-', 7, '2021-11-23 10:05:14', 'resolved', '-'),
(19, '1', 59, 0, 'a', '-', 5, '2021-11-23 10:05:14', 'resolved', '-'),
(20, '1', 15, 0, 'a', '-', 10, '2021-11-26 16:15:37', 'process', '-'),
(21, '1', 21, 0, 'a', '-', 9, '2021-11-26 16:15:37', '0', '-'),
(22, '1', 21, 0, 'a', '-', 10, '2021-11-26 16:16:24', 'process', '-'),
(23, '1', 15, 1, 'a', '-', 10, '2021-11-26 16:16:24', 'process', '-'),
(24, '1', 21, 2, 'a', '-', 8, '2021-11-26 16:17:32', '0', '-'),
(25, '1', 15, 1, 'a', '-', 10, '2021-11-26 16:17:32', 'process', '-'),
(26, '1', 15, 0, 'a', '-', 7, '2021-11-26 16:28:45', '0', '-'),
(27, '1', 21, 2, 'a', '-', 10, '2021-11-26 16:28:45', 'process', '-'),
(28, '1', 21, 0, 'a', '-', 3, '2021-11-26 16:31:27', '0', '-'),
(29, '1', 15, 2, 'a', '-', 10, '2021-11-26 16:31:27', 'process', '-'),
(30, '1', 21, 1, 'a', '-', 0, '2021-11-26 16:40:10', 'resolved', '-'),
(31, '1', 15, 0, 'a', '-', 7, '2021-11-26 16:40:10', '0', '-'),
(32, '1', 21, 0, 'a', '-', 0, '2021-11-26 16:40:37', '0', '-'),
(33, '1', 15, 0, 'a', '-', 8, '2021-11-26 16:40:37', '0', '-'),
(34, '1', 21, 2, 'a', '-', 10, '2021-11-26 16:56:52', 'process', '-'),
(35, '1', 15, 2, 'a', '-', 10, '2021-11-26 16:56:52', 'process', '-'),
(36, '1', 15, 1, 'a', '-', 10, '2021-11-26 16:59:46', 'process', '-'),
(37, '1', 21, 1, 'a', '-', 10, '2021-11-26 16:59:46', 'process', '-'),
(38, '1', 21, 2, 'a', '-', 7, '2021-11-26 17:01:22', '0', '-'),
(39, '1', 15, 0, 'a', '-', 4, '2021-11-26 17:01:22', '0', '-'),
(40, '1', 15, 0, 'a', '-', 10, '2021-11-26 17:04:11', 'process', '-'),
(41, '1', 21, 0, 'a', '-', 10, '2021-11-26 17:04:11', 'process', '-'),
(42, '1', 15, 0, 'a', '-', 10, '2021-11-26 17:08:48', 'process', '-'),
(43, '1', 21, 1, 'a', '-', 5, '2021-11-26 17:08:48', 'resolved', '-'),
(44, '1', 21, 2, 'a', '-', 10, '2021-11-26 17:14:52', 'process', '-'),
(45, '1', 15, 0, 'a', '-', 10, '2021-11-26 17:14:52', 'process', '-'),
(46, '1', 15, 0, 'a', '-', 2, '2021-11-26 17:16:08', '0', '-'),
(47, '1', 21, 0, 'a', '-', 5, '2021-11-26 17:16:08', '0', '-'),
(48, '1', 15, 1, 'a', '-', 7, '2021-11-27 07:24:02', 'resolved', '-'),
(49, '1', 21, 2, 'a', '-', 6, '2021-11-27 07:24:03', '0', '-'),
(50, '1', 15, 1, 'a', '-', 10, '2021-11-27 07:33:54', 'process', '-'),
(51, '1', 21, 1, 'a', '-', 7, '2021-11-27 07:33:54', 'resolved', '-'),
(52, '1', 21, 2, 'a', '-', 10, '2021-11-27 07:35:39', 'process', '-'),
(53, '1', 15, 1, 'a', '-', 10, '2021-11-27 07:35:39', 'process', '-'),
(54, '1', 15, 1, 'a', '-', 10, '2021-11-29 08:33:04', 'process', '-'),
(55, '1', 21, 0, 'a', '-', 10, '2021-11-29 08:33:04', 'process', '-'),
(56, '1', 21, 0, 'a', '-', 10, '2021-11-29 08:35:49', 'process', '-'),
(57, '1', 15, 2, 'a', '-', 10, '2021-11-29 08:35:49', 'process', '-'),
(58, '113885397021688950713', 21, 0, 'a', '-', 4, '2021-12-05 15:54:24', '0', '-'),
(59, '113885397021688950713', 15, 1, 'a', '-', 2, '2021-12-05 15:54:24', 'resolved', '-'),
(60, '113885397021688950713', 21, 0, 'a', '-', 1, '2021-12-05 16:05:49', '0', '-'),
(61, '113885397021688950713', 15, 1, 'a', '-', 1, '2021-12-05 16:05:49', 'resolved', '-'),
(62, '113885397021688950713', 4, 2, 'a', '-', 3, '2021-12-05 16:10:05', 'resolved', '-'),
(63, '113885397021688950713', 20, 0, 'a', '-', 2, '2021-12-05 16:10:05', 'resolved', '-'),
(64, '112446997328381071924', 15, 1, 'a', '-', 10, '2021-12-06 08:28:08', 'process', '-'),
(65, '112446997328381071924', 21, 0, 'a', '-', 7, '2021-12-06 08:28:08', '0', '-'),
(66, '112446997328381071924', 21, 0, 'a', '-', 4, '2021-12-06 18:34:05', '0', '-'),
(67, '112446997328381071924', 15, 0, 'a', '-', 3, '2021-12-06 18:34:05', '0', '-'),
(68, '112446997328381071924', 15, 0, 'a', '-', 4, '2021-12-06 18:38:04', '0', '-'),
(69, '112446997328381071924', 21, 2, 'a', '-', 1, '2021-12-06 18:38:04', '0', '-'),
(70, '112446997328381071924', 21, 0, 'a', '-', 7, '2021-12-06 18:38:44', '0', '-'),
(71, '112446997328381071924', 15, 0, 'a', '-', 1, '2021-12-06 18:38:44', '0', '-'),
(72, '112446997328381071924', 21, 0, 'a', '-', 10, '2021-12-06 18:39:27', 'process', '-'),
(73, '112446997328381071924', 15, 2, 'a', '-', 2, '2021-12-06 18:39:27', '0', '-'),
(74, '112446997328381071924', 21, 1, 'a', '-', 7, '2021-12-06 18:40:41', 'resolved', '-'),
(75, '112446997328381071924', 15, 2, 'a', '-', 4, '2021-12-06 18:40:41', '0', '-'),
(76, '112446997328381071924', 4, 0, 'a', '-', 7, '2021-12-06 18:43:00', '0', '-'),
(77, '112446997328381071924', 20, 0, 'a', '-', 9, '2021-12-06 18:43:00', 'resolved', '-'),
(78, '112446997328381071924', 19, 1, 'a', '-', 20, '2021-12-12 07:56:05', 'process', '-'),
(79, '112446997328381071924', 3, 0, 'a', '-', 18, '2021-12-12 07:56:05', 'resolved', '-'),
(80, '112446997328381071924', 16, 1, 'a', '-', 25, '2021-12-12 08:07:27', 'process', '-'),
(81, '112446997328381071924', 2, 1, 'a', '-', 25, '2021-12-12 08:07:27', 'process', '-'),
(82, '112446997328381071924', 17, 1, 'a', '-', 30, '2021-12-12 08:24:03', 'process', '-'),
(83, '112446997328381071924', 18, 0, 'a', '-', 30, '2021-12-12 08:24:03', 'process', '-'),
(84, '112446997328381071924', 6, 0, 'a', '-', 4, '2021-12-12 08:41:05', '0', '-'),
(85, '112446997328381071924', 13, 1, 'a', '-', 10, '2021-12-12 08:41:05', '0', '-'),
(86, '112446997328381071924', 5, 1, 'a', '-', 5, '2021-12-12 08:41:05', '0', '-'),
(87, '112446997328381071924', 7, 2, 'a', '-', 25, '2021-12-12 08:45:20', 'process', '-'),
(88, '112446997328381071924', 30, 0, 'a', '-', 6, '2021-12-12 08:45:20', '0', '-'),
(89, '112446997328381071924', 37, 0, 'a', '-', 4, '2021-12-12 08:48:49', 'resolved', '-'),
(90, '112446997328381071924', 32, 2, 'a', '-', 7, '2021-12-12 08:48:49', 'resolved', '-'),
(91, '112446997328381071924', 59, 0, 'a', '-', 7, '2021-12-12 08:48:49', 'resolved', '-'),
(92, '112446997328381071924', 36, 2, 'a', '-', 5, '2021-12-12 08:56:21', 'resolved', '-'),
(93, '112446997328381071924', 35, 0, 'a', '-', 9, '2021-12-12 08:56:21', '0', '-'),
(94, '112446997328381071924', 38, 2, 'a', '-', 5, '2021-12-12 08:56:21', '0', '-'),
(95, '112446997328381071924', 33, 2, 'a', '-', 9, '2021-12-12 08:56:21', '0', '-'),
(96, '112446997328381071924', 61, 2, 'a', '-', 7, '2021-12-12 08:56:21', '0', '-'),
(97, '112446997328381071924', 39, 2, 'a', '-', 7, '2021-12-12 16:27:37', '0', '-'),
(98, '112446997328381071924', 60, 2, 'a', '-', 30, '2021-12-12 16:42:58', 'process', '-'),
(99, '112446997328381071924', 64, 0, 'a', '-', 20, '2021-12-12 16:44:32', 'process', '-'),
(100, '112446997328381071924', 63, 2, 'a', '-', 20, '2021-12-12 16:44:32', 'process', '-'),
(101, '112446997328381071924', 67, 1, 'a', '-', 5, '2021-12-12 16:47:04', '0', '-'),
(102, '112446997328381071924', 71, 2, 'a', '-', 9, '2021-12-12 16:47:04', 'resolved', '-'),
(103, '112446997328381071924', 65, 1, 'a', '-', 8, '2021-12-12 16:47:04', '0', '-'),
(104, '112446997328381071924', 72, 0, 'a', '-', 6, '2021-12-12 16:47:04', '0', '-'),
(105, '112446997328381071924', 40, 0, 'a', '-', 6, '2021-12-12 16:54:10', 'resolved', '-'),
(106, '112446997328381071924', 41, 2, 'a', '-', 5, '2021-12-12 16:54:10', '0', '-'),
(107, '112446997328381071924', 43, 2, 'a', '-', 4, '2021-12-12 16:56:45', '0', '-'),
(108, '112446997328381071924', 42, 2, 'a', '-', 11, '2021-12-12 16:56:45', '0', '-'),
(109, '112446997328381071924', 45, 2, 'a', '-', 5, '2021-12-12 18:50:55', '0', '-'),
(110, '112446997328381071924', 44, 0, 'a', '-', 12, '2021-12-12 18:50:55', '0', '-'),
(111, '112446997328381071924', 47, 1, 'a', '-', 10, '2021-12-12 18:53:17', '0', '-'),
(112, '112446997328381071924', 46, 1, 'a', '-', 12, '2021-12-12 18:53:17', '0', '-'),
(113, '113885397021688950713', 63, 1, 'a', '-', 10, '2021-12-13 06:57:48', '0', '-'),
(114, '113885397021688950713', 64, 1, 'a', '-', 9, '2021-12-13 06:57:48', 'resolved', '-'),
(115, '112446997328381071924', 48, 2, 'a', '-', 30, '2021-12-14 10:08:47', 'process', '-'),
(116, '112446997328381071924', 49, 0, 'a', '-', 30, '2021-12-14 10:08:47', 'process', '-'),
(117, '113885397021688950713', 19, 0, 'a', '-', 20, '2021-12-14 10:14:37', 'process', '-'),
(118, '113885397021688950713', 3, 1, 'a', '-', 20, '2021-12-14 10:14:37', 'process', '-'),
(119, '113885397021688950713', 41, 2, 'a', '-', 10, '2021-12-14 10:16:20', 'process', '-'),
(120, '113885397021688950713', 40, 1, 'a', '-', 10, '2021-12-14 10:16:20', 'process', '-'),
(121, '113885397021688950713', 42, 2, 'a', '-', 11, '2021-12-14 10:28:56', '0', '-'),
(122, '113885397021688950713', 43, 2, 'a', '-', 6, '2021-12-14 10:28:56', '0', '-'),
(123, '113885397021688950713', 5, 2, 'a', '-', 20, '2021-12-14 10:31:33', 'process', '-'),
(124, '113885397021688950713', 6, 0, 'a', '-', 9, '2021-12-14 10:31:33', '0', '-'),
(125, '113885397021688950713', 13, 1, 'a', '-', 9, '2021-12-14 10:31:33', '0', '-'),
(126, '113885397021688950713', 37, 0, 'a', '-', 6, '2021-12-21 08:33:09', 'resolved', '-'),
(127, '113885397021688950713', 32, 2, 'a', '-', 4, '2021-12-21 08:33:09', 'resolved', '-'),
(128, '113885397021688950713', 59, 0, 'a', '-', 4, '2021-12-21 08:33:09', 'resolved', '-'),
(129, '113885397021688950713', 35, 1, 'a', '-', 5, '2021-12-21 08:36:01', 'resolved', '-'),
(130, '113885397021688950713', 38, 2, 'a', '-', 7, '2021-12-21 08:36:01', '0', '-'),
(131, '113885397021688950713', 36, 2, 'a', '-', 4, '2021-12-21 08:36:01', 'resolved', '-'),
(132, '113885397021688950713', 33, 0, 'a', '-', 7, '2021-12-21 08:36:01', 'resolved', '-'),
(133, '113885397021688950713', 61, 0, 'a', '-', 4, '2021-12-21 08:36:01', '0', '-'),
(134, '113885397021688950713', 39, 2, 'a', '-', 6, '2021-12-21 08:53:28', '0', '-'),
(135, '113885397021688950713', 60, 0, 'a', '-', 5, '2021-12-21 08:54:19', '0', '-'),
(136, '113885397021688950713', 2, 2, 'a', '-', 4, '2021-12-21 08:55:44', 'resolved', '-'),
(137, '113885397021688950713', 16, 1, 'a', '-', 4, '2021-12-21 08:55:44', 'resolved', '-'),
(138, '113885397021688950713', 7, 1, 'a', '-', 17, '2021-12-21 09:05:04', '0', '-'),
(139, '113885397021688950713', 30, 0, 'a', '-', 7, '2021-12-21 09:05:04', '0', '-'),
(140, '113885397021688950713', 17, 2, 'a', '-', 4, '2021-12-21 09:09:06', '0', '-'),
(141, '113885397021688950713', 18, 0, 'a', '-', 6, '2021-12-21 09:09:06', '0', '-'),
(142, '113885397021688950713', 27, 0, 'a', '-', 5, '2021-12-21 09:11:53', 'resolved', '-'),
(143, '113885397021688950713', 11, 0, 'a', '-', 4, '2021-12-21 09:11:53', '0', '-'),
(144, '113885397021688950713', 26, 2, 'a', '-', 6, '2021-12-21 09:11:53', '0', '-'),
(145, '113885397021688950713', 44, 0, 'a', '-', 19, '2021-12-21 09:21:23', '0', '-'),
(146, '113885397021688950713', 45, 0, 'a', '-', 8, '2021-12-21 09:21:23', '0', '-'),
(147, '113885397021688950713', 47, 1, 'a', '-', 20, '2021-12-21 09:24:11', '0', '-'),
(148, '113885397021688950713', 46, 2, 'a', '-', 3, '2021-12-21 09:24:11', 'resolved', '-'),
(149, '113885397021688950713', 48, 0, 'a', '-', 28, '2021-12-21 09:29:04', '0', '-'),
(150, '113885397021688950713', 49, 2, 'a', '-', 11, '2021-12-21 09:29:04', 'resolved', '-'),
(151, '112446997328381071924', 15, 1, 'a', '-', 5, '2021-12-28 09:15:31', 'resolved', '-'),
(152, '112446997328381071924', 21, 0, 'a', '-', 10, '2021-12-28 09:15:31', 'process', '-'),
(153, '112446997328381071924', 21, 0, 'a', '-', 5, '2021-12-28 09:25:52', '0', '-'),
(154, '112446997328381071924', 15, 1, 'a', '-', 4, '2021-12-28 09:25:53', 'resolved', '-'),
(203, '112446997328381071924', 39, 0, 'a', 'https://projectquiz001.000webhostapp.com/uploads/61d2910020ace-1641189632.wav', 1, '2022-01-03 06:00:32', 'resolved', '-'),
(204, '112446997328381071924', 19, 1, 'a', 'https://projectquiz001.000webhostapp.com/uploads/61d2914d41064-1641189709.wav', 1, '2022-01-03 06:01:49', 'resolved', '-'),
(205, '112446997328381071924', 3, 2, 'a', 'https://projectquiz001.000webhostapp.com/uploads/61d2914d6d51c-1641189709.wav', 6, '2022-01-03 06:01:49', '0', '-'),
(206, '112446997328381071924', 66, 2, 'a', 'https://projectquiz001.000webhostapp.com/uploads/61d29341c17dc-1641190209.wav', 4, '2022-01-03 06:10:09', 'resolved', '-'),
(207, '112446997328381071924', 70, 0, 'a', 'https://projectquiz001.000webhostapp.com/uploads/61d29341ed568-1641190209.wav', 3, '2022-01-03 06:10:09', 'resolved', '-'),
(208, '112446997328381071924', 68, 1, 'a', 'https://projectquiz001.000webhostapp.com/uploads/61d29342275a0-1641190210.wav', 5, '2022-01-03 06:10:10', 'resolved', '-'),
(209, '112446997328381071924', 39, 0, 'a', 'https://projectquiz001.000webhostapp.com/uploads/61d2947e61a33-1641190526.wav', 30, '2022-01-03 06:15:26', 'process', '-'),
(210, '112446997328381071924', 69, 2, 'a', 'https://projectquiz001.000webhostapp.com/uploads/61d296a258811-1641191074.wav', 4, '2022-01-03 06:24:34', 'resolved', '-'),
(211, '112446997328381071924', 48, 0, 'a', 'https://projectquiz001.000webhostapp.com/uploads/61d2997182fbf-1641191793.wav', 7, '2022-01-03 06:36:33', '0', '-'),
(212, '112446997328381071924', 49, 0, 'a', 'https://projectquiz001.000webhostapp.com/uploads/61d29971b335e-1641191793.wav', 3, '2022-01-03 06:36:33', '0', '-'),
(213, '112446997328381071924', 19, 0, 'a', '-', 4, '2022-01-04 10:07:43', '0', '-'),
(214, '112446997328381071924', 3, 2, 'a', 'https://projectquiz001.000webhostapp.com/uploads/61d41ce22d653-1641290978.wav', 9, '2022-01-04 10:09:38', '0', '-'),
(217, '112446997328381071924', 27, 1, 'a', '-', 3, '2022-01-06 04:24:31', '0', '-'),
(218, '112446997328381071924', 26, 2, 'a', 'https://projectquiz001.000webhostapp.com/uploads/61d66f0046fb6-1641443072.wav', 5, '2022-01-06 04:24:32', '0', '-'),
(219, '112446997328381071924', 11, 2, 'a', 'https://projectquiz001.000webhostapp.com/uploads/61d66f007324e-1641443072.wav', 5, '2022-01-06 04:24:32', '0', '-'),
(220, '112446997328381071924', 22, 0, 'a', 'https://projectquiz001.000webhostapp.com/uploads/61d66f73360a3-1641443187.wav', 4, '2022-01-06 04:26:27', 'resolved', '-'),
(221, '112446997328381071924', 24, 0, 'a', 'https://projectquiz001.000webhostapp.com/uploads/61d66f738e588-1641443187.wav', 5, '2022-01-06 04:26:27', '0', '-'),
(222, '113885397021688950713', 67, 0, 'a', '-', 2, '2022-01-06 04:30:23', 'resolved', '-'),
(223, '113885397021688950713', 65, 2, 'a', '-', 1, '2022-01-06 04:30:23', '0', '-'),
(224, '113885397021688950713', 72, 2, 'a', '-', 1, '2022-01-06 04:30:23', 'resolved', '-'),
(225, '113885397021688950713', 71, 2, 'a', '-', 20, '2022-01-06 04:30:23', 'process', '-'),
(226, '113885397021688950713', 70, 2, 'a', 'https://projectquiz001.000webhostapp.com/uploads/61d6754a6f764-1641444682.wav', 5, '2022-01-06 04:51:22', '0', '-'),
(227, '113885397021688950713', 66, 1, 'a', 'https://projectquiz001.000webhostapp.com/uploads/61d6754aa097e-1641444682.wav', 4, '2022-01-06 04:51:22', '0', '-'),
(228, '113885397021688950713', 68, 2, 'a', 'https://projectquiz001.000webhostapp.com/uploads/61d6754ad2572-1641444682.wav', 4, '2022-01-06 04:51:22', '0', '-'),
(229, '113885397021688950713', 69, 2, 'a', 'https://projectquiz001.000webhostapp.com/uploads/61d6757c4a473-1641444732.wav', 5, '2022-01-06 04:52:12', 'resolved', '-'),
(230, '113885397021688950713', 22, 0, 'a', 'https://projectquiz001.000webhostapp.com/uploads/61d675d2e50c3-1641444818.wav', 4, '2022-01-06 04:53:38', 'resolved', '-'),
(231, '113885397021688950713', 24, 0, 'a', 'https://projectquiz001.000webhostapp.com/uploads/61d675d32560e-1641444819.wav', 4, '2022-01-06 04:53:39', '0', '-'),
(232, '111222483558947661809', 21, 1, 'a', 'https://projectquiz001.000webhostapp.com/uploads/61d67ac6e5f23-1641446086.wav', 4, '2022-01-06 05:14:46', 'resolved', '-'),
(233, '111222483558947661809', 15, 1, 'a', 'https://projectquiz001.000webhostapp.com/uploads/61d67ac71c4b3-1641446087.wav', 4, '2022-01-06 05:14:47', 'resolved', '-'),
(234, '111222483558947661809', 4, 1, 'a', 'https://projectquiz001.000webhostapp.com/uploads/61d67b1e8dab6-1641446174.wav', 5, '2022-01-06 05:16:14', '0', '-'),
(235, '111222483558947661809', 20, 1, 'a', 'https://projectquiz001.000webhostapp.com/uploads/61d67b1ebcd8d-1641446174.wav', 5, '2022-01-06 05:16:14', '0', '-'),
(236, '110703451552808869987', 15, 2, 'a', '-', 10, '2022-01-10 01:01:55', 'process', '-'),
(237, '110703451552808869987', 21, 2, 'a', '-', 10, '2022-01-10 01:01:55', 'process', '-'),
(238, '110703451552808869987', 4, 2, 'a', '-', 15, '2022-01-10 01:24:53', 'process', '-'),
(239, '110703451552808869987', 20, 0, 'a', '-', 2, '2022-01-10 01:24:53', 'resolved', '-'),
(240, '110703451552808869987', 19, 1, 'a', '-', 10, '2022-01-10 01:28:08', 'resolved', '-'),
(241, '110703451552808869987', 3, 0, 'a', 'https://projectquiz001.000webhostapp.com/uploads/61db8ba8a0599-1641778088.wav', 18, '2022-01-10 01:28:08', 'resolved', '-'),
(242, '110703451552808869987', 2, 0, 'a', 'https://projectquiz001.000webhostapp.com/uploads/61db8ca897d62-1641778344.wav', 25, '2022-01-10 01:32:24', 'process', '-'),
(243, '110703451552808869987', 16, 2, 'a', 'https://projectquiz001.000webhostapp.com/uploads/61db8ca913aa6-1641778345.wav', 25, '2022-01-10 01:32:25', 'process', '-'),
(244, '110703451552808869987', 13, 2, 'a', 'https://projectquiz001.000webhostapp.com/uploads/61db8d5e187c7-1641778526.wav', 12, '2022-01-10 01:35:26', 'resolved', '-'),
(245, '110703451552808869987', 5, 2, 'u', 'https://projectquiz001.000webhostapp.com/uploads/61db8d5e71889-1641778526.wav', 7, '2022-01-10 01:35:26', 'resolved', '-'),
(246, '110703451552808869987', 6, 1, 'u', 'https://projectquiz001.000webhostapp.com/uploads/61db8d5ec2e06-1641778526.wav', 9, '2022-01-10 01:35:26', 'resolved', '-'),
(247, '110703451552808869987', 40, 0, 'a', 'https://projectquiz001.000webhostapp.com/uploads/61db8f8ac3d16-1641779082.wav', 10, '2022-01-10 01:44:42', 'process', '-'),
(248, '110703451552808869987', 41, 0, 'a', 'https://projectquiz001.000webhostapp.com/uploads/61db8f8b1028b-1641779083.wav', 7, '2022-01-10 01:44:43', 'resolved', '-'),
(249, '110703451552808869987', 43, 0, 'a', 'https://projectquiz001.000webhostapp.com/uploads/61db8ff5f1ff9-1641779189.wav', 8, '2022-01-10 01:46:29', '0', '-'),
(250, '110703451552808869987', 42, 0, 'a', 'https://projectquiz001.000webhostapp.com/uploads/61db8ff63b27c-1641779190.wav', 8, '2022-01-10 01:46:30', 'resolved', '-'),
(251, '111222483558947661809', 19, 2, 'a', 'https://projectquiz001.000webhostapp.com/uploads/61db99a6e7a8f-1641781670.wav', 5, '2022-01-10 02:27:50', '0', '-'),
(252, '111222483558947661809', 3, 2, 'a', 'https://projectquiz001.000webhostapp.com/uploads/61db99a72f45e-1641781671.wav', 4, '2022-01-10 02:27:51', '0', '-'),
(253, '110703451552808869987', 18, 2, 'a', 'https://projectquiz001.000webhostapp.com/uploads/61dba0a07ed67-1641783456.wav', 7, '2022-01-10 02:57:36', 'resolved', '-'),
(254, '110703451552808869987', 17, 2, 'a', '-', 4, '2022-01-10 02:57:36', '0', '-'),
(255, '101627749291352289557', 21, 1, 'a', 'https://projectquiz001.000webhostapp.com/uploads/61dba24e3e517-1641783886.wav', 10, '2022-01-10 03:04:46', 'process', '-'),
(256, '101627749291352289557', 15, 0, 'a', 'https://projectquiz001.000webhostapp.com/uploads/61dba24e7032a-1641783886.wav', 8, '2022-01-10 03:04:46', '0', '-'),
(257, '101627749291352289557', 63, 0, 'a', 'https://projectquiz001.000webhostapp.com/uploads/61dba3e3b4e92-1641784291.wav', 6, '2022-01-10 03:11:31', 'resolved', '-'),
(258, '101627749291352289557', 64, 2, 'a', 'https://projectquiz001.000webhostapp.com/uploads/61dba3e3e56dd-1641784291.wav', 5, '2022-01-10 03:11:31', '0', '-'),
(259, '111222483558947661809', 2, 1, 'a', 'https://projectquiz001.000webhostapp.com/uploads/61dba812e7b90-1641785362.wav', 5, '2022-01-10 03:29:22', '0', '-'),
(260, '111222483558947661809', 16, 0, 'a', 'https://projectquiz001.000webhostapp.com/uploads/61dba813234a6-1641785363.wav', 9, '2022-01-10 03:29:23', '0', '-'),
(261, '111222483558947661809', 18, 2, 'a', 'https://projectquiz001.000webhostapp.com/uploads/61dbae74da93e-1641786996.wav', 7, '2022-01-10 03:56:36', 'resolved', '-'),
(262, '111222483558947661809', 17, 0, 'a', 'https://projectquiz001.000webhostapp.com/uploads/61dbae75111ac-1641786997.wav', 4, '2022-01-10 03:56:37', 'resolved', '-'),
(263, '110703451552808869987', 32, 2, 'a', 'https://projectquiz001.000webhostapp.com/uploads/61dcd4d5c55d8-1641862357.wav', 14, '2022-01-11 00:52:37', 'resolved', '-'),
(264, '110703451552808869987', 37, 2, 'a', 'https://projectquiz001.000webhostapp.com/uploads/61dcd4d6113be-1641862358.wav', 5, '2022-01-11 00:52:38', '0', '-'),
(265, '110703451552808869987', 59, 2, 'a', 'https://projectquiz001.000webhostapp.com/uploads/61dcd4d6448de-1641862358.wav', 20, '2022-01-11 00:52:38', 'process', '-'),
(266, '110703451552808869987', 38, 1, 'a', '-', 13, '2022-01-12 02:45:38', 'resolved', '-'),
(267, '110703451552808869987', 33, 0, 'a', '-', 7, '2022-01-12 02:45:38', 'resolved', '-'),
(268, '110703451552808869987', 36, 0, 'a', '-', 1, '2022-01-12 02:45:38', '0', '-'),
(269, '110703451552808869987', 61, 0, 'a', 'https://projectquiz001.000webhostapp.com/uploads/61de40d28f3b8-1641955538.wav', 8, '2022-01-12 02:45:38', '0', '-'),
(270, '110703451552808869987', 35, 2, 'a', 'https://projectquiz001.000webhostapp.com/uploads/61de40d2c3514-1641955538.wav', 5, '2022-01-12 02:45:38', '0', '-'),
(271, '1', 15, 2, 'a', '-', 10, '2022-01-12 04:17:49', 'process', '-'),
(272, '1', 21, 0, 'a', '-', 10, '2022-01-12 04:17:49', 'process', '-'),
(273, '1', 21, 2, 'a', '-', 10, '2022-01-12 04:19:58', 'process', '-'),
(274, '1', 15, 0, 'a', '-', 10, '2022-01-12 04:19:58', 'process', '-'),
(275, '1', 15, 2, 'a', '-', 10, '2022-01-12 04:24:53', 'process', '-'),
(276, '1', 21, 1, 'a', '-', 10, '2022-01-12 04:24:53', 'process', '-'),
(277, '1', 15, 1, 'a', '-', 10, '2022-01-12 04:34:54', 'process', '-'),
(278, '1', 21, 1, 'a', '-', 10, '2022-01-12 04:34:54', 'process', '-'),
(279, '1', 15, 2, 'a', '-', 10, '2022-01-12 04:35:43', 'process', '-'),
(280, '1', 21, 1, 'a', '-', 10, '2022-01-12 04:35:43', 'process', '-'),
(281, '1', 21, 1, 'a', 'https://projectquiz001.000webhostapp.com/uploads/61de5b476a3fe-1641962311.wav', 9, '2022-01-12 04:38:31', 'resolved', '-'),
(282, '1', 15, 0, 'a', 'https://projectquiz001.000webhostapp.com/uploads/61de5b4a567e3-1641962314.wav', 8, '2022-01-12 04:38:34', '0', '-'),
(283, '1', 21, 2, 'a', '-', 2, '2022-01-12 04:45:17', '0', '-'),
(284, '1', 15, 2, 'a', '-', 2, '2022-01-12 04:45:17', '0', '-'),
(285, '1', 15, 2, 'a', '-', 4, '2022-01-12 04:46:13', '0', '-'),
(286, '1', 21, 0, 'a', '-', 4, '2022-01-12 04:46:13', '0', '-'),
(287, '1', 15, 0, 'a', '-', 2, '2022-01-12 04:46:44', '0', '-'),
(288, '1', 21, 2, 'a', '-', 3, '2022-01-12 04:46:44', '0', '-'),
(289, '1', 15, 2, 'a', '-', 10, '2022-01-12 04:47:28', 'process', '-'),
(290, '1', 21, 0, 'a', '-', 10, '2022-01-12 04:47:28', 'process', '-'),
(291, '1', 15, 0, 'a', '-', 10, '2022-01-12 04:53:31', 'process', '-'),
(292, '1', 21, 1, 'a', '-', 10, '2022-01-12 04:53:31', 'process', '-'),
(293, '1', 15, 0, 'a', '-', 10, '2022-01-12 05:19:24', 'process', '-'),
(294, '1', 21, 2, 'a', '-', 10, '2022-01-12 05:19:24', 'process', '-'),
(295, '1', 21, 1, 'a', '-', 5, '2022-01-12 05:46:50', 'resolved', '-'),
(296, '1', 15, 0, 'a', '-', 2, '2022-01-12 05:46:50', '0', '-'),
(297, '1', 21, 1, 'a', '-', 10, '2022-01-12 05:47:29', 'process', '-'),
(298, '1', 15, 0, 'a', '-', 3, '2022-01-12 05:47:29', '0', '-'),
(299, '1', 21, 1, 'a', '-', 10, '2022-01-12 05:48:59', 'process', '-'),
(300, '1', 15, 0, 'a', '-', 4, '2022-01-12 05:48:59', '0', '-'),
(301, '1', 15, 2, 'a', '-', 2, '2022-01-12 05:49:43', '0', '-'),
(302, '1', 21, 0, 'a', '-', 1, '2022-01-12 05:49:43', '0', '-'),
(303, '1', 21, 2, 'a', '-', 3, '2022-01-12 05:50:31', '0', '-'),
(304, '1', 15, 2, 'a', '-', 4, '2022-01-12 05:50:31', '0', '-'),
(305, '1', 21, 0, 'a', '-', 3, '2022-01-12 07:33:41', '0', '-'),
(306, '1', 15, 0, 'a', '-', 1, '2022-01-12 07:33:41', '0', '-'),
(307, '1', 21, 0, 'a', '-', 2, '2022-01-12 07:34:28', '0', '-'),
(308, '1', 15, 0, 'a', '-', 1, '2022-01-12 07:34:28', '0', '-'),
(309, '1', 21, 0, 'a', '-', 6, '2022-01-12 07:35:28', '0', '-'),
(310, '1', 15, 0, 'a', '-', 10, '2022-01-12 07:35:28', 'process', '-'),
(311, '1', 15, 0, 'a', '-', 1, '2022-01-12 07:36:19', '0', '-'),
(312, '1', 21, 0, 'a', '-', 9, '2022-01-12 07:36:19', '0', '-'),
(313, '1', 15, 0, 'a', '-', 2, '2022-01-12 07:37:06', '0', '-'),
(314, '1', 21, 0, 'a', '-', 2, '2022-01-12 07:37:06', '0', '-'),
(315, '1', 15, 0, 'a', '-', 2, '2022-01-12 07:37:50', '0', '-'),
(316, '1', 21, 0, 'a', '-', 2, '2022-01-12 07:37:50', '0', '-'),
(317, '1', 15, 0, 'a', '-', 2, '2022-01-12 07:42:09', '0', '-'),
(318, '1', 21, 0, 'a', '-', 2, '2022-01-12 07:42:09', '0', '-'),
(319, '1', 15, 0, 'a', '-', 4, '2022-01-12 07:43:02', '0', '-'),
(320, '1', 21, 0, 'a', '-', 10, '2022-01-12 07:43:03', 'process', '-'),
(321, '1', 15, 0, 'a', '-', 4, '2022-01-12 07:58:43', '0', '-'),
(322, '1', 21, 0, 'a', '-', 4, '2022-01-12 07:58:43', '0', '-'),
(323, '1', 15, 0, 'a', '-', 3, '2022-01-12 08:16:30', '0', '-'),
(324, '1', 21, 0, 'a', '-', 4, '2022-01-12 08:16:30', '0', '-'),
(325, '1', 15, 0, 'a', '-', 3, '2022-01-12 08:19:37', '0', '-'),
(326, '1', 21, 0, 'a', '-', 1, '2022-01-12 08:19:37', '0', '-'),
(327, '1', 15, 0, 'a', '-', 3, '2022-01-12 08:20:49', '0', '-'),
(328, '1', 21, 0, 'a', '-', 2, '2022-01-12 08:20:49', '0', '-'),
(329, '1', 15, 0, 'a', '-', 4, '2022-01-12 08:25:19', '0', '-'),
(330, '1', 21, 0, 'a', '-', 4, '2022-01-12 08:25:19', '0', '-'),
(331, '1', 15, 0, 'a', '-', 2, '2022-01-12 08:27:04', '0', '-'),
(332, '1', 21, 0, 'a', '-', 2, '2022-01-12 08:27:04', '0', '-'),
(333, '1', 15, 0, 'a', '-', 3, '2022-01-12 08:28:21', '0', '-'),
(334, '1', 21, 0, 'a', '-', 3, '2022-01-12 08:28:21', '0', '-'),
(335, '1', 15, 0, 'a', '-', 3, '2022-01-12 08:32:09', '0', '-'),
(336, '1', 21, 0, 'a', '-', 3, '2022-01-12 08:32:09', '0', '-'),
(337, '1', 15, 0, 'a', 'https://projectquiz001.000webhostapp.com/uploads/61de929030b71-1641976464.wav', 8, '2022-01-12 08:34:24', '0', '-'),
(338, '1', 21, 0, 'a', 'https://projectquiz001.000webhostapp.com/uploads/61de9290776cd-1641976464.wav', 7, '2022-01-12 08:34:24', '0', '-'),
(339, '1', 15, 0, 'a', 'https://projectquiz001.000webhostapp.com/uploads/61de96d21de91-1641977554.wav', 2, '2022-01-12 08:52:34', '0', '-'),
(340, '1', 21, 0, 'a', 'https://projectquiz001.000webhostapp.com/uploads/61de96d268a2f-1641977554.wav', 6, '2022-01-12 08:52:34', '0', '-'),
(341, '1', 15, 0, 'a', 'https://projectquiz001.000webhostapp.com/uploads/61de9734d2f14-1641977652.wav', 4, '2022-01-12 08:54:12', '0', '-'),
(342, '1', 21, 0, 'a', 'https://projectquiz001.000webhostapp.com/uploads/61de973528ec0-1641977653.wav', 5, '2022-01-12 08:54:13', '0', '-'),
(343, '1', 15, 0, 'a', '-', 10, '2022-01-12 08:54:43', 'process', '-'),
(344, '1', 21, 0, 'a', '-', 10, '2022-01-12 08:54:43', 'process', '-');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `uid` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `uname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tuser` enum('0','1','2','') COLLATE utf8_unicode_ci NOT NULL,
  `ts` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `st` enum('0','process','resolved','') COLLATE utf8_unicode_ci NOT NULL,
  `ket` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '-'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`uid`, `uname`, `email`, `tuser`, `ts`, `st`, `ket`) VALUES
('101102472892395070172', 'Wise Akira', 'partyhorse339@gmail.com', '0', '2022-01-06 05:13:07', '0', '-'),
('101627749291352289557', 'Muhamad Rayhand Prasetya', 'mrayhandpras@gmail.com', '0', '2022-01-10 02:52:07', '0', '-'),
('110703451552808869987', 'Fajar Hidayat', 'qoplay@gmail.com', '0', '2022-01-10 00:59:15', '0', '-'),
('111222483558947661809', 'Dennis Akira', 'dennisakira339@gmail.com', '0', '2021-12-21 09:35:25', '0', '-'),
('112446997328381071924', 'Perkiraan Akira', 'akiraberkirakira@gmail.com', '0', '2021-12-05 16:11:57', '0', '-'),
('112689141539062738906', 'Muhammad Fajar Hidayat', 'fajarh922@gmail.com', '0', '2022-01-10 00:55:24', '0', '-'),
('112689877683276490649', 'Rajaf Hidayat', 'rjfsret@gmail.com', '0', '2022-01-10 02:01:34', '0', '-'),
('113885397021688950713', 'AKIRA', 'akira@student.president.ac.id', '1', '2022-01-03 06:42:38', '0', '-'),
('223235', 'Reinald', 'reinald819@gmail.com', '1', '2021-12-12 06:45:00', '0', '-'),
('null', 'null', 'null', '0', '2022-01-11 06:48:12', '0', '-');

-- --------------------------------------------------------

--
-- Struktur dari tabel `userweb`
--

CREATE TABLE `userweb` (
  `name` varchar(50) NOT NULL,
  `college` varchar(100) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `userweb`
--

INSERT INTO `userweb` (`name`, `college`, `email`, `password`) VALUES
('anddianaa', 'Stanford University', 'annisanurdiana@gmail.com', 'OnlineQuiz'),
('Celine Annya', 'National University of Singapore', 'celine@gmail.com', 'celinecantik'),
('Kevin Julio', 'Institute of Science and Technology', 'kevinjulio@gmail.com', 'julionamasaya');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `audio`
--
ALTER TABLE `audio`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `soal`
--
ALTER TABLE `soal`
  ADD PRIMARY KEY (`sid`);

--
-- Indeks untuk tabel `subject`
--
ALTER TABLE `subject`
  ADD PRIMARY KEY (`sub_id`);

--
-- Indeks untuk tabel `subjek`
--
ALTER TABLE `subjek`
  ADD PRIMARY KEY (`sub_id`);

--
-- Indeks untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`tid`) USING BTREE;

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`uid`),
  ADD UNIQUE KEY `UNIQUE` (`uname`) USING BTREE;

--
-- Indeks untuk tabel `userweb`
--
ALTER TABLE `userweb`
  ADD PRIMARY KEY (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `audio`
--
ALTER TABLE `audio`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `soal`
--
ALTER TABLE `soal`
  MODIFY `sid` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT untuk tabel `subject`
--
ALTER TABLE `subject`
  MODIFY `sub_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT untuk tabel `subjek`
--
ALTER TABLE `subjek`
  MODIFY `sub_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `tid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=345;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
