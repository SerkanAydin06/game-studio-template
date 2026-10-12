# Varlık ve kalite standardı
Bu ortak kontrol listesi yalnız ilgili işte açılır; her görevde tümünü çalıştırmayın.

## Yeni oyun başlangıcında
PROJECT.md: kapsam, hedef PC, kamera, görsel stil, motor/renderer, temel döngü ve hariç tutulanlar.
BUDGET.md: ek harcama, onaylanan Meshy partisi, Actions kullanımı ve durma koşulları.
İlk oynanabilir küçük bölüm doğrulanmadan çok sayıda pahalı varlık üretmeyin.

## Varlık üretimi
Önce varlık envanteri; oyunlar arası yeniden kullanım için kaynak/lisans uygunluğu.
İhtiyaç tanımı: görev, ölçü, görünüş, materyal, beklenen animasyon ve cihaz bütçesi.
Tek bir stil referansı ile pilot varlık üretin; onaydan sonra partiye geçin.
Poligon/doku hedefi kameraya ve hedef PC'ye göre belirlenir; her varlığa yüksek detay verilmez.
Meshy sonucu otomatik olarak oyun için hazır sayılmaz: ölçek, pivot, materyal, UV,
collision ihtiyacı, varsa rig ve animasyon Godot'ta kontrol edilir.
Renk varyasyonunu mümkünse malzemeyle yapın; aynı modeli tekrar üretmeyin.
Büyük kaynak dosyaları için depolama planını büyümeden belirleyin; LFS'nin sınırsız olduğunu varsaymayın.
İndirilen font, ses, doku ve modellerin lisans/kaynak kaydını ASSETS.csv'de tutun.
Bu çekirdekte ses üretim servisi veya ücretli API zorunlu değildir.

## Godot üretim kuralları
Görsel düzen mümkün olduğunca düzenlenebilir .tscn ve kaynak dosyalarında kalsın.
Editörde görünen UI ile çalışma anındaki görünüm farkı kontrol edilsin; gereksiz kodla yeniden çizim yok.
Oyun verisini yapılandırılmış kaynaklarda tutun; rastgele büyük script'e her şeyi eklemeyin.
Her oyunda temel açılış, giriş, ana döngü, kayıt/yükleme ve hatalı veri davranışı ihtiyaca göre test edilir.
Ağ, ekonomi veya veri kaybı riski taşıyan değişiklik için anlamlı test ekleyin;
düşük etkili görsel değişiklik için uygulamayı taklit eden test yazmayın.
Görsel kalite, performans ve oyun hissi gerçek Godot PC kontrolü gerektirir.
Headless geçişi bunları kanıtlamaz.
