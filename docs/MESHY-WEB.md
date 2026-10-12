# Meshy web
## İlk hazırlık
1. https://www.meshy.ai adresinde Pro aboneliğinin bulunduğu hesapla giriş yap.
2. Hesabındaki kredi bakiyesini kontrol et. Sırf bağlantıyı denemek için üretim başlatma.
3. Bu web akışı için GitHub bağlantısı veya API anahtarı kurmuyoruz.
4. Önce ASSETS.csv'de yeniden kullanılabilecek varlık var mı kontrol et.

## Bir model gerektiğinde
1. Ana geliştiriciden bir varlık tanımı al: kullanım yeri, stil, ölçü, hedef detay düzeyi,
   hareketli/sabit olması ve kabul ölçütü.
2. Referans hazırsa Image to 3D; yoksa Text to 3D kullan.
3. Üretim ekranındaki maliyeti gör. İlk denemede gerekmeyen ek seçenekleri açma.
4. Sonucu döndürerek biçim, eksik parçalar ve doku açısından incele.
5. Yalnız ihtiyaç varsa remesh, texture veya rigging yap. Her biri için gösterilen krediyi kontrol et.
6. Download ile Godot aktarımı için tercihimiz GLB; dosyayı sakla. My Models'daki kaydı koru.
7. Dosyayı projeye aktaracak ana geliştiriciye teslim et. Web uygulamasının GitHub'a otomatik
   dosya yazdığını varsayma. Kaynak, lisans referansı ve varlık yolunu ASSETS.csv'ye ekle.

## Bizim tekrar kullanım standardımız
Varlık adı: asset_turu_v001.glb. Ölçek ve eksenleri motor içinde kontrol et.
Mümkün olduğunda renk/malzeme varyasyonlarını motor içinde oluştur.
Karakterde tek uygun iskelet ve yeniden kullanılabilir animasyon planını üretimden önce belirle.
“Kabul edildi” demeden önce Godot'ta materyal, ölçek ve gerekiyorsa animasyonu kontrol et.
Lisans koşullarını üretimin yapıldığı plan ve tarihle birlikte kaydet.

Kaynak: https://docs.meshy.ai/en/webapp/getting-started
