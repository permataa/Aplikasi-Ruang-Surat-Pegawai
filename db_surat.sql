-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 18 Bulan Mei 2023 pada 10.20
-- Versi server: 10.4.27-MariaDB
-- Versi PHP: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_surat`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `kegiatan`
--

CREATE TABLE `kegiatan` (
  `id` int(255) NOT NULL,
  `nama_kegiatan` varchar(255) NOT NULL,
  `bidang` varchar(255) NOT NULL,
  `tempat` varchar(255) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `tanggal1` varchar(255) NOT NULL,
  `tanggal2` varchar(255) NOT NULL,
  `waktu` varchar(255) NOT NULL,
  `qr_sukma` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `kegiatan`
--

INSERT INTO `kegiatan` (`id`, `nama_kegiatan`, `bidang`, `tempat`, `alamat`, `tanggal1`, `tanggal2`, `waktu`, `qr_sukma`) VALUES
(1, 'kerjabakti', 'gfdge', 'gfdggg', 'vddg', 'fdbfgf', '', 'gfdgg', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kontak`
--

CREATE TABLE `kontak` (
  `id` int(11) NOT NULL,
  `NAMA_PERANGKAT_DAERAH` varchar(255) NOT NULL,
  `WEBSITE` varchar(255) NOT NULL,
  `ALAMAT` text NOT NULL,
  `KOTA` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `kontak`
--

INSERT INTO `kontak` (`id`, `NAMA_PERANGKAT_DAERAH`, `WEBSITE`, `ALAMAT`, `KOTA`) VALUES
(1, 'Inspektorat Provinsi Jawa Timur', 'https://inspektorat.jatimprov.go.id/public/', 'Jl. Ngagel Jaya Tengah No.102, Baratajaya, Kec. Gubeng', 'SURABAYA'),
(3, 'Dinas Kebudayaan dan Pariwisata Provinsi Jawa Timur', 'https://disbudpar.jatimprov.go.id/', 'Jl. Wisata Menanggal', 'SURABAYA'),
(4, 'Dinas Kehutanan Provinsi Jawa Timur', 'https://dishut.jatimprov.go.id/portal/public/', 'Jl. Raya Juanda', ' SIDOARJO'),
(5, 'Dinas Kelautan dan Perikanan Provinsi Jawa Timur', 'https://dkp.jatimprov.go.id/', 'Jl. Ahmad Yani No. 152B', 'SURABAYA'),
(6, 'Dinas Kepemudaan dan Olahraga Provinsi Jawa Timur', 'https://dispora.jatimprov.go.id/', 'Jl. Kayon No. 56', 'SURABAYA'),
(7, 'Dinas Kesehatan Provinsi Jawa Timur', 'https://dinkes.jatimprov.go.id/#', 'Jl. Jend. Ahmad Yani No. 118', 'SURABAYA'),
(8, 'Dinas Koperasi, Usaha Kecil dan Menengah Provinsi Jawa Timur', 'https://diskopukm.jatimprov.go.id/first', 'Jl. Raya Juanda No 22', 'SURABAYA'),
(9, 'Dinas Lingkungan Hidup Provinsi Jawa Timur', 'https://dlh.jatimprov.go.id/public/', 'Jl. Wisata Menanggal No. 28', 'SURABAYA'),
(10, 'Dinas Pemberdayaan Masyarakat dan Desa Provinsi Jawa Timur', 'https://dpmd.jatimprov.go.id/', 'Jl. Ahmad Yani No. 152C', 'SURABAYA'),
(11, 'Dinas Pemberdayaan Perempuan, Perlindungan Anak & Kependudukan Provinsi Jawa Timur', 'https://dp3ak.jatimprov.go.id/', 'Jl. Jagir Wonokromo No. 358', 'SURABAYA'),
(12, 'Dinas Penanaman Modal dan Pelayanan Terpadu Satu Pintu Provinsi Jawa Timur', 'https://dpmptsp.jatimprov.go.id/', 'Jl. Johar No. 17', 'SURABAYA'),
(13, 'Dinas Pendidikan Provinsi Jawa Timur', 'https://dindik.jatimprov.go.id/', 'Jl. Gentengkali No. 33', 'SURABAYA'),
(14, 'Dinas Perhubungan Provinsi Jawa Timur', 'https://dindik.jatimprov.go.id/', 'Jl. Gentengkali No. 33', 'SURABAYA'),
(15, 'Dinas Perindustrian dan Perdagangan Provinsi Jawa Timur', 'https://disperindag.jatimprov.go.id/', 'Jl. Siwanlan Kerto Utara II No. 42', 'SURABAYA');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kontak2`
--

CREATE TABLE `kontak2` (
  `id` int(11) NOT NULL,
  `NAMA_KOMINFO_KABKO` varchar(255) NOT NULL,
  `KABKO` varchar(255) NOT NULL,
  `WEBSITE` varchar(255) NOT NULL,
  `ALAMAT` varchar(255) NOT NULL,
  `KOTA` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `kontak2`
--

INSERT INTO `kontak2` (`id`, `NAMA_KOMINFO_KABKO`, `KABKO`, `WEBSITE`, `ALAMAT`, `KOTA`) VALUES
(1, 'Dinas Komunikasi dan Informatika', 'Kabupaten Bangkalan', 'https://kominfo.bangkalankab.go.id/', 'Jl. Soekarno Hatta No. 35', 'BANGKALAN'),
(2, 'Dinas Komunikasi, Informatika dan Persandian', 'Kabupaten Banyuwangi', '', 'Jl. KH. Agus Salim No. 85', 'BANYUWANGI'),
(3, 'Dinas Komunikasi, Informatika, Statistik dan Persandian', 'Kabupaten Blitar', 'https://kominfo.blitarkab.go.id/', 'Jl. S. Supriadi No. 17', 'BLITAR');

-- --------------------------------------------------------

--
-- Struktur dari tabel `peraturan`
--

CREATE TABLE `peraturan` (
  `id` int(255) NOT NULL,
  `PERATURAN1` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `peraturan`
--

INSERT INTO `peraturan` (`id`, `PERATURAN1`) VALUES
(1, 'Peraturan Daerah Provinsi Jawa Timur Nomor 7 Tahun 2022 tanggal 20 Oktober 2022 tentang Perubahan Anggaran Pendapatan dan Belanja Daerah Provinsi Jawa Timur Tahun Anggaran 2022'),
(2, 'Peraturan Gubernur Jawa Timur Nomor 62 Tahun 2022 tanggal 20 Oktober 2022 tentang Penjabaran Perubahan Anggaran Pendapatan dan Belanja Daerah Provinsi Jawa Timur Tahun Anggaran 2022'),
(3, 'Peraturan Gubernur Jawa Timur Nomor 12 Tahun 2022 tanggal 22 Februari 2022 tentang Perubahan Atas Peraturan Gubernur Jawa Timur Nomor 55 Tahun 2021 tentang Pedoman Kerja dan Pelaksanaan Tugas Pemerintah Daerah Provinsi Jawa Timur Tahun 2022;\r\n\r\n'),
(4, 'Dokumen Pelaksanaan Perubahan Anggaran Dinas Komunikasi dan Informatika Provinsi Jawa Timur Tahun 2022 Nomor DPPA/B.1/2.16.2.20.2.21.04.0000/001/2022 Tanggal 21 Oktober 2022.\r\n\r\n');

-- --------------------------------------------------------

--
-- Struktur dari tabel `ruang`
--

CREATE TABLE `ruang` (
  `id` int(255) NOT NULL,
  `nama_kegiatan` varchar(255) NOT NULL,
  `bidang` varchar(255) NOT NULL,
  `undangan` varchar(255) NOT NULL,
  `ruang` varchar(255) NOT NULL,
  `tanggal1` varchar(255) NOT NULL,
  `tanggal2` varchar(255) NOT NULL,
  `waktu` varchar(255) NOT NULL,
  `keterangan1` varchar(255) NOT NULL,
  `keterangan2` varchar(255) NOT NULL,
  `file_nd` varchar(255) NOT NULL,
  `qr_sukma` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_admin`
--

CREATE TABLE `tb_admin` (
  `id_admin` int(10) NOT NULL,
  `nama_admin` varchar(50) NOT NULL,
  `username_admin` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `gambar` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `tb_admin`
--

INSERT INTO `tb_admin` (`id_admin`, `nama_admin`, `username_admin`, `password`, `gambar`) VALUES
(1, 'Koala Lumpur', 'admin', 'd033e22ae348aeb5660fc2140aec35850c4da997', 'admin.png'),
(2, 'admin2', 'admin2', '315f166c5aca63a157f7d41007675cb44a948b33', 'admin2.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_bagian`
--

CREATE TABLE `tb_bagian` (
  `id_bagian` varchar(50) NOT NULL,
  `NIP` varchar(255) NOT NULL,
  `username_admin_bagian` varchar(50) NOT NULL,
  `password_bagian` text NOT NULL,
  `nama_pegawai` varchar(255) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `bidang` varchar(255) NOT NULL,
  `jenis_jabatan` varchar(50) NOT NULL,
  `nama_jabatan` varchar(100) NOT NULL,
  `tmt_jabatan` date DEFAULT NULL,
  `tmt_pensiun` date DEFAULT NULL,
  `gambar` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `tb_bagian`
--

INSERT INTO `tb_bagian` (`id_bagian`, `NIP`, `username_admin_bagian`, `password_bagian`, `nama_pegawai`, `tanggal_lahir`, `bidang`, `jenis_jabatan`, `nama_jabatan`, `tmt_jabatan`, `tmt_pensiun`, `gambar`) VALUES
('1', '19750805 199803 2 002', 'sherlita', '7c0cb99faf481cf8bc1c48620f3277d01273ddfd', 'SHERLITA RATNA DEWI AGUSTIN, S.Si., M.IP.', '1975-08-05', 'Dinas Komunikasi dan Informatika Provinsi Jawa Timur\r\n', 'Struktural', 'Kepala Dinas Komunikasi dan Informatika Provinsi Jawa Timur\r\n', '2023-01-09', '2033-09-01', 'hukum.png'),
('10', '19800224 201001 2 009', 'ratna', '0453ac51118e6cac5b068a39906fe533bb4535ee', 'RATNA DIAH AYUNINGTYAS, S.E.\r\n', '1980-02-24', 'Sekretariat\r\n', 'Struktural', 'Kepala Sub Bagian Umum dan Kepegawaian\r\n', '2022-10-05', '2038-03-01', ''),
('100', '19671002 199403 1 005\r\n', 'supono', 'ac961aead1867fae8b1d6fe7fa749278ba9d33ce', 'SUPONO\r\n', '2023-01-02', 'Informasi Publik\r\n', 'Pelaksana', 'Pengelola Data\r\n\r\n', '2023-01-02', '2025-11-01', ''),
('101', '19681002 199203 2 005\r\n', 'sri', '532f110e089ab7f9606f1ba1fe4648a4a4d5dcc2', 'SRI WAHYUNI\r\n', '1968-10-02', 'Komunikasi Publik\r\n', 'Pelaksana', 'Pengolah Data\r\n', '2018-01-01', '2026-11-01', ''),
('102', '19791024 200901 2 002\r\n', 'setya', '9700d62117ce98a5ca56813dd35729ef3cdec437', 'RATNA TRI SETYAWATI, S.E.\r\n', '1979-10-24', 'Sekertariat\r\n', 'Pelaksana', 'Penata Laporan Keuangan\r\n', '2022-12-01', '2037-11-01', ''),
('103', '19740207 200801 1 013\r\n', 'taufik', '2e331f16112789d43d5f9ae840ea6aee1172d0c4', 'TAUFIK HIDAYAT, S.H.\r\n\r\n', '1974-02-07', 'Sekertariat\r\n', 'Pelaksana', 'Pengelola Pemanfaatan Barang Milik Daerah\r\n', '2018-01-01', '2032-03-01', ''),
('104', '19920306 201903 1 007\r\n', 'habibi', '3eac329c208657f1d240cf5a24f32c084d8c2557', 'ADE PUTRA HABIBI, S.Kom.\r\n', '1992-03-06', 'Infrastruktur TIK\r\n', 'Pelaksana', 'Pengelola Keamanan Sistem Informasi\r\n', '2019-03-01', '2050-04-01', ''),
('105', '19930224 201903 1 005\r\n', 'bob', '48181acd22b3edaebc8a447868a7df7ce629920a', 'BOBBY KRISTYA NARESWARA, S.Kom.\r\n', '1993-02-24', 'Infrastruktur TIK\r\n', 'Pelaksana', 'Pengelola Teknologi Informasi\r\n', '2019-03-01', '2051-03-01', ''),
('106', '19660707 199103 1 013\r\n', 'yani', '99a123b54e4c74b11c40ce5934bc137b2fbf2531', 'MARHAENRY MATHEUS YANI\r\n', '1966-07-07', 'Informasi Publik\r\n', 'Pelaksana', 'Pengelola Pengaduan Publik\r\n', '2023-01-02', '2024-08-01', ''),
('107', '19801215 200212 1 003\r\n', 'rudy', 'c82454b3bb6e6b372e559f3cd7a1cf2086e3a758', 'RUDY KURNIAWAN, S.T.\r\n', '1980-12-15', 'Sekertariat\r\n', 'Pelaksana', 'Verifikator Keuangan\r\n', '2023-01-02', '2039-01-01', ''),
('108', '19710511 199703 2 002\r\n', 'mei', '88bad360bf302e910256cbc1aa8473ae4af25ab4', 'MEI JUNIARTI, S.Sos, M.M.', '1971-05-11', 'Sekertariat\r\n', 'Pelaksana', 'Pengelola Data\r\n\r\n', '2023-01-02', '2029-06-01', ''),
('109', '19720113 199203 1 003\r\n', 'yanto', '87c8a128091054f836a14b544959d7f5df651b09', 'MOEDJIANTO\r\n', '1972-01-13', 'Sekertariat\r\n', 'Pelaksana', 'Pengadministrasi Umum\r\n', '2018-01-01', '2030-02-01', ''),
('11', '19851024 200912 1 012', 'bahar', '13b5e30edf8e14b52dd8cca04909aa4c05177d51', 'AULIA BAHAR PERNAMA, S.Kom., M.ISM.\r\n', '1985-10-24', 'Aplikasi Informatika', 'Struktural', 'Kepala Seksi Persandian dan Keamanan Informasi\r\n', '2018-06-22', '2043-11-01', ''),
('110', '19730411 200701 2 008\r\n', 'umi', 'a76eeafbdc77be849425f0dfe2d6a3b2058b1075', 'UMI SUSILARINI\r\n', '1973-04-11', 'Komunikasi Publik\r\n', 'Pelaksana', 'Pengadministrasi Umum\r\n', '2018-01-01', '2031-05-01', ''),
('111', '19740109 200801 1 008\r\n', 'edyy', '85b3848789c6c55af242ad990bf8b5ba9aa0acfd', 'EDY MUGI BASUKI\r\n', '1974-01-09', 'Informasi Publik\r\n', 'Pelaksana', 'Pengadministrasi Umum\r\n', '2018-01-01', '2032-02-01', ''),
('112', '19740620 200801 1 011\r\n', 'imul', 'e70fb4cbd88584703b82e5e5b1e30768d71fa61c', 'M DHAIMUL KHAROMIN\r\n', '1974-06-20', 'Informasi Publik\r\n', 'Pelaksana', 'Pengadministrasi Umum\r\n', '2018-01-01', '2032-07-01', ''),
('113', '19781024 200801 2 009\r\n', 'anny', '990307356b32eaddd086a8a8f7b3a5aeb76fb040', 'ANNY FARIZAH\r\n', '1978-10-24', 'Komunikasi Publik\r\n', 'Pelaksana', 'Pengadministrasi Umum\r\n', '2018-01-01', '2036-11-01', ''),
('114', '19781228 200901 1 002\r\n', 'furqon', '0b2e50691d42da7d304f7f8ea9c3de476af34740', 'FURQON HIDAYAT\r\n', '1978-12-28', 'Informasi Publik\r\n', 'Pelaksana', 'Pengadministrasi Umum\r\n', '2021-03-02', '2037-01-01', ''),
('115', '19680513 200901 1 004\r\n', 'suparto', '46edd9e8a11a471becff8487f550e665674a73a7', 'SUPARTO\r\n', '1968-05-13', 'Sekertariat\r\n', 'Pelaksana', 'Pengadministrasi Umum\r\n', '2018-01-01', '2026-06-01', ''),
('116', '19841010 201001 1 003\r\n', 'ipul', '65bd5c2cb3d690e3e9fcf6e88ddb465a48a717d3', 'SAIFUL ANWAR\r\n', '1984-10-10', 'Sekertariat\r\n', 'Pelaksana', 'Pengadministrasi Umum\r\n', '2018-01-01', '2042-11-01', ''),
('117', '19820514 200902 2 001\r\n', 'mila', '55172926eb9e5a0db8a97565cdf485de88d6035a', 'MILA ASTRIANA, S.Sos.\r\n', '1982-05-14', 'Sekertariat\r\n', 'Pelaksana', 'Pengadministrasi Umum\r\n', '2019-07-01', '2040-06-01', ''),
('118', '19660201 198903 1 018\r\n', 'nurhadi', 'b944d9d019e4543e092f9eb92ef3722907548b6e', 'NURHADI\r\n', '1966-02-01', 'Sekertariat\r\n', 'Pelaksana', 'Teknisi Peralatan, Listrik dan Elektronika\r\n', '2019-01-02', '2024-03-01', ''),
('119', '19670302 199302 1 002\r\n', 'samsung', '006839d264a38b7f58e5c8130447528bf4b7aee1', 'SAMSUL HADI\r\n', '1967-03-02', 'Komunikasi Publik\r\n', 'Pelaksana', 'Pengadministrasi Umum\r\n', '2018-01-01', '2025-04-01', ''),
('12', '19690214 198803 1 002', 'pur', '9799117cd853a2cd0a3b8a8be01e57b539902954', 'AGUS BUDI SAMPURNO, S.E.\r\n', '1969-02-14', 'Data dan Statistik', 'Informasi Publik', 'Statistisi Ahli Muda', '2021-12-31', '2027-03-01', ''),
('120', '19660801 199703 1 002\r\n', 'mulyono', '1a1d15542a9c65ca07d0f030ef003df290a89892', 'EDY MULYONO, S.H.\r\n', '1966-08-01', 'Informasi Publik\r\n', 'Pelaksana', 'Pengadministrasi Hukum\r\n', '2022-04-04', '2024-09-01', ''),
('121', '19661129 199602 1 001\r\n', 'heri', '5ff58be7589634dea4be243c8036b645441e8d2c', 'HERI DWI OETOJO, S.E.\r\n', '1966-11-29', 'Informasi Publik\r\n', 'Pelaksana', 'Pengadministrasi Umum\r\n\r\n', '2022-04-04', '2024-12-01', ''),
('122', '19690513 200801 1 013\r\n', 'fadil', '7ed9a996a08c55cfce4e8400fddb5ffc0176e391', 'FADIL\r\n', '1969-05-13', 'Sekertariat\r\n', 'Pelaksana', 'Pengemudi\r\n', '2018-01-01', '2027-06-01', ''),
('123', '19740325 199803 1 006\r\n', 'hup', '1e822857ae7dbc93e3b042fd74cca83a79a7a79a', 'MUCH HUFRON\r\n', '1974-03-25', 'Sekertariat\r\n', 'Pelaksana', 'Pengemudi\r\n', '2018-01-01', '2032-04-01', ''),
('124', '114 13061996 082022 6847\r\n\r\n', 'genta', 'e01721035c4856a59f5bcb368d87aef7de0529ae', 'GENTA MANDASTANA LAZUARDI\r\n', '1996-06-13', 'Infrastruktur TIK\r\n', 'PTT', 'Analis Hukum\r\n', NULL, NULL, ''),
('125', '114 24051987 012023 1619\r\n', 'vicky', 'e79cab55eab4c0a1a63610829a51fd51d5cfb294', 'VICKY MEIDI SAPUTRA, S.S.. M.M.\r\n', '1987-05-24', 'Informasi Publik\r\n', 'PTT', 'Penyusun Bahan Publikasi\r\n', NULL, NULL, ''),
('126', '114 04081985 012009 1524\r\n', 'audi', 'df44a1c6f830f3230610f6812231585f7b883859', 'AUDI LAKSMANA, S.I.Kom.\r\n', '1985-08-04', 'Informasi Publik\r\n', 'PTT', 'Penyusun Bahan Publikasi\r\n', NULL, NULL, ''),
('127', '114 12011996 082022 10151', 'yanu', '19e4cfe04a60a4f9fe3ba944a6fed16a9cfc59b3', 'YANU ARIF BUDIMAN\r\n', '1996-01-12', 'Informasi Publik\r\n', 'PTT', 'Penyusun Bahan Publikasi\r\n', NULL, NULL, ''),
('128', '114 19061984 012017 3835', 'heny', '935b76a077a715c277bd9bea9c961f16887137ce', 'HENY KUSUMANINGSIH, S.E.\r\n', '1984-06-19', 'Komunikasi Publik\r\n', 'PTT', 'Pengelola Data\r\n', NULL, NULL, ''),
('129', '114 16091975 012006 1505', 'pungky', 'd87cb860096974ced0b33c6a5a1eeacb858957ba', 'PUNGKY SETIAWAN, S.E.\r\n', '1975-09-16', 'Komunikasi Publik\r\n', 'PTT', 'Pengelola Data\r\n', NULL, NULL, ''),
('13', '19711009 199901 1 001', 'push', 'dc867c03d6f1f4385a2475b4be1137e585036dd1', 'DENDY EKA PUSPAWADI, S.Si.\r\n', '1971-10-09', 'Aplikasi Informatika\r\n', 'Informasi Publik', 'Pranata Komputer Ahli Muda\r\n', '2021-12-31', '2029-11-01', ''),
('130', '114 22031994 052018-9790', 'bri', '665aaf5238fc66e3d9171434c133856ad78892f6', 'BRILLIANTANA ANUGRAH, S.Kom., M.M.\r\n', '1994-03-22', 'Aplikasi Informatika\r\n', 'PTT', 'Pengelola Data\r\n', NULL, NULL, ''),
('131', '114 14091982 022021 1647', 'gundah', '1a0c00ea723bc4283022294c8488cfc9db1651e9', 'SEPTO GUNDAH PIJATMOKO, S.E.\r\n', '1982-09-14', 'Aplikasi Informatika\r\n', 'PTT', 'Pengelola Data\r\n', NULL, NULL, ''),
('132', '114 07071996 022021 1709', 'haqi', '9ab32d7bc56995edb93178387164a9e11f4df235', 'ANDIKA AMIRULHAQI, S.T.\r\n', '1996-07-07', 'Sekertariat\r\n', 'PTT', 'Pengelola Data\r\n', NULL, NULL, ''),
('133', '114 09071993 022021 1711', 'harrys', '32989ee956356414e22644545e32259b35f867d8', 'HARRY PUTERA PAMUNGKAS, S.S.\r\n', '1993-07-09', 'Komunikasi Publik\r\n', 'PTT', 'Pengelola Data\r\n', NULL, NULL, ''),
('134', '114 06041997 062021 3842\r\n', 'yudis', '6b1b56ebcb317e7146ed8d6f21b5895f6234615b', 'YUDHISTIRA IRAWAN, S.M.\r\n', '1997-04-06', 'Data dan Statistik\r\n', 'PTT', 'Pengelola Data\r\n', NULL, NULL, ''),
('135', '114 19071979 012009 1522\r\n', 'sukma', '67b43dac9182c9ef55d8ff8c5afa0fdddd75883b', 'SUKMA SUSILAWATI, S.Sos.\r\n', '1979-07-19', 'Sekertariat\r\n', 'PTT', 'Pengelola Kepegawaian\r\n', NULL, NULL, ''),
('136', '114 26041991 012023 3595', 'prakarsa', 'e03769c08075df76258228d28cebcf11066ae7b2', 'RIZKI PRAKASA, S.E., M.M.\r\n', '1991-04-26', 'Sekertariat\r\n', 'PTT', 'Pengelola Perpustakaan\r\n', NULL, NULL, ''),
('137', '114 22011969 012010 1525', 'anang', 'a4df9190139007b6170229b83b4be5fd50bebf8e', 'ANANG SETYAWAN, S.T.\r\n', '1969-01-22', 'Infrastruktur TIK\r\n', 'PTT', 'Pengelola Sistem dan Jaringan\r\n', NULL, NULL, ''),
('138', '114 10061993 072020 9001', 'robert', '12e9293ec6b30c7fa8a0926af42807e929c1684f', 'ROBERT SHARLY SUTOMO, S.Pd.\r\n', '1993-06-10', 'Infrastruktur TIK\r\n', 'PTT', 'Pengelola Sistem dan Jaringan\r\n', NULL, NULL, ''),
('139', '114 29101996 082022 6829', 'upi', '29143dcad2b014512f6db9b84be0b9aa6e6b8deb', 'LUTHFI ADITYA WARDANA\r\n', '1996-10-29', 'Infrastruktur TIK\r\n', 'PTT', 'Pengelola Sistem dan Jaringan\r\n', NULL, NULL, ''),
('14', '19740411 199803 1 004', 'tut', 'a8a3a35aeb9771bfa84d41982b070caefe4ca11c', 'PUTUT DARMAWAN, S.E., M.M.\r\n', '1974-04-11', 'Informasi Publik\r\n', 'Informasi Publik', 'Pranata Hubungan Masyarakat Ahli Muda\r\n', '2021-12-31', '2032-05-01', ''),
('140', '114 15041995 0220178591\r\n', 'devi', '825e522c6f25f4d5e79c97adb96bf4d84f8606c2', 'FARAH DEVI ISNANDA, S.ST.\r\n', '1995-04-15', 'Aplikasi Informatika\r\n ', 'PTT', 'Pengelola Sistem Informasi\r\n', NULL, NULL, ''),
('141', '114 01051991 072021 7099\r\n', 'widy', 'b57d8191db7bbb0bed26d5e45ef2fc8ac5a05295', 'WIDY DARMADI, S.SI.\r\n', '1991-05-01', 'Data dan Statistik\r\n', 'PTT', 'Pengelola Sistem Informasi\r\n', NULL, NULL, ''),
('142', '114 02081977 012009 1519', 'miati', 'f4940c95ff829d90ef34730717eeea2ca22d993a', 'SAMIATI, S.Sos.\r\n', '1977-08-02', 'Informasi Publik\r\n', 'PTT', 'Pengolah Data\r\n', NULL, NULL, ''),
('143', '114 06031968 012009 1518', 'parno', '2dd4627b7c98b3160cd266f38ce1a85f9114fee6', 'SUPARNO, S.S.\r\n', '1968-03-06', 'Komunikasi Publik\r\n', 'PTT', 'Pengolah Data\r\n', NULL, NULL, ''),
('144', '114 27051980 012009 1512\r\n', 'epep', '46025590d55a354d63e309502399f447b2d5a92a', 'ARIS EFFENDI, S.Sos.\r\n', '1980-05-27', 'Informasi Publik\r\n', 'PTT', 'Pengolah Data\r\n\r\n', NULL, NULL, ''),
('145', '114 23041991 042022 5075', 'wah', 'f0ee914c2c67cd0ed18cb92eb915fe4a2a6b4e01', 'WAHYU AMRULLOH, S.Pd.', '1991-04-23', 'Informasi Publik\r\n', 'PTT', 'Fotografer \r\n', NULL, NULL, ''),
('146', '114 12121986 012014 1528', 'panca', '2f03e6b3c7f41742accb4d144997287047a79716', 'DESI PANCA INDRA\r\n', '1986-12-12', 'Informasi Publik\r\n', 'PTT', 'Jurnalis\r\n', NULL, NULL, ''),
('147', '114 21051973 012009 1523', 'hamad', '9591c7f1ee3503428d8dadc65340d5e94580e21d', 'MUHAMMAD, S.S.\r\n', '1973-05-21', 'Informasi Publik\r\n', 'PTT', 'Jurnalis\r\n', NULL, NULL, ''),
('148', '114 12111969 012009 1516', 'gatot', '763b834177180d01a0e99b3ef7dc9616647fae39', 'GATOT DWI SASONGKO, S.E.\r\n', '1969-11-12', 'Informasi Publik\r\n', 'PTT', 'Jurnalis\r\n', NULL, NULL, ''),
('149', '114 08031984 012009 1514', 'rijal', '240e88b1ee9152e49a1bcb4649c43e79054fc872', 'MUHAMAD KHOIRUL RIJAL, S.Sos. M.Sosio.\r\n', '1984-03-08', 'Informasi Publik\r\n', 'PTT', 'Jurnalis\r\n', NULL, NULL, ''),
('15', '19770517 200901 1 005', 'wayan', 'be9d7a1d2a85db9b6bd89eca1db0d6716e05c23c', 'I WAYAN RUDY ARTHA, S.Kom.\r\n', '1977-05-17', 'Aplikasi Informatika\r\n', 'Informasi Publik', 'Pranata Komputer Ahli Muda\r\n', '2021-12-31', '2035-06-01', ''),
('150', '114 30071994 082022 6830', 'vivin', '5bd37024077cc378604695ee21c6e885cdd14d29', 'VIVIN MUJANAH\r\n', '1994-07-30', 'Informasi Publik\r\n', 'PTT', 'Jurnalis\r\n', NULL, NULL, ''),
('151', '114 03072002 042022-5943', 'rafli', '08a26cdfe3da3d85dc142fa651306524845634f3', 'RAFLI MUSERE\r\n', '2002-07-03', 'Informasi Publik\r\n', 'PTT', 'Jurnalis\r\n', NULL, NULL, ''),
('152', '114 05011980 012009 1511', 'sos', '2a816d1b9d8ce72a2468d163d6231af62cedcc19', 'ACHMAD MUHADJIR, S.Sos.\r\n', '1980-01-05', 'Informasi Publik\r\n', 'PTT', 'Reporter\r\n', NULL, NULL, ''),
('153', '114 06051981 012009 1510', 'ada', 'e4ea294c062c525643df036a35ca579b905fa400', 'SITI SAADAH, S.Sos.\r\n', '1981-05-06', 'Informasi Publik\r\n', 'PTT', 'Reporter\r\n', NULL, NULL, ''),
('154', '114 06081997 092022 8947', 'syahnia', '09652496d835f8876ba562886c8c8f18a6488d34', 'SYAHNIA ALIFIYANDINI\r\n', '1997-08-06', 'Informasi Publik\r\n', 'PTT', 'Reporter\r\n', NULL, NULL, ''),
('155', '114 29091991 082022 6820', 'nico', 'd659c10e27d52b00987b65e85d99bce5480adcae', 'NICO PRATOMO\r\n', '1991-09-29', 'Sekertariat\r\n', 'PTT', 'Teknisi Listrik\r\n', NULL, NULL, ''),
('156', '114 09121992 082022 10071', 'ardi', '0bd9da89839528b632e08f7a833c30a77f1480f4', 'ANUGRAH ARDIANSYAH\r\n', '1992-12-09', 'Sekertariat', 'PTT', 'Teknisi Mesin\r\n', NULL, NULL, ''),
('157', '114 11051974 012008 1508', 'waluyo', 'a7d0c7265884574f044e836dcf783135966d62a3', 'WALUYO HERASIA\r\n', '1974-05-11', 'Sekertariat\r\n', 'PTT', 'Teknisi Peralatan, Listrik dan Elektronika\r\n', NULL, NULL, ''),
('158', '114 23111988 062022 2459', 'alyan', '5b6ebc75fff384ce94f8d5dbe9bc9b5b71460a69', 'MUHAMMAD ALYAN MAULANA\r\n', '1988-11-23', 'Infrastruktur TIK\r\n', 'PTT', 'Pengadministrasi Umum\r\n', NULL, NULL, ''),
('159', '114 01021998 042022 3745', 'veb', '06288ec1c022db329811c31f2fae1c1b4b98f366', 'VEBRINA ARI SANTI, S.H.\r\n', '1998-02-01', 'Sekertariat\r\n', 'PTT', 'Pengadministrasi Keuangan\r\n', NULL, NULL, ''),
('16', '19821016 201101 1 005', 'gugi', '6f3085d40fca4ecebeae7f3bdc8df1118987e973', 'GUGI ALIFRIANTO WICAKSONO, S.T., M.M.\r\n', '1982-10-16', 'Infrastruktur TIK\r\n', 'Informasi Publik', 'Pranata Komputer Ahli Muda\r\n', '2022-10-01', '2040-11-01', ''),
('160', '114 24111994 012017 3847', 'zazuli', 'bcf9be90aacbe5e7f76b20641e401cdc1c38832e', 'MUHAMMAD ZAZULI YUSUF, S.H.\r\n', '1994-11-24', 'Infrastruktur TIK\r\n', 'PTT', 'Pengadministrasi Umum\r\n', NULL, NULL, ''),
('161', '114 02091966 012017 3844', 'sarwandi', 'f8173c82248f78f681d077f7f764f30c9b952cc1', 'SARWANDI\r\n', '1966-09-02', 'Sekertariat\r\n', 'PTT', 'Pengadministrasi Umum\r\n', NULL, NULL, ''),
('162', '114 24121980 012017 3843\r\n', 'imam', '8fff655f27d1bd5cf26e653d823fc13def457000', 'IMAM SUPII\r\n', '1980-12-24', 'Sekertariat\r\n\r\n', 'PTT', 'Pengadministrasi Umum\r\n', NULL, NULL, ''),
('163', '114 01041984 012017 3841', 'rip', 'ab8e595618bc5f23916675978911ffae75f50e81', 'ARIP YUDIANTO\r\n', '1984-04-01', 'Sekertariat\r\n', 'PTT', 'Pengadministrasi Umum\r\n', NULL, NULL, ''),
('164', '114 08081988 012017 3840', 'maryono', '6f78910a0d5aac530d822d007a725c52c65f996d', 'AGUS MARYONO\r\n', '1988-08-08', 'Sekertariat\r\n', 'PTT', 'Pengadministrasi Umum\r\n', NULL, NULL, ''),
('165', '114 30091970 012017 3839', 'hari', '46ebaaa2b80c7a3459b80353e085aaeed5aff2ff', 'HARI BUDIMAN\r\n', '1970-09-30', 'Komunikasi Publik\r\n', 'PTT', 'Pengadministrasi Umum\r\n', NULL, NULL, ''),
('166', '114 19041988 012017 3838', 'runa', 'be7e10f6dff6bc0e03236ed22e76604329b14d8e', 'RUNA FERRI SANJAYA\r\n', '1988-04-19', 'Sekertariat\r\n', 'PTT', 'Pengadministrasi Umum\r\n', NULL, NULL, ''),
('167', '114 11031988 012017 3836', 'nur', '2216b5374d8580c2617ded023d58277bc1c5c686', 'NUR CHOTIMAH, S.M.\r\n', '1988-03-11', 'Sekertariat\r\n', 'PTT', 'Pengadministrasi Umum\r\n', NULL, NULL, ''),
('168', '114 29071981 012023 1628\r\n', 'riyad', '97f580dc129236a36c107d91ecb076b110faf876', 'ARIF RIYADI, S.E.\r\n', '1981-07-29', 'Sekertariat\r\n', 'PTT', 'Pengadministrasi Umum\r\n', NULL, NULL, ''),
('169', '114 24041978 012010 1526', 'sukardi', '2995e09e37ceb865552c3c5566c6e233f19cc953', 'SUKARDI\r\n', '1978-04-24', 'Data dan Statistik\r\n', 'PTT', 'Pengadministrasi Umum\r\n', NULL, NULL, ''),
('17', '19851127 201001 1 008', 'pian', '46f633f0ed814924836a707244d93bb1d7576f86', 'NOFIAN ADI PRASETYAWAN, S.Kom., M.T.\r\n', '1985-11-27', 'Infrastruktur TIK\r\n', 'Informasi Publik', 'Pranata Komputer Ahli Muda\r\n', '2022-10-01', '2043-12-01', ''),
('170', '114 24041980 012009 1521', 'rahmad', 'ce038dc6db37ff42d9e53977d8c009181ab4baeb', 'RAHMAD HARTONO, S.Pd.\r\n', '1980-04-24', 'Sekertariat\r\n', 'PTT', 'Pengadministrasi Umum\r\n', NULL, NULL, ''),
('171', '114 25091978 012009 1520', 'tari', 'cb6da159a6e452b4dfcf04b1d77fa4189cbe55be', 'SRI LESTARI, S.Kom.\r\n', '1978-09-25', 'Sekertariat\r\n', 'PTT', 'Pengadministrasi Umum\r\n', NULL, NULL, ''),
('172', '114 14101971 012009 1517', 'fat', '5b5fb1c9d70308c44b6bf579a82122981bd37a7c', 'SITI FATONAH\r\n', '1971-10-14', 'Sekertariat', 'PTT', 'Pengadministrasi Umum\r\n', NULL, NULL, ''),
('173', '114 06121980 012009 1515\r\n', 'renny', 'a15aa4edd6d05575cb12eb9f031b9622d5f3fdd4', 'RENNY LESTANI SUSANTY, S.I.Kom.\r\n', '1980-12-06', 'Data dan Statistik\r\n', 'PTT', 'Pengadministrasi Umum\r\n', NULL, NULL, ''),
('174', '114 23051971 062005 1503', 'priyo', '4b4a49f495f8786a21f06b0f0726b6c102e08783', 'PRIYO JATMIKO\r\n', '1971-05-23', 'Sekertariat\r\n', 'PTT', 'Pengadministrasi Umum\r\n', NULL, NULL, ''),
('175', '114 17011978 102005 1502', 'toyo', '061dc12dc25d1085afeeebb75fc34fd822971ef1', 'IMAM SUHARTOYO\r\n', '1978-01-17', 'Sekertariat\r\n', 'PTT', 'Pengadministrasi Umum\r\n', NULL, NULL, ''),
('176', '114 08011990 102016 8100', 'angela', 'abae854dceb7a01ab186d14e8e024480e917af31', 'ANGELA ANGGI RANASTIANIS, S.Kom.\r\n', '1990-01-08', 'Komunikasi Publik\r\n', 'PTT', 'Pengadministrasi Umum\r\n', NULL, NULL, ''),
('177', '114 25111990 042019 5369', 'hera', 'bd368af9d37eaaa411b60a7af02fc1176a33d8ad', 'HERA FIRDHAUSA KATILI, S.T.\r\n', '1990-11-25', 'Data dan Statistik\r\n', 'PTT', 'Pengadministrasi Umum\r\n', NULL, NULL, ''),
('178', '114 20121996 042022 10017', 'anas', '47a411d3c5e0a8fe7e9bda609c5dc5f162443f97', 'ANASTASYA ANINDITA, S.M.\r\n', '1996-12-20', 'Aplikasi Informatika\r\n', 'PTT', 'Pengadministrasi Umum\r\n', NULL, NULL, ''),
('179', '114 04051988 062022 0840', 'meidi', '127db4936207678a6f27faa9db51002a6af91cfa', 'MEIDIYANTO PRASASTIYONO\r\n', '1988-05-04', 'Aplikasi Informatika\r\n', 'PTT', 'Pengadministrasi Umum\r\n', NULL, NULL, ''),
('18', '19871029 201101 1 007\r\n', 'eko', '4c25daf72606acd7f827a2c9272f39f57c1d280b', 'EKO SETIAWAN, S.I.Kom., M.Med.Kom.\r\n', '1987-10-29', 'Komunikasi Publik\r\n', 'Informasi Publik', 'Pranata Hubungan Masyarakat Ahli Muda\r\n', '2021-10-01', '2045-11-01', ''),
('180', '114 17041989 062022 0859', 'mahfut', '5fba6336c69381c4c3db0fece125c178db80203c', 'MAHFUD TRI UTOMO\r\n', '1989-04-17', 'Informasi Publik\r\n', 'PTT', 'Pengadministrasi Umum\r\n', NULL, NULL, ''),
('181', '114 10121995 062022 1328\r\n', 'almira', 'cf391912223f961e8ab5ca256da6de0ed33aeda8', 'ALMIRA DITA\r\n', '1995-12-10', 'Data dan Statistik\r\n', 'PTT', 'Pengadministrasi Umum\r\n', NULL, NULL, ''),
('182', '114 15041995 022017 8591', 'farah', 'fb8f28b6cd384c470128f4c9fdb741a9ed31f736', 'FARAH FATHATI NURIYANA\r\n', '1995-04-15', 'Komunikasi Publik\r\n', 'PTT', 'Pengadministrasi Umum\r\n', NULL, NULL, ''),
('183', '114 08121986 092022 8774', 'dody', 'faefb08ea64f0196b5de83868b04411595fbe821', 'DODY CAHYANTO PUTRO, S.E.\r\n', '1986-12-08', 'Infrastruktur TIK\r\n', 'PTT', 'Pengadministrasi Umum\r\n', NULL, NULL, ''),
('184', '114 22101996 092022 8962', 'ret', '41217c2fc772d8c5c8a6f934d6283bb8829e882b', 'RETNO WULANDARI\r\n', '1996-10-22', 'Informasi Publik\r\n', 'PTT', 'Pengadministrasi Umum\r\n', NULL, NULL, ''),
('19', '19920201 201206 2 002\r\n', 'ven', '20b11ca780f6ee17ca9759f6876bb1366bfe99dc', 'VENUS VEBRYANA, S.STP.\r\n', '1992-02-01', 'Sekretariat\r\n', 'Fungsional Subkor', 'Perencana Ahli Muda\r\n', '2021-12-31', '2050-03-01', ''),
('2', '19690929 199703 2 005', 'edi', 'ba69057124cba366e4cd0873d0bf607a328010ba', 'EDI SUPAJI, S.H., M.M.\r\n', '1967-09-29', 'Sekretariat\r\n', 'Struktural', 'Sekretaris\r\n', '2022-01-03', '2025-06-01', ''),
('20', '19661117 199011 2 001\r\n', 'sop', 'f3ea74d906fa9fe97c1fef6bad9cb871485c7045', 'SOFIA KURNIAWATI, S.E., M.Si.\r\n', '1966-11-17', 'Komunikasi Publik\r\n', 'Fungsional Subkor', 'Pranata Hubungan Masyarakat Ahli Muda\r\n', '2021-12-31', '2024-01-12', ''),
('21', '19670620 199403 2 007\r\n', 'sit', 'abdcde66d68bf5da210f684db67c663b24a82a9c', 'Dra. SITI PURWATININGSIH, M.M.\r\n', '1967-06-20', 'Komunikasi Publik\r\n', 'Fungsional Subkor', 'Pranata Hubungan Masyarakat Ahli Muda\r\n', '2021-12-31', '2025-07-01', ''),
('22', '19680722 199003 1 006\r\n\r\n', 'gung', 'ed4961d671eb2d2ceb759516e48f61a6f32b9d8e', 'Drs. AGUNG SRIONO, S.H., M.M.\r\n', '1968-07-22', 'Informasi Publik\r\n', 'Fungsional Subkor', 'Pranata Hubungan Masyarakat Ahli Muda\r\n', '2021-12-31', '2026-08-01', ''),
('23', '19691211 198911 1 002\r\n', 'sat', 'c55de0f5998ef09db9875977de56d43f66e2a205', 'Drs SATRIYO WAHYUDI, M.Si.\r\n', '1969-12-11', 'Data dan Statistik\r\n', 'Fungsional Subkor', 'Statistisi Ahli Muda\r\n', '2021-12-31', '2028-01-01', ''),
('24', '19720126 199803 1 007\r\n', 'kasim', 'd088fa150f1bbfa3f366e0a8bd61aa3174be91ce', 'IDHAM ASHARI KASIM PUTRA, S.T., M.M.\r\n', '1972-01-26', 'Data dan Statistik\r\n', 'Fungsional Subkor', 'Statistisi Ahli Muda\r\n', '2021-12-31', '2030-02-01', ''),
('25', '19750304 200112 2 006\r\n', 'rina', '70e21878d268fa8f82817f9278f8bae0fb108950', 'LENNY MARTARINA, S.E., M.M., Ak., CA.\r\n', '1975-03-04', 'Informasi Publik\r\n', 'Fungsional Subkor', 'Pranata Hubungan Masyarakat Ahli Muda\r\n', '2021-12-31', '2033-04-01', ''),
('26', '19800114 201001 2 006\r\n', 'ayu', 'b947eeb0fcd641c87b7d90e28d159cb1a0cf84de', 'AYU SAULINA ERNALITA, S.S., MM.\r\n', '1980-01-14', 'Informasi Publik\r\n', 'Fungsional ', 'Pranata Hubungan Masyarakat Ahli Muda\r\n', '2014-04-01', '2038-02-01', ''),
('27', '19850925 200902 1 001\r\n', 'dwi', '3da5fc0bfdbf2b0e1ba2b171771be854749d9453', 'DWI SUSILA WIJAYA, S.Sos, M.KP\r\n', '1985-09-25', 'Informasi Publik\r\n', 'Fungsional', 'Pranata Hubungan Masyarakat Ahli Muda\r\n', '2019-09-25', '2043-10-01', ''),
('28', '19770626 201001 2 005\r\n', 'no', 'fd1286353570c5703799ba76999323b7c7447b06', 'RETNO YUNI WIDAYANINGSIH, S.T., M.Med.Kom', '1977-06-26', 'Aplikasi Informatika\r\n', 'Fungsional', 'Pranata Hubungan Masyarakat Ahli Muda\r\n', '2020-11-09', '2035-07-01', ''),
('29', '19820213 201101 1 010\r\n', 'woy', '35fa54da02afd861770b736261443e5384e4999a', 'TUGIRIN, S.E.\r\n', '1982-02-13', 'Sekretariat\r\n', 'Fungsional', 'Analis Kebijakan Ahli Muda\r\n', '2021-12-31', '2040-03-01', ''),
('3', '19650305 198903 2 011', 'patriana', '5f39f5254d7d68a1b501f1650a03546038273ef8', 'Dra. PATRIANA DYAH SETYOWATI, M.Si.\r\n', '1965-03-05', 'Infrastruktur TIK\r\n', 'Struktural', 'Kepala Bidang Infrastruktur TIK\r\n', '2022-01-03', '2023-04-01', ''),
('30', '19820901 201101 1 004\r\n', 'pik', 'eeb954ecf4c7c219ce79ef4fca6790c799fbcb5c', 'TAUFIK MAULANA, S.Sos., M.AP.\r\n', '1982-09-01', 'Informasi Publik\r\n', 'Fungsional ', 'Pranata Hubungan Masyarakat Ahli Muda\r\n', '2020-11-09', '2042-10-01', ''),
('31', '19851102 201001 2 023\r\n', 'amal', '7a671c37cb54c6697b951e2d1519f2d53de2e78f', 'RIA AMALIA, S.Sos.\r\n', '1985-11-02', 'Informasi Publik\r\n', 'Fungsional', 'Pranata Hubungan Masyarakat Ahli Muda\r\n', '2018-08-16', '2043-12-01', ''),
('32', '19781111 201012 1 001\r\n', 'ali', 'b42a6d93d796915222f6ffb2ffdd6137d93c1cdb', 'ALI FIRMAN HERLAMBANG, S.T.\r\n', '1978-11-11', 'Sekretariat\r\n', 'Fungsional ', 'Pranata Komputer Ahli Pertama\r\n', '2018-04-12', '2036-12-01', ''),
('33', '19830413 200903 2 007\r\n\r\n', 'rar', '2c7b05ed1488c7110901626c2c56645675e22767', 'RADEN RORO RENITA INDRI KUSUMA DEWI, S.T.\r\n', '1983-04-13', 'Sekretariat\r\n', 'Fungsional', 'Pranata Komputer Ahli Pertama\r\n', '2018-04-12', '2041-05-01', ''),
('34', '19850120 201001 2 016\r\n', 'sis', '51a3d642c59e957126c8c9975e756dadd0226d4c', 'SISCA AGUSTIA PUTRI, S.Sos.\r\n', '1985-01-20', 'Komunikasi Publik', 'Fungsional', 'Pranata Hubungan Masyarakat Ahli Pertama\r\n', '2019-03-01', '2043-02-01', ''),
('35', '19830331 201001 2 009\r\n', 'wulan', 'bf84558f2b3ab31a3868594e8d06bd6f78b95440', 'ANA ERISTIA WULANDARI, S.Kom.\r\n', '1983-03-31', 'Sekretariat\r\n', 'Fungsional ', 'Pranata Komputer Ahli Pertama\r\n', '2015-11-20', '2043-04-01', ''),
('36', '19890618 201403 1 002\r\n', 'adi', 'b3e8ff7ac1c7e75661e16152a5dce1ff36a3e140', 'ADI KURNIAWAN, S.Kom., M.Kom.\r\n', '1989-06-18', 'Aplikasi Informatika\r\n', 'Fungsional', 'Sandiman Ahli Pertama\r\n', '2018-12-31', '2047-07-01', ''),
('37', '19781126 200901 2 002\r\n', 'hai', '8d813378c294d9c43ea7cbe34e05c65cfa43b630', 'HALIDA NUR AINUN, S.Si.\r\n', '1978-11-26', 'Data dan Statistik\r\n', 'Fungsional ', 'Statistisi Ahli Pertama\r\n', '2021-01-01', '2036-12-01', ''),
('38', '19840623 201903 1 006\r\n', 'iq', 'a07d6616d8e8326ac64e19673bb9dc92e36a2012', 'TAUFIQ RAMADHANY, S.T.\r\n', '1984-06-23', 'Aplikasi Informatika\r\n', 'Fungsional', 'Manggala Informatika Ahli Pertama\r\n', '2022-03-16', '2042-07-01', ''),
('39', '19860306 201903 1 005\r\n', 'ivo', 'cf37f587706e192c1741adbf805403a5d73ea074', 'MARTIN IVO HARDINOTO, S.ST.\r\n', '1986-03-06', 'Aplikasi Informatika\r\n', 'Fungsional', 'Pranata Komputer Ahli Pertama\r\n', '2021-06-18', '2044-04-01', ''),
('4', '19650909 199403 2 006\r\n', 'nirmala', '96876ef57d3ed215720c9001c43e6e61a00a1472', 'Dra. Ec NIRMALA DEWI, M.M.\r\n', '1965-09-09', 'Data dan Statistik\r\n', 'Struktural', 'Kepala Bidang Data dan statistik\r\n', '2022-10-05', '2023-10-01', ''),
('40', '19880721 201903 1 002\r\n', 'makaryo', '1391e080708541f477d1ba08a936e7088e1118eb', 'RADEN MAKARYO NUGRAHADI, S.Kom., M.MT.\r\n', '1988-07-21', 'Aplikasi Informatika\r\n', 'Fungsional ', 'Manggala Informatika Ahli Pertama\r\n', '2022-03-16', '2046-08-01', ''),
('41', '19960128 201903 1 003\r\n', 'him', '330317bbc57fe33d9b3505994863adb733da347d', 'IBRAHIM YUNUS MUHAMMAD FIQHAN, S.Kom.\r\n', '1996-01-28', 'Aplikasi Informatika\r\n', 'Fungsional ', 'Pranata Komputer Ahli Pertama\r\n', '2021-06-18', '2054-02-01', ''),
('42', '19970203 202012 2 017\r\n', 'tus', 'bcadbdf5ceb10af6d05e8d83c5984e221dbe32dc', 'LAILATUS SYARIFAH, S.Stat.\r\n', '1997-02-03', 'Data dan Statistik\r\n', 'Fungsional', 'Statistisi Ahli Pertama\r\n', '2021-02-01', '2055-03-01', ''),
('43', '19770714 202221 1 001\r\n', 'dili', 'accd3a355381e8f531b383aa020ab0b20f391bc3', 'DILI ISTIMORA EYATO, S.Sos.\r\n', '1977-07-14', 'Komunikasi Publik\r\n', 'PPPK', 'Pranata Hubungan Masyarakat Ahli Pertama\r\n', '2022-04-01', '2035-08-01', ''),
('44', '19810727 202221 2 001\r\n', 'fit', '9c20b9ba55a293ba051d5b5d90b9f0d26026f5b9', 'FITRIA MAHARANI, S.Sos.\r\n', '1981-07-27', 'Komunikasi Publik\r\n', 'PPPK', 'Pranata Hubungan Masyarakat Ahli Pertama\r\n', '2022-04-01', '2039-08-01', ''),
('45', '19850619 202221 1 001\r\n', 'akbar', '3e91e506e7b4e4960328504e54a738e1da1a94cf', 'MUCHAMMAD AFRIZAL AKBAR , S.I.Kom.\r\n', '1985-06-19', 'Informasi Publik\r\n', 'PPPK', 'Pranata Hubungan Masyarakat Ahli Pertama\r\n', '2022-04-01', '2043-07-01', ''),
('46', '19850912 202221 2 001\r\n', 'lip', '7d72878c2a31d4501c9a2aee9630ba785b82c18d', 'ANNISA ALIEF RAHMANIAR , S.Sos.\r\n', '1985-09-12', 'Komunikasi Publik\r\n', 'PPPK', 'Pranata Hubungan Masyarakat Ahli Pertama\r\n\r\n', '2022-04-01', '2043-10-01', ''),
('47', '19920224 202221 2 004\r\n', 'istiq', 'ec534087e6c440cea194e52a58f4feda0c24cee4', 'ISTIQLALIAH DIAN CAHYANI , S.I.Kom.\r\n', '1992-02-24', 'Informasi Publik\r\n', 'PPPK', 'Pranata Hubungan Masyarakat Ahli Pertama\r\n', '2022-04-01', '2050-03-01', ''),
('48', '19930228 202221 1 001\r\n', 'pron', '2c9b7a30aae792f11670648e9a6f21f7351131eb', 'GHUFRON SHODIQ , S.I.Kom.\r\n', '1993-02-28', 'Informasi Publik\r\n', 'PPPK', 'Pranata Hubungan Masyarakat Ahli Pertama\r\n', '2022-04-01', '2051-03-01', ''),
('49', '19820829 200604 1 005\r\n', 'awan', 'd281ff4023a206ac6432ea492ba5df4b8cfb5c90', 'ANDI BAGUS SETIAWAN, A.Md.\r\n', '1982-08-29', 'Informasi Publik\r\n', 'Fungsional', 'Pranata Hubungan Masyarakat Keterampilan Mahir\r\n', '2020-10-01', '2040-09-01', ''),
('5', '19730506 199802 1 001', 'asyari', 'b730c62503a079aa41241078f566c0362c69b93c', 'ASSYARI, S.Pd., M.Pd.\r\n', '1973-05-06', 'Komunikasi Publik', 'Struktural', 'Kepala Bidang Komunikasi Publik\r\n', '2022-01-03', '2031-06-01', ''),
('50', '19840812 201001 1 010\r\n', 'al', '2f9ee2b336682012cb445da6f3a0a52c68caf471', 'HARUN AL ROSYID, S.T., M.T.\r\n', '1984-08-12', 'Data dan Statistik\r\n', 'Fungsional ', 'Pengendali Frekuensi Radio\r\n', '2016-02-25', '2042-09-01', ''),
('51', '19910419 202204 1 001\r\n', 'pra', 'f3e41b35b5347dcb333523bdc90e96aeef96d538', 'DHIAN GALANG PRADANA, S.Kom.\r\n', '1991-04-19', 'Aplikasi Informatika\r\n', 'Fungsional', 'Pranata Komputer\r\n', '2022-04-01', '2049-05-01', ''),
('52', '19941026 202204 1 001\r\n', 'bahy', 'a22ac218e9a7a361a9e03911a8e289541429b4ac', 'HILMY BAHY HAKIM, S.Kom.\r\n', '1994-10-26', 'Aplikasi Informatika\r\n', 'Fungsional ', 'Sandiman\r\n', '2022-04-01', '2052-11-01', ''),
('53', '19921217 202204 1 001\r\n', 'ari', '7158a9e0f8e84a0a74ed148e0f652dfbd4913a18', 'DEVI ARI LUTFIANTO, S.Kom.\r\n', '1992-12-17', 'Aplikasi Informatika\r\n', 'Fungsional ', 'Sandiman\r\n', '2022-04-01', '2053-01-01', ''),
('54', '19780420 201001 1 002\r\n', 'eri', '22be77c0cadb4da6085e45c68e23e88f7a6f8ea3', 'FERI HADIJAYA\r\n', '1978-04-20', 'Sekretariat\r\n', 'Pelaksana', 'Penyusun Rencana Kegiatan dan Anggaran\r\n', '2020-06-03', '2036-05-01', ''),
('55', '19650809 199103 2 008\r\n', 'tik', '3bd41d4732f09ccb6b195dc04ff1db1d84f847d5', 'Dra. TATIK AGUSTINA\r\n', '1965-08-09', 'Sekretariat\r\n', 'Pelaksana', 'Bendahara\r\n', '2022-04-04', '2023-09-01', ''),
('56', '19670920 199203 1 015\r\n', 'rul', 'dd7eece166fca210b068ecc7f125c044f220a169', 'CHOIRUL ANWAR, S.E.\r\n', '1967-09-20', 'Informasi Publik\r\n', 'Pelaksana', 'Penyusun Bahan Informasi dan Publikasi\r\n', '2023-01-02', '2025-10-01', ''),
('57', '19680909 198903 2 006\r\n', 'non', '37031f99ac78580c9f82e04fa237d295ea10ca41', 'UNON SEPTI PRATIWI WIWOHO, S.H.\r\n', '1968-09-09', 'Informasi Publik\r\n', 'Pelaksana', 'Penyusun Bahan Informasi dan Publikasi\r\n', '2023-01-02', '2026-10-01', ''),
('58', '19711111 199402 2 002\r\n', 'susi', 'b2c9f691be99ef8b4371cdc82725179378117e95', 'SUSIATI, S.E.\r\n', '1971-11-11', 'Sekretariat\r\n', 'Pelaksana', 'Bendahara\r\n', '2023-01-02', '2029-12-01', ''),
('59', '19781020 201001 2 003\r\n', 'ida', '7317d52c532799ddea1df342c1a159c05deb925d', 'IDA PRIHATIN SOEGITO PUTRA, S.Pd., M.M.\r\n', '1978-10-20', 'Sekretariat\r\n', 'Pelaksana', 'Penyusun Program Anggaran dan Pelaporan\r\n', '2020-01-03', '2036-11-01', ''),
('6', '19721031 200604 1 005', 'chusni', 'a1bce2297cfc2ee8ceac2366bb22112e182c5938', 'ACHMAD FADLIL CHUSNI, S.Kom., M.MT.\r\n', '1972-10-31', 'Aplikasi Informatika', 'Struktural', 'Kepala Bidang Aplikasi Informatika\r\n', '2022-01-03', '2030-11-01', ''),
('60', '19820810 201001 2 020\r\n', 'gus', '22b4468ae6dcf46c36c9622e292c7a3506bb0db4', 'RENI AGUSTIN, S.H.\r\n', '1982-08-10', 'Sekretariat\r\n', 'Pelaksana', 'Penyusun Program Anggaran dan Pelaporan\r\n', '2019-01-02', '2040-09-01', ''),
('61', '19671113 200701 1 023\r\n', 'cip', '2748916407ec3fbbeebbbbefd0d33ffb41bf1ce1', 'SUCIPTO, S.Kom.\r\n', '1967-11-13', 'Data dan Statistik\r\n', 'Pelaksana', 'Analis Data dan Informasi\r\n', '2020-01-03', '2025-12-01', ''),
('62', '19710818 201412 1 001\r\n', 'har', '6d7c9f4ceb692b316ff4cf3e14bec3b40faaedb5', 'HARSANTO, S.T.\r\n', '1971-08-18', 'Aplikasi Informatika\r\n', 'Pelaksana', 'Analis Sistem Informasi\r\n', '2018-01-01', '2029-09-01', ''),
('63', '19740823 199803 2 005\r\n', 'wkwk', '0d0de34f2b52f8f2c28f9014e8a848e9dda8b3a6', 'ARY RETNO INDARWATI, S.E.\r\n', '1974-08-23', 'Sekretariat\r\n', 'Pelaksana', 'Penyusun laporan Keuangan\r\n', '2022-10-03', '2032-09-01', ''),
('64', '19790210 200312 2 006\r\n', 'wara', 'f5ad9d45c05a96057b00a80e678f7ecf7ddbdba3', 'DWI WARA UTARI, S.AP.\r\n', '1979-02-10', 'Sekretariat\r\n', 'Pelaksana', 'Penyusun Program Anggaran dan Pelaporan\r\n', '2018-01-01', '2037-03-01', ''),
('65', '19800319 201403 2 001\r\n', 'indri', '62cc2c51e363ccaeafac2c553168454d9e430c6d', 'INDRIYANTI TRI WULANDARI, S.E.\r\n', '1980-03-19', 'Sekretariat\r\n', 'Pelaksana', 'Bendahara\r\n', '2022-01-03', '2038-04-01', ''),
('66', '19830106 200902 1 002\r\n', 'haji', 'd9078c9bb2faa4a6b22f6971ed825b13ab4d1363', 'PRIMA AGUNG PRANGHAJI, S.I.Kom.\r\n', '1983-01-06', 'Sekretariat\r\n', 'Pelaksana', 'Penyusun Rencana Kegiatan dan Anggaran\r\n', '2020-06-03', '2041-02-01', ''),
('67', '19931031 201903 2 012\r\n', 'korina', '946a427cbc0107e539fd80ab3928086b05d5ce06', 'NURUL KHOIRINA, S.Kom.\r\n', '1993-10-31', 'Sekretariat\r\n', 'Pelaksana', 'Bendahara\r\n', '2020-11-01', '2051-11-01', ''),
('68', '19960627 201903 2 007\r\n', 'elisa', '03c3312a8a1d1cce622270979c12bf9452f7d65d', 'ELISA ERAWATI, S.Kom.\r\n', '1996-06-27', 'Sekretariat\r\n', 'Pelaksana', 'Bendahara\r\n', '2021-12-02', '2054-07-01', ''),
('69', '19930515 20201 2 2022\r\n', 'pita', '30ef03f5156b84eb176139be8aef8132afc1f28e', 'DENTY PUSPITA MEILANI, S.I.Kom.\r\n', '1993-05-15', 'Komunikasi Publik\r\n', 'Pelaksana', 'Analis Berita\r\n', '2021-02-01', '2058-01-01', ''),
('7', '19630607 198903 2 005', 'feliana', '7cd092b5c45aa0be2680f42e317ae39b0a86b492', 'FIELIANNA MACHDA, S.Sos., M.M.\r\n', '1963-06-07', 'Informasi Publik', 'Fungsional', 'Pranata Hubungan Masyarakat Ahli Madya\r\n', '2016-02-01', '2023-07-01', ''),
('70', '19921028 202012 2 016\r\n', 'asri', '1de9ccc737be36dedee040e05815d8fa5d9b21fc', 'DIAH ASRI SAFITRI, S.T.\r\n', '1992-10-28', 'Informasi Publik\r\n', 'Pelaksana', 'Perancang Grafis\r\n', '2021-02-01', '2058-01-01', ''),
('71', '19900210 201403 1 001\r\n', 'sedih', 'dac05939268fcae5513562558300c5ca7bdb48ae', 'FEBY KRISBIYANTORO, S.H.\r\n', '1990-02-10', 'Informasi Publik\r\n', 'Pelaksana', 'FEBY KRISBIYANTORO, S.H.\r\n', '2022-04-04', '2048-03-01', ''),
('72', '19650307 200701 1 018\r\n', 'didik', 'a1c362632d6ef4c6f5a159cb20a439a55ba977e0', 'DIDIK SUWARDI\r\n', '1965-03-07', 'Komunikasi Publik\r\n', 'Pelaksana', 'Pengolah Data\r\n', '2018-01-01', '2023-04-01', ''),
('73', '19660717 201001 1 003\r\n', 'agus', '0525885565bb6a150db63f19bf42f11bd2db4702', 'AGUS SUNARYO\r\n', '1966-07-17', 'Sekretariat\r\n', 'Pelaksana', 'Pengelola Pemanfaatan Barang Milik Daerah\r\n', '2018-01-01', '2024-08-01', ''),
('74', '19730218 201001 1 004\r\n', 'manto', '32f7d6fd39c3022501d8527cfc393f2650cc71b0', 'SUDARMANTO\r\n', '1973-02-18', 'Infrastruktur TIK\r\n', 'Pelaksana', 'Pengelola Data\r\n', '2019-01-02', '2031-03-01', ''),
('75', '19731020 200901 1 001\r\n', 'yuyu', '073937a918bed91357bf015b043511d6d7d98bb9', 'WAHYU PURWANTONO\r\n', '1985-11-27', 'Sekretariat\r\n', 'Pelaksana', 'Pengelola Kepegawaian\r\n', '2018-01-01', '2031-11-01', ''),
('76', '19761220 201001 1 002', 'pii', '150723190ae71ab5a0dd72b20043866ff6641f87', 'ROFI`I\r\n', '1976-12-20', 'Aplikasi Informatika\r\n', 'Pelaksana', 'Pengelola Data\r\n', '2019-01-02', '2035-01-01', ''),
('77', '19790609 200901 1 004\r\n', 'jat', 'f742c51efb1931bfb76cc328c8e1d9bd60965bcf', 'DJUNI WIDJATMIKO, S.H.\r\n', '1979-06-09', 'Informasi Publik\r\n', 'Pelaksana', 'Pengelola Data\r\n', '2021-01-03', '2037-07-01', ''),
('78', '19800215 201001 1 005\r\n', 'tahu', '8b18bee04600c7326c368851c1162913f034857b', 'SUWARNO TEHUAYO\r\n', '1980-02-15', 'Aplikasi Informatika\r\n', 'Pelaksana', 'Pengelola Data\r\n', '2019-01-02', '2038-03-01', ''),
('79', '19810922 200901 1 006\r\n', 'wiwoko', 'd034242b5f92228fa916427dd5248f383eee159a', 'YOGI WIWOKO ARDY\r\n', '1981-09-22', 'Data dan Statistik\r\n', 'Pelaksana', 'Pengelola Data\r\n', '2019-01-02', '2039-10-01', ''),
('8', '19670313 198903 1 008', 'amat', '09ed1b5765b8e1b1d10b9f0b373004f4aeabf977', 'AMAT MUSTA`IN, S.Sos.\r\n', '1967-03-13', 'Informasi Publik', 'Fungsional', 'Pranata Hubungan Masyarakat Ahli Madya\r\n', '2017-03-01', '2027-04-01', ''),
('80', '19820630 201001 1 006\r\n', 'ghupron', 'b18e273fdea017cdfa9d5124cb3f252a780348cf', 'MUHAMMAD GHUFRON\r\n', '1982-06-30', 'Infrastruktur TIK\r\n', 'Pelaksana', 'Pengelola Data\r\n', '2019-01-02', '2040-07-01', ''),
('81', '19840101 200801 1 014\r\n', 'supandi', 'd055d3a2fa50cd4c366fc6441279623891f5975a', 'AKHMAD SUPANDI\r\n', '1984-01-01', 'Infrastruktur TIK\r\n', 'Pelaksana', 'Pengelola Data\r\n', '2019-01-02', '2042-02-01', ''),
('82', '19910926 201503 1 005\r\n', 'tian', '7e4be739e23e6011d6f6e619ed8231c2e300f19f', 'SEPTIAN FAJAR ARIFIN, A.Md.\r\n', '1991-09-26', 'Sekretariat\r\n', 'Pelaksana', 'Pengelola Instalasi Air dan Listrik\r\n', '2022-10-03', '2049-10-01', ''),
('83', '19911117 201503 2 002\r\n', 'gigih', '7c0c045a86530669681d8a4285f9d84b3b107a1c', 'GIGIH REDANA PUTRY WAHANA, S.Kom.\r\n', '1991-11-17', 'Infrastruktur TIK\r\n', 'Pelaksana', 'Pengelola Data\r\n', '2018-01-01', '2049-12-01', ''),
('84', '19660630 201212 1 001\r\n', 'hamidun', '6d93fac370b6121f4a231392db2f1535b50e3d3c', 'HAMIDUN\r\n', '1966-06-30', 'Komunikasi Publik\r\n', 'Pelaksana', 'Pengelola Data\r\n', '2019-01-02', '2024-07-01', ''),
('85', '19701121 200701 1 013\r\n', 'sudi', '6a59193c6901b45c6dc761fd8a16058ba9818164', 'MARSUDI\r\n', '1970-11-21', 'Data dan Statistik\r\n', 'Pelaksana', 'Pengelola Data\r\n', '2019-01-02', '2028-12-01', ''),
('86', '19740714 200801 1 009\r\n', 'arif', 'bb6113797d13f9451665a7591e5943986f546dfa', 'ARIF SETIADJI\r\n', '1974-07-14', 'Data dan Statistik\r\n', 'Pelaksana', 'Pengelola Data\r\n', '2019-01-02', '2032-08-01', ''),
('87', '19950226 202204 1 001\r\n', 'eye', '79df4b1718127a8c81390d4196d6cbfc976105f0', 'ADI DWI CAHYONO, A.Md.Kom.\r\n', '1995-02-26', 'Infrastruktur TIK\r\n', 'Pelaksana', 'Pengelola Sistem dan Jaringan\r\n', '2022-04-01', '2053-03-01', ''),
('88', '19650710 198703 1 010\r\n', 'su', '363eb224f6ff8d3c5163a8805222acbf939a65b3', 'SUGENG \r\n', '1965-07-10', 'Informasi Publik\r\n', 'Pelaksana', 'Pengelola Data\r\n', '2023-01-02', '2023-08-01', ''),
('89', '19660630 199003 2 010\r\n', 'akri', 'c84a2f0cce4d9713c859ca1d71205f36731ae816', 'ERNA DIAH AKRIYANTI, S.Sos.\r\n', '1966-06-30', 'Sekretariat\r\n', 'Pelaksana', 'Pengelola Perpustakaan\r\n', '2022-04-04', '2024-07-01', ''),
('9', '19670518 199003 2 009\r\n\r\n', 'yanti', '731bfe22cdfa2ff3ac5a19d1c5cc90a8e1243aa5', 'YANTI DYAH HARSONO, S.Sos., M.Si.\r\n', '1967-05-18', 'Informasi Publik', 'Fungsional', 'Pranata Hubungan Masyarakat Ahli Madya\r\n', '2021-09-01', '2027-06-01', ''),
('90', '19670418 198903 1 007\r\n', 'lambang', '0cbe92d198e61c495efba8a441662b1c8b4697b9', 'HERLAMBANG PRIJOMBODO\r\n', '1967-04-18', 'Informasi Publik\r\n', 'Pelaksana', 'Pengelola Data\r\n', '2023-01-02', '2025-05-01', ''),
('91', '19690204 199202 1 001\r\n', 'usman', 'bb7f710444f5197af5b707e13ffb3694769dca66', 'USMAN, S.E.\r\n', '1969-02-04', 'Sekretariat\r\n', 'Pelaksana', 'Pengelola Keuangan\r\n', '2019-01-02', '2027-03-01', ''),
('92', '19701122 199903 2 004\r\n', 'titik', '9e0ecc453e177073c0c85a747f97412afacd5d51', 'TITIK SUSIATI, S.E.\r\n', '1970-11-22', 'Sekretariat\r\n', 'Pelaksana', 'Pengelola Gaji\r\n', '2018-01-01', '2028-12-01', ''),
('93', '19711228 200801 1 004\r\n', 'nanang', '100c9aea9fdef59da918237e1d3e19919f845857', 'NANANG EKO KUSWORO, S.T.\r\n', '1971-12-28', 'Infrastruktur TIK\r\n', 'Pelaksana', 'Pengelola Data\r\n', '2018-01-01', '2030-01-01', ''),
('94', '19721020 199403 1 008\r\n', 'yudi', '4a33aa96f303c8690d291da017790ea573086954', 'YUDI EFENDI, S.E.\r\n', '1972-10-20', 'Aplikasi Informatika\r\n', 'Pelaksana', 'Pengelola Data\r\n', '2019-01-02', '2030-11-01', ''),
('95', '19720530 199303 2 006\r\n', 'erni', '278748620970c1bd2a23b4b908aad79db9397ed0', 'ERNI WIDIARTI\r\n', '1972-05-30', 'Informasi Publik\r\n', 'Pelaksana', 'Pengelola Pengaduan Publik\r\n', '2023-01-02', '2032-06-01', ''),
('96', '19660101 198610 1 006\r\n', 'moh', 'd34fa1f8f0b1a76ae79daca432f5ad6c21b71e0c', 'MOCHAMAD SOEHARTONO\r\n', '1966-01-01', 'Aplikasi Informatika\r\n', 'Pelaksana', 'Pengelola Data\r\n', '2019-01-02', '2024-02-01', ''),
('97', '19660419 198907 2 001\r\n', 'ningsih', 'b9668d7961f24967067783b3148a8d067849a6a2', 'SOETJI NINGSIH\r\n', '1966-04-19', 'Komunikasi Publik\r\n', 'Pelaksana', 'Pengelola Data\r\n', '2018-01-01', '2024-05-01', ''),
('98', '19661112 198603 2 006\r\n', 'supriyati', 'fcc620ecf5a7c7cf21fa49dff5e97216581fa58b', 'TUTIK SUPRIYATI\r\n', '1966-11-12', 'Aplikasi Informatika\r\n', 'Pelaksana', 'Pengelola Data\r\n', '2019-01-02', '2024-12-01', ''),
('99', '19670404 200701 1 027\r\n', 'april', '8fa8a3c2de612bcb9cc7e6fa1fe71f54ac1b1c09', 'APRIL HARI SANTOSO, S.Sos\r\n', '1967-04-04', 'Aplikasi Informatika\r\n', 'Pelaksana', 'Pengelola Data\r\n', '2022-04-04', '2025-05-01', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_suratkeluar`
--

CREATE TABLE `tb_suratkeluar` (
  `id_suratkeluar` int(11) NOT NULL,
  `tanggalkeluar_suratkeluar` datetime NOT NULL,
  `kode_suratkeluar` varchar(10) NOT NULL,
  `nomor_suratkeluar` varchar(45) NOT NULL,
  `nama_bagian` varchar(70) NOT NULL,
  `tanggalsurat_suratkeluar` date NOT NULL,
  `kepada_suratkeluar` varchar(255) NOT NULL,
  `perihal_suratkeluar` text NOT NULL,
  `file_suratkeluar` varchar(255) NOT NULL,
  `operator` varchar(50) NOT NULL,
  `tanggal_entry` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `tb_suratkeluar`
--

INSERT INTO `tb_suratkeluar` (`id_suratkeluar`, `tanggalkeluar_suratkeluar`, `kode_suratkeluar`, `nomor_suratkeluar`, `nama_bagian`, `tanggalsurat_suratkeluar`, `kepada_suratkeluar`, `perihal_suratkeluar`, `file_suratkeluar`, `operator`, `tanggal_entry`) VALUES
(27, '2017-11-15 11:15:00', '411', '3451/WALIKOTA/2017', 'WALIKOTA', '2017-11-15', 'Masyarakat', 'Himbauan Gotong Royong', '2017-3451.pdf', 'admin', '2017-11-18 01:25:31'),
(29, '2017-11-15 08:20:00', '851', '3453/TU/2017', 'TU', '2017-11-15', 'Kepala Bagian Tata Usaha', 'Cuti Tahunan ', '2017-3453.pdf', 'admin', '2017-11-18 02:39:32'),
(30, '2017-11-14 13:25:00', '915.1', '3454/ADM.PEMB/2017', 'ADM.PEMB', '2017-11-15', 'Walikota', 'Daftar Usulan Proyek', '2017-3454.pdf', 'admin', '2017-11-14 23:29:41'),
(31, '2017-11-17 08:30:00', '125.4', '3455/PEM-OTDA/2017', 'PEM-OTDA', '2017-11-16', 'Camat Samarida Seberang', 'Pemekaran Wilayah', '2017-3455.pdf', 'admin', '2017-11-16 02:30:02'),
(35, '2017-11-17 08:30:00', '821.1', '3452/TU/2017', 'TU', '2017-11-16', 'Kepala Bagian Lingkup Pemkot Samarinda', 'Pengangkatan Jabatan Pegawai Negeri ', '2017-3452.pdf', 'admin', '2017-11-16 17:35:35'),
(88, '2017-11-17 08:45:00', '476.4', '3456/KESRA/2017', 'KESRA', '2017-11-17', 'Lurah SE-KOTA SAMARINDA', 'Peninjauan Kampung KB', '2017-3456.pdf', 'admin', '2017-11-17 02:58:51'),
(90, '2017-11-18 08:30:00', '376', '3458/ASSIII/2017', 'ASS.III', '2017-11-18', 'Kontraktor Bangunan', 'Penindakan Bangunan tanpa surat izin mendirikan bangunan', '2017-3458.pdf', 'admin', '2017-11-18 03:19:54'),
(91, '2017-11-30 01:00:00', '454', '3457/ORTAL/2017', 'ORTAL', '2017-11-30', 'Lurah SE-KOTA SAMARINDA', 'Pelatihan Kelembagaan Desa', '2017-3457.pdf', 'admin', '2017-11-30 00:01:06'),
(92, '2017-12-06 08:17:00', '342', '3459/TU/2017', 'TU', '2017-12-06', 'CAMAT SE-KOTA SAMARINDA', 'pilgub', '2017-3459.pdf', 'admin', '2017-12-06 07:19:29');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_suratmasuk`
--

CREATE TABLE `tb_suratmasuk` (
  `id_suratmasuk` int(11) NOT NULL,
  `tanggalmasuk_suratmasuk` datetime NOT NULL DEFAULT current_timestamp(),
  `kode_suratmasuk` varchar(10) NOT NULL,
  `nomorurut_suratmasuk` varchar(7) NOT NULL,
  `nomor_suratmasuk` varchar(25) NOT NULL,
  `tanggalsurat_suratmasuk` date NOT NULL,
  `pengirim` varchar(255) NOT NULL,
  `kepada_suratmasuk` varchar(255) NOT NULL,
  `perihal_suratmasuk` text NOT NULL,
  `file_suratmasuk` varchar(255) NOT NULL,
  `operator` varchar(50) NOT NULL,
  `tanggal_entry` datetime NOT NULL DEFAULT current_timestamp(),
  `disposisi1` varchar(50) NOT NULL,
  `tanggal_disposisi1` datetime NOT NULL DEFAULT current_timestamp(),
  `disposisi2` varchar(50) NOT NULL,
  `tanggal_disposisi2` varchar(25) NOT NULL,
  `disposisi3` varchar(50) NOT NULL,
  `tanggal_disposisi3` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `tb_suratmasuk`
--

INSERT INTO `tb_suratmasuk` (`id_suratmasuk`, `tanggalmasuk_suratmasuk`, `kode_suratmasuk`, `nomorurut_suratmasuk`, `nomor_suratmasuk`, `tanggalsurat_suratmasuk`, `pengirim`, `kepada_suratmasuk`, `perihal_suratmasuk`, `file_suratmasuk`, `operator`, `tanggal_entry`, `disposisi1`, `tanggal_disposisi1`, `disposisi2`, `tanggal_disposisi2`, `disposisi3`, `tanggal_disposisi3`) VALUES
(2, '2017-09-20 13:00:00', '900', '4518', '050/588/300.01', '2017-09-20', 'BAPPEDA KOTA SAMARINDA', 'Sekretaris Daerah', 'Penyampaian Usulan Bantuan Keuangan Pada APBD Prov.Kaltim Tahun 2018\r\n', '2017-4518.pdf', 'admin', '2017-11-18 03:30:06', 'SEKDA', '2017-09-20 14:30:00', 'PLT.ASS.II', '2017-09-28 09:00:00', 'ADM.PEMB', '2017-09-29 10:00:00'),
(3, '2017-09-20 14:00:00', '010', '4519', '036/B/HMJELEKTRO/IX/2017', '2017-09-18', 'FORUM KOMUNIKASI HIMPUNAN MAHASISWA ELEKTRO INDONESIA WILAYAH XIII KALIMANTAN', 'UMUM', 'Permohonan\r\n', '2017-4519.pdf', 'admin2', '2017-11-14 23:43:44', 'UMUM', '2017-09-22 11:00:00', '', '1970-01-01 07:00:00', 'UMUM', '2017-09-22 11:05:00'),
(5, '2017-09-21 15:10:00', '660', '4520', '660.2/1539/100.14', '2017-09-19', 'DINAS LINGKUNGAN HIDUP KOTA SAMARINDA', 'Sekretaris Daerah', 'Penting', '2017-4520.pdf', 'admin2', '2017-11-14 23:58:01', 'SEKDA', '2017-09-21 23:00:00', 'PLT.ASS.II', '2017-09-24 21:00:00', 'EKONOMI & SDA', '2017-09-25 09:00:00'),
(6, '2017-09-26 10:00:00', '061', '4521', '061/4382/SJ', '2017-09-20', 'MENDAGRI RI', 'Organisasi', 'Surat Edaran Tentang Mekanisme Layanan Administrasi Kemendagri\r\n', '2017-4521.pdf', 'admin', '2017-12-02 21:44:11', 'ASS.III', '2017-09-26 15:00:00', '', '1970-01-01 07:00:00', 'ORTAL', '2017-09-27 11:30:00'),
(7, '2017-09-25 14:00:00', '503', '4522', '503/744/100.26', '2017-09-25', 'DINAS PENANAMAN MODAL DAN PELAYANAN TERPADU SATU PINTU KOTA SAMARINDA', 'PLH SEKDA', 'Tindak Lanjut Permohonan Penghapusan Denda Retribusi IMB PT.Borneo Inti Graha\r\n', '2017-4522.pdf', 'admin', '2017-12-06 00:32:23', 'PLH.SEKDA', '2017-09-26 10:00:00', '', '1970-01-01 07:00:00', 'HUKUM', '2017-09-27 15:00:00'),
(8, '2017-12-06 08:12:00', '454', '4523 ', '4121/wawali/2017', '2017-12-06', 'pdam', 'wawali', 'air', '2017-4523.pdf', 'admin', '2017-12-06 07:15:07', 'WAKIL WALIKOTA', '2017-12-14 08:14:00', 'ADM.PEMB', '2017-12-12 08:14:00', 'PEM-OTDA', '2017-12-13 08:15:00');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `kegiatan`
--
ALTER TABLE `kegiatan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `kontak`
--
ALTER TABLE `kontak`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `kontak2`
--
ALTER TABLE `kontak2`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `peraturan`
--
ALTER TABLE `peraturan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `ruang`
--
ALTER TABLE `ruang`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tb_admin`
--
ALTER TABLE `tb_admin`
  ADD PRIMARY KEY (`id_admin`),
  ADD UNIQUE KEY `username_admin` (`username_admin`);

--
-- Indeks untuk tabel `tb_bagian`
--
ALTER TABLE `tb_bagian`
  ADD PRIMARY KEY (`id_bagian`),
  ADD UNIQUE KEY `username_admin_bagian` (`username_admin_bagian`);

--
-- Indeks untuk tabel `tb_suratkeluar`
--
ALTER TABLE `tb_suratkeluar`
  ADD PRIMARY KEY (`id_suratkeluar`),
  ADD UNIQUE KEY `nomor_suratkeluar` (`nomor_suratkeluar`);

--
-- Indeks untuk tabel `tb_suratmasuk`
--
ALTER TABLE `tb_suratmasuk`
  ADD PRIMARY KEY (`id_suratmasuk`),
  ADD UNIQUE KEY `nomorurut_suratmasuk` (`nomorurut_suratmasuk`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `kegiatan`
--
ALTER TABLE `kegiatan`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `kontak`
--
ALTER TABLE `kontak`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT untuk tabel `kontak2`
--
ALTER TABLE `kontak2`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `peraturan`
--
ALTER TABLE `peraturan`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `ruang`
--
ALTER TABLE `ruang`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tb_admin`
--
ALTER TABLE `tb_admin`
  MODIFY `id_admin` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `tb_suratkeluar`
--
ALTER TABLE `tb_suratkeluar`
  MODIFY `id_suratkeluar` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=93;

--
-- AUTO_INCREMENT untuk tabel `tb_suratmasuk`
--
ALTER TABLE `tb_suratmasuk`
  MODIFY `id_suratmasuk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
