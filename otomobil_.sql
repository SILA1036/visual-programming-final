-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 03 Oca 2023, 13:37:37
-- Sunucu sürümü: 10.4.17-MariaDB
-- PHP Sürümü: 8.0.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `otomobil_`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `araclar`
--

CREATE TABLE `araclar` (
  `id` int(11) NOT NULL,
  `arac_ad` varchar(250) NOT NULL,
  `sifir_ikinci` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin5;

--
-- Tablo döküm verisi `araclar`
--

INSERT INTO `araclar` (`id`, `arac_ad`, `sifir_ikinci`) VALUES
(1, 'BMW', 0),
(2, 'TOROS', 1),
(3, 'sdfsf', 1);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `parcalar`
--

CREATE TABLE `parcalar` (
  `id` int(11) NOT NULL,
  `detay` text NOT NULL,
  `fiyat` int(11) NOT NULL,
  `redim_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin5;

--
-- Tablo döküm verisi `parcalar`
--

INSERT INTO `parcalar` (`id`, `detay`, `fiyat`, `redim_id`) VALUES
(1, 'Lastikler, hareketsiz arabayı taşımak, kalkış ve fren anında ortaya çıkan büyük yük transferlerine mukavemet göstermek, fren yapıldığında ve viraj alırken motorun gücünü yola aktarmak, zevkli bir sürüş için güven içinde ve uzun müddet dayanmak, yolun durumu ve iklim şartları ne olursa olsun aracı emniyetle yönlendirmek, şoförün ve yolcuların konforunu sağlamak, aracın uzun ömürlü olması için yoldaki pürüzlerin etkisini azaltmak, performansını milyonlarca tekerlek devri boyunca en üst düzeyde tutmak için uzun ömürlü olmak gibi görevleri ve kıstasları yerine getirmek zorundadır.', 3500, 1),
(2, 'Aracın hareket etmesi için marş motorunu çalıştıracak akımı veriyor. Araç radyosu, kaloriferler, araç içi lambaları gibi elektrik ile çalışan araçlara akım göndererek çalışmalarını sağlıyor. Voltaj ve amperaj dengelemesi sayesinde yüksek devirlerde alıcıların zarar görmesini engelliyor.', 10000, 2),
(3, 'Motorlu araçların hepsinde bulunan direksiyon aslında çok basit gibi görünen fakat oldukça detaylı bir yapıda ve araç için çok önemli bir yeri olan parçasıdır. En temel ve basit haliyle bir mil üzerine bağlanmış olan direksiyon ona bağlı dik dişli düzeneği çevirerek tekerleklerin dönüş hareketini sağlamaktadır.', 5000, 3),
(4, 'Motor; elektrik, benzin, dizel, LPG gibi bir enerji formunu alıp mekanik enerjiye çeviren aparattır diyebiliriz. Söz konusu mekanik enerji otomobillerimizi hareket ettirmeyi sağlıyor. Bunun yanında günümüzde motorların birçok çeşidi mevcut.', 150000, 4);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `sepet`
--

CREATE TABLE `sepet` (
  `id` int(11) NOT NULL,
  `urun` varchar(250) NOT NULL,
  `k_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin5;

--
-- Tablo döküm verisi `sepet`
--

INSERT INTO `sepet` (`id`, `urun`, `k_id`) VALUES
(3, 'Tekerlek', 1);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `uyeler`
--

CREATE TABLE `uyeler` (
  `id` int(11) NOT NULL,
  `ad` varchar(250) NOT NULL,
  `soyad` varchar(250) NOT NULL,
  `eposta` varchar(50) NOT NULL,
  `sifre` varchar(500) NOT NULL,
  `tel` varchar(15) NOT NULL,
  `yetkisi` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin5;

--
-- Tablo döküm verisi `uyeler`
--

INSERT INTO `uyeler` (`id`, `ad`, `soyad`, `eposta`, `sifre`, `tel`, `yetkisi`) VALUES
(1, 'test', 'test', 'test@test.com', '1', '1', 0),
(2, '12', '12', '12', '12', '12', 0);

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `araclar`
--
ALTER TABLE `araclar`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `parcalar`
--
ALTER TABLE `parcalar`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `sepet`
--
ALTER TABLE `sepet`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `uyeler`
--
ALTER TABLE `uyeler`
  ADD PRIMARY KEY (`id`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `araclar`
--
ALTER TABLE `araclar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Tablo için AUTO_INCREMENT değeri `parcalar`
--
ALTER TABLE `parcalar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Tablo için AUTO_INCREMENT değeri `sepet`
--
ALTER TABLE `sepet`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Tablo için AUTO_INCREMENT değeri `uyeler`
--
ALTER TABLE `uyeler`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
