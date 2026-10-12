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

## Yetkinlik ve sınır
Hazır: yeni sohbet girişi, yetkiye göre repo kurulumu/manuel alternatif, ayrı oyun
başlangıcı, hedefli görev devri, sonuç kabulü, kayıt üzerinden devam ve genel bakım süreci.
Henüz ölçülmedi: gerçek oyun boyunca toplam maliyet, hız, farklı sağlayıcıların
karşılaştırmalı başarısı ve kullanıcının bütün araç bağlantıları.
Henüz uygulanmadı: otomatik sağlayıcı API orkestrasyonu, arka plan öz-güncelleme servisi,
sunucu tarafı çekirdek kapsam kilidi. Belgeler bu özellikler varmış gibi yorumlanmamalı.
Headless test görsel, eğlence, performans veya kullanıcının PC'sinde çalışma garantisi değildir.
Gerçek görevde kullanıcı tarafından yapılan görsel kontrol ayrı kanıt olarak kaydedilir.
