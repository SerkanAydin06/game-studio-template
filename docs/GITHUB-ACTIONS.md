# Actions: public çekirdek
Bu politika çekirdek için önceki “yalnız elle” notlarının yerini alır.
Standart ubuntu-latest runner kullanılır. Public depoda standart runner dakika kullanımı
ücretsizdir; private depoların kullanımı plan kotasına tabidir. Larger runner kullanılmaz.
Kaynak: https://docs.github.com/en/billing/concepts/product-billing/github-actions

## Otomatik kontroller
- main push ve main'e PR: şablon belgeleri ve bağımsız başlangıç kontrolü.
- Godot/senaryo/script/motor/workflow dosyası değişirse import ve smoke kontrolü.
- Job koşulu otomatik çalışmaları yalnız public depoda açar. Private depoda job atlanır.
- workflow_dispatch private depoda da çalışabilir ve kota kullanabilir.
- AI/API anahtarı yoktur. Tek zamanlanmış iş core-feedback.yml: haftalık, AI çağırmaz, public oyun
  dosyalarını okur ve yalnız bu depodaki geri bildirim issue'sunu günceller (issues: write).
  GitHub, 60 gün etkinlik olmayan public depoda zamanlanmış işi durdurabilir; elle yeniden açılır.
- Diğer işler read-only izin, sabit action sürümü ve timeout ile çalışır.
- Fork PR'leri normal pull_request kullanır; pull_request_target veya secret erişimi yoktur.
- GitHub dış katkı çalışmaları için ayrıca onay isteyebilir; otomatik izin genişletme yapılmaz.
- Godot başlatıcının bulut testi kullanıcı bilgisayarındaki görsel testi karşılamaz.

## Public yapma ve ilk kontrol
Settings > General > Danger Zone > Change repository visibility > Make public.
Bu işlem çekirdeğin dosya ve geçmişini herkese görünür yapar; oyun depoları değişmez.
Bağlantı/API üzerinde private:false doğrulanmadan görünürlüğün değiştiğini söyleme.
Görünürlük değişikliği push değildir. Sonrasında Actions > Studio template checks >
Run workflow ve Godot validation > Run workflow ile ilk kontrol yapılabilir.

## Export
Windows export sadece elle çalıştırmada export_windows seçilirse üretilir.
Normal push/PR executable veya artifact üretmez. İsteğe bağlı artifact bir gün tutulur.
Günlük deneme Godot'ta F5'tir.

## Ayrı oyunlar
Yeni oyunlar kullanıcının tercihiyle public açılır; templates/game/.github oyun CI'sını içerir.
main push/PR'de game/, scripts/, motor ve workflow değişiklikleri import/smoke başlatır;
ilk adım yeni çekirdek sürümü varsa uyarı (notice) gösterir, derlemeyi durdurmaz.
Export yalnız elle seçilir. Mevcut oyunlar kendiliğinden public yapılmaz veya yeniden kurulmaz.
Çekirdeği public yapmak private oyunun Actions kullanımını ücretsiz yapmaz.
Private oyun içeriğini ücretsiz çalıştırmak için public çekirdeğe taşımayın.

## Yerel/cloud kontrol
bash scripts/check-template.sh
bash scripts/test-starter.sh
bash scripts/godot-install.sh
bash scripts/godot-check.sh
