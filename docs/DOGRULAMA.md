# Hazırlık denetimi — 12 Ekim 2026
## Doğrulanmış temel
Public görünürlük ve 6ca3724 commit'inde Actions başarıları:
- https://github.com/SerkanAydin06/pardex-uretici/actions/runs/38254765256
- https://github.com/SerkanAydin06/pardex-uretici/actions/runs/38254765241
Önceki 3.0.0 çalışma ortamı testlerinde ayrı başlangıç da gerçek Godot'ta doğrulandı.

## 3.2.1 denetimi
Eksik bulunan iki kontrol otomatik akışa eklendi:
- Koordinatör/yönlendirme ve oyun durum dosyalarının varlığı, kopyalanması ve boyutları.
- Bağımsız üretilen oyun projesinin gerçek Godot import/smoke kontrolü.
İkinci kontrol çekirdeğin doğrulanmış motorunu tekrar kullanır; ikinci indirme/export yok.
Güncel commit'in Actions sonucunu kontrol et; eski başarı yeni sürüm için kanıt değildir.
Çalıştırma:
bash scripts/check-template.sh
bash scripts/test-starter.sh
bash scripts/godot-install.sh
bash scripts/godot-check.sh
bash scripts/test-starter.sh --godot
Gerçek Git checkout'ta başlangıç üretmeden önce değişiklikleri commit edin.

## 3.4.0 denetimi (cloud, Godot 4.5.1)
- check-template.sh, test-starter.sh ve godot-check.sh geçti; üretilen başlangıçta TESTS_PASS: 1.
- Negatif kontrol: başarısız test, tip uyuşmazlığı ve derlenmeyen script çıkış kodu 1 verdi.
- Panel headless Chromium'da (390 px) sahte GitHub API ile denendi: yedek/sil/geri yükle,
  kanıt uyarısı, görev ve hata paketi, yeniden yüklemede önbellekten 0 API isteği, JS hatası yok.
- Gerçek GitHub Pages yayını ve kullanıcının F5 denemesi bu denetimde yapılmadı.

## 3.5.0 denetimi (öğrenme döngüsü)
- core-feedback.sh örnek dosyalarla: yalnız "acik" satırlar alındı, HTML etkisizleştirildi,
  erişilemeyen ve geçersiz depo raporlandı. Gerçek issue güncellemesi birleştirme sonrası elle çalıştırmada görülür.
- core-update-check.sh canlı çekirdeğe karşı: eski sürümde notice + yeni CHANGELOG bölümleri, güncelde sessiz.
- check-template.sh ve test-starter.sh --godot geçti; panel tarayıcıda denendi.

## Yetkinlik ve sınır
Hazır: yeni sohbet girişi, yetkiye göre repo kurulumu/manuel alternatif, ayrı oyun
başlangıcı, hedefli görev devri, sonuç kabulü, kayıt üzerinden devam ve genel bakım süreci.
Henüz ölçülmedi: gerçek oyun boyunca toplam maliyet, hız, farklı sağlayıcıların
karşılaştırmalı başarısı ve kullanıcının bütün araç bağlantıları.
Henüz uygulanmadı: otomatik sağlayıcı API orkestrasyonu, arka plan öz-güncelleme servisi,
sunucu tarafı çekirdek kapsam kilidi. Belgeler bu özellikler varmış gibi yorumlanmamalı.
Headless test görsel, eğlence, performans veya kullanıcının PC'sinde çalışma garantisi değildir.
Gerçek görevde kullanıcı tarafından yapılan görsel kontrol ayrı kanıt olarak kaydedilir.
