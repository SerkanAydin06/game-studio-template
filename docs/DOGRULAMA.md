# Çekirdek 3.0.0 doğrulaması — 12 Ekim 2026
Bu güncellemede GitHub Actions çalıştırılmadı; kontroller çalışma ortamında yapıldı.
- Bash betikleri sözdizimi: geçti.
- Şablon dosya/boyut/CSV kontrolleri: geçti.
- YAML: yalnız workflow_dispatch; export_windows varsayılan false: geçti.
- Yerel doküman bağlantıları: geçti.
- Ayrı başlangıç oluşturma, kaynak commit kaydı, workflow kopyalanmaması: geçti.
- Mevcut hedef, çekirdek içine hedef ve commit edilmemiş çekirdek reddi: geçti.
- İndirilmiş motor arşivinin hash ile doğrulanarak yeniden kullanımı: geçti.
- Gerçek Godot 4.5.1: çekirdek validation ve ayrı başlangıç game import/smoke: geçti.
- Windows export bu değişiklikte tekrar çalıştırılmadı; önceki GitHub çalışması başarılı.
- Kullanıcının PC'sindeki görsel/oynanış testi ve kişisel hesap bağlantıları burada doğrulanmadı.

Tekrarlanabilir kısa kontroller:
bash scripts/check-template.sh
bash scripts/test-starter.sh
bash scripts/godot-install.sh
bash scripts/godot-check.sh

Git checkout'ta new-game/test-starter çalıştırmadan önce çekirdek değişikliklerini commit edin.
AI test çıktısını kısa özetler; bu rapor gelecekteki değişikliklerin test edildiği anlamına gelmez.
