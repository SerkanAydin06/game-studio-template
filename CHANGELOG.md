# Çekirdek değişiklikleri

## 3.4.0
Kontrol paneli (#11–#16) sürüme alındı ve düzeltildi: tek dosyalık tam yedek (projeler + kayıtlar),
proje silinince kayıtların da silinmesi, kanıtsız "Tamamlandı" uyarısı, workflow başına CI durumu,
10 dk API önbelleği, okunacak dosya listesi/deneme sınırlı görev paketi ve F5 hata paketi.
Oyun başlangıcı: game/tests/test_*.gd otomatik test çalıştırıcısı; tüm script/sahne derleme kontrolü;
ekran ölçekleme (canvas_items/expand); tipli GDScript uyarısı; testler export dışında.
Belgeler: kota tasarrufu kuralları, ücretsiz CC0 varlık önceliği, test-önce hata düzeltme.
Pages workflow action'ları SHA ile sabitlendi; README/panel sürümü CORE_VERSION ile denetlenir.
docs/INDEX.md doküman haritası eklendi. Mevcut oyunlara otomatik uygulanmaz;
istenirse game/smoke_test.gd ve game/tests/ seçerek kopyalanır.
Geri alma: bu sürümün merge commit'ini revert et.

## 3.3.0
Kullanıcının tercihiyle yeni oyunlar public varsayılır. Başlangıç paketi oyuna ait
standart runner CI içerir; export elle seçilir. Mevcut oyunlar otomatik değiştirilmez.

## 3.2.1
Public CI ayrı oluşturulan oyun başlangıcını aynı motorla doğrular. Koordinatör ve
yönlendirme dosyaları zorunlu kontrole alındı. İlk giriş/durum belgeleri güncellendi.
Yeni özellik/mekanik yok; mevcut oyunlara otomatik güncelleme yok.

## 3.2.0
Genel iyileştirme sınırı, kanıta göre araç/skill/agent seçimi, oyun ROUTING.md kaydı
ve üretim kalite kapıları. Motor/oyun kodu değişmedi; mevcut oyunlara otomatik uygulanmaz.
Geri alma: bu sürümün PR merge commit'ini revert et; oyun depolarına dokunma.

## 3.1.0
ChatGPT koordinatörü, yeni sohbet girişi, yetkiye göre ayrı depo kurulumu, hazır görev aktarımı.

## 3.0.0
Ortak çekirdek/bağımsız oyun başlangıcı, elle Actions ve isteğe bağlı export.
