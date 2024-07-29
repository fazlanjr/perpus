<?php

namespace App\Faker;

use Faker\Provider\Base;

class BukuFaker extends Base
{
    protected static $adjectives = [
        'Misteri yang Mendebarkan :', 'Rahasia yang Tersembunyi dari', 'Keajaiban yang Tak Terduga dalam', 'Petualangan Seru', 'Kisah yang Menginspirasi,',
        'Legenda yang Melegenda !', 'Mitologi Kuno :', 'Cinta Abadi,', 'Sebuah Perjalanan Panjang', 'Impian yang Terwujud',
        'Kehebatan Sang Pahlawan', 'Serba Serbi Unik', 'Semua Tentang Kehidupan', 'Fakta Menarik', 'Mitos yang Aneh.', 'Sejarah yang Terlupakan',
        'Sejarah Kelam', 'Masalalu yang Misterius', 'Apa itu?', 'Penjelasan Tentang', 'Pertarungan Epik!', 'Hal yang Terlarang',
        'Sang Legendaris', 'Jejak yang Hilang', 'Keabadian yang Abadi', 'Ajaibnya Dunia', 'Kisah Fantastis', 'Kehebatan yang Luar Biasa',
        'Misteri yang Tersembunyi', 'Sisi Misterius dari', 'Cerita yang Menakjubkan dari', 'Lintas Zaman:', 'Momen yang Menegangkan pada', 'Cahaya Terang',
        'Gelap Gulitanya', 'Kehancuran untuk', 'Hal yang Aneh dari', 'Seberapa Menyeramkan:', 'Dunia Luar Angkasa', 'Kehidupan Masa Depan', 'Zaman Purba',
        'Keajaiban Purba', 'Kesaktian', 'Hal Tak Terduga dari', 'Sosok yang Menawan,', 'Penampilan yang Memukau', 'Kejadian yang Seram:',
        'Sikap Tegas', 'Keberanian yang Luar Biasa', 'Kegagahan', 'Cahaya yang Cemerlang', 'Bersinar Terang', 'Kemenangan Gemilang',
        'Berkelanjutan', 'Kebijaksanaan', 'Kedermawanan', 'Ketulusan', 'Kesabaran', 'Ketabahan', 'Ketekunan', 'Kekuatan', 'Kelembutan',
        'Kreativitas yang Tak Terbatas', 'Inovasi Baru', 'Kemajuan', 'Dinamika', 'Kolaborasi Hebat', 'Kekompakan', 'Solidaritas', 'Penuh Kasih',
        'Kesetiaan', 'Kejujuran', 'Keadilan', 'Sportivitas', 'Toleransi', 'Ketahanan', 'Kemandirian', 'Kesejahteraan', 'rukunannya hidup', 'Tempat Aman',
        'terlanjur nyamanan,', 'Hidup Damai,', 'Kebahagiaan saat melihat', 'Kegembiraan mengetahui', 'Selalu ceria bersama', 'Antusiasme', 'Optimisme', 'Harapan Baru', 'Kesederhanaan',
        'Kebijaksanaan', 'Keteguhan', 'Kekuatan', 'Kegigihan', 'Ketangguhan', 'Kekokohan', 'Ketabahan seekor', 'Semangat', 'Gairah', "Mengenal","Berinkarnasi Menjadi"
    ];


    protected static $nouns = [
        'Laut', 'Hutan', 'Gunung', 'Bintang', 'Pahlawan', 'Pangeran', 'Putri', 'Pencarian', 'Kebebasan', 'Kebenaran',
        'Jepi', 'Okta', 'Keris Keramat', 'Segitiga Bermuda', 'Laut Pasifik', 'Jepi the Great', 'Jia', 'Aku dan Kamu', 'Katak Himalayah',
        'Saturnus', 'Uranus', 'Indonesia', 'Bima Sakti', 'Kota Tua', 'Pedang', 'Kerajaan', 'Harta Karun', 'Raksasa', 'Puteri Duyung',
        'Penyihir', 'Naga', 'Badai', 'Sungai', 'Gua', 'Meteor', 'Peri', 'Dunia Lain', 'Dimensi', 'Kapal Hantu', 'Kometa', 'Hantu', 'Pasukan',
        'Pejuang', 'Pulau', 'Penjara', 'Pustaka', 'Siang Malam', 'Perang', 'Samudra', 'Senja', 'Pagi', 'Kabut', 'Penyamun', 'Rahib', 'Gunung Berapi',  'Robot Gila', 'Monster Spageti', 'Bola Ajaib', 'Ikan Terbang', 'Kucing Pemberontak', 'Sosis Berjalan', 'Penguin Rocker', 'Ular Bertopi',
        'Gajah Menari', 'Bebek Detektif', 'Alien Imut', 'Vampir Vegetarian', 'Serigala Karaoke', 'Beruang Berseluncur', 'Anjing Astronaut',
        'Kura-Kura Ninja', 'Gorila Berdasi', 'Zebra Bernyanyi', 'Dinosaurus DJ', 'Harimau Berkacamata', 'Elang Detektif', 'Naga Kue',
        'Hiu Pesta', 'Unicorn Pelukis', 'Kelinci Pesulap', 'Kuda Santai', 'Katak Disco', 'Babi Kung Fu', 'Paus Pemandu Wisata', 'Burung Raksasa',
        'Jerapah Jahil', 'Kelelawar Balap', 'Tikus Penari', 'Merpati Post', 'Rubah Ceria', 'Ayam Super', 'Lemur Pembaca', 'Kupu-Kupu Berkilau',
        'Kumbang Emas', 'Kadal Terbang', 'Cacing Pemberani', 'Laba-Laba Ninja', 'Lebah Pelaut', 'Belalang Penyair', 'Kecoak Pahlawan',
        'Bunglon Kocak', 'Bungkus Biskuit', 'Bakso Berkaki', 'Soda Bercahaya', 'Sandwich Bertopi', 'Pizza Berenang', 'Permen Berbicara',
        'Es Krim Pahlawan', 'Puding Menari', 'Jus Jingga', 'Kue Misterius', 'Nasi Goreng Terbang', 'Teh Bersiul', 'Kopi Ajaib', 'Coklat Penari',
        'Susu Lumba-Lumba', 'Oatmeals Menyanyi', 'Kelapa Berjalan', 'Jelly Bercahaya', 'Bawang Putih Pemberani', 'Cabe Berbicara', 'Kacang Super',
        'Ubi Jalar Jahil', 'Jagung Terbang', 'Tomat Misterius', 'Timun Menari', 'Labu Berkilau', 'Brokoli Pembaca', 'Kangkung Bercahaya',
        'Pisang Pahlawan', 'Jeruk Penyair', 'Apel Berkacamata', 'Mangga Berlari', 'Semangka Menari', 'Nanas Berbicara', 'Stroberi Penari',
        'Kiwi Penyair', 'Anggur Detektif', 'Rambutan Berkilau', 'Durian Pembaca', 'Pepaya Super', 'Markisa Ninja', 'Salak Pahlawan', 'Kelengkeng Berkacamata',
        'Sirsak Detektif', 'Matoa Penari', 'Buah Naga Jahil', 'Belimbing Penyair', 'Jambu Berbicara', 'Sukun Misterius', 'Mentimun Ninja', 'Sawi Pembaca', "ambatukam", "Skibidi", "Jawa", "Jawir", "Cireng", "Hapis", "blecki", "Jia Cantik", "Sapi Semok", "Gajah Montok", "Semut Birahi" , "Okta-Kon"," Jefy Okta","Ghezia anisa","jepi dan jia"
    ];

    public static function bookTitle()
    {
        $adjective = static::$adjectives[array_rand(static::$adjectives)];
        $noun = static::$nouns[array_rand(static::$nouns)];
        return "$adjective $noun";
    }
}
