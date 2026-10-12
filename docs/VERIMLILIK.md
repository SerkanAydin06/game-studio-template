# Düşük tüketim politikası
Amaç ölçülen iş başına tüketimi azaltmak; en ucuz modelle sürekli tekrar yapmak değil.

ChatGPT tek koordinatördür; kullanıcı hazır görevleri ve sonuçları taşır.
Ayrıntı: [yönetici akışı](CHATGPT-YONETICI.md).

## Görev yönlendirme
Aşamaya göre araç seçimi tek yerde: [GOREV-DAGILIMI.md](GOREV-DAGILIMI.md).
Bu roller katı engel değildir; işi başlayan araç tamamlayabiliyorsa gereksiz devretmeyin.
Mevcut oturum bağlamı işe yarıyorsa koruyun. İlgisiz yeni göreve kısa devir notuyla başlayın.
Ana talimatları kısa tutun; kapsamı, ilgili dosyaları ve kabul ölçütünü baştan belirtin.
“Her şeyi tekrar incele” yerine belirli hata/özellik grubu verin.
En güçlü model ve yüksek düşünme düzeyini varsayılan yapmayın; mevcut uygun seçenekle başlayın.
İki başarısız aynı hata düzeltmesi otomatik tekrar yerine kanıt ve yöntem değişikliği gerektirir.

## Kota tasarrufu kuralları
Bunlar ölçülmüş tasarruf iddiası değil, tur sayısını azaltan çalışma kurallarıdır.
1. Görev paketi okunacak dosyaları listeler; AI tüm depoyu taramaz. Panel "Görev Merkezi" bunu üretir.
2. Her mekanik/kural için game/tests/test_*.gd yazılır. Public CI testleri ücretsiz çalıştırır;
   hatanın kullanıcı F5 denemesine ve yeni AI turuna kalması azalır.
3. Hata düzeltmede önce hatayı yeniden üreten test, sonra en küçük düzeltme. Aynı hata geri dönmez.
4. F5 denemesinde bulunan hatalar tek hata paketinde toplanır; her hata için ayrı tur açılmaz.
5. İlk oynanabilir sürüm yer tutucu veya ücretsiz CC0 varlıkla yapılır (URETIM-KALITESI.md).
   Meshy yalnız onaylanmış görsel örnekten sonra ve listede olmayan özel varlık için.
6. Benzer küçük işler tek görevde birleştirilir; her küçük değişiklik için yeni sohbet açılmaz.
7. Deneme sınırı görev paketinde yazılıdır; aşılırsa kanıt bildirilir ve yöntem değişir.

## Tüketim kapıları
- Yeni oyun için PROJECT.md kapsamı ve BUDGET.md sınırları önce belirlenir.
- Günlük test cloud ortamında; public çekirdek ve public oyun CI standart runner ile otomatik.
  Aynı commit'in başarılı kontrolünü gerekçesiz tekrar çalıştırma.
- Exe yalnız kullanıcı paket istediğinde. Godot F5 denemesi için gerekmez.
- Meshy üretimi önce gerekçe, varlık tanımı ve arayüzde maliyetle planlanır.
  Onaylı bir parti bütçesi içinde rutin adımlarda tekrar tekrar izin istenmez.
- Otomatik API geçişi, periyodik AI taraması, tüm PR'lere AI incelemesi ve model yarışması yok.
- Hesaplarda ek ücretli kullanım açılmaz; gerekli olursa somut maliyet ayrıca kararlaştırılır.
- Kota dolarsa kaldığın yeri kaydet. Erişim sınırlarını aşmaya çalışma.

## Ölçüm
USAGE.csv'ye yalnız gerçek iş sonunda görülebilen farkı yaz; dakika/kredi/token/yüzdeyi ayır.
Bakiye görünmüyorsa bilinmiyor yaz. Claude komut çalıştırmayı yorumlarken kota tüketebilir;
terminal/Godot'un kendisi model tokenı harcamaz. Actions ise ayrı dakika/depolama kullanır.
Bir hafta/iş grubu sonunda tamamlanan sonuç ve tekrar sayısını karşılaştır.
Otomatik bütün sağlayıcılardan bakiye okuma bu çekirdekte yok; tasarruf yüzdesi garanti edilmez.
