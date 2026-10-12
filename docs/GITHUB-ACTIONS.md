# GitHub Actions
Kullanıcı önceki kotasının bittiğini ve GitHub Pro'ya geçtiğini bildirdi; Actions kullanımına
izin verdi. Gerçek kalan dakika/bakiye bu bağlantıdan okunmadı. Pro sınırsız kullanım sayılmaz.

## İki iş akışı
- Studio template checks: ana dalda ilgili doküman/CSV/kontrol değişikliklerinde çalışır.
  Şablon dosyalarını, kısa durum/görev notlarını ve CSV başlıklarını kontrol eder. 3 dakika timeout.
- Godot validation and Windows build: ana dalda validation/, .godot-version, Godot betikleri
  veya kendi workflow dosyası değiştiğinde çalışır. Sadece doküman değişikliği bunu başlatmaz.
  15 dakika timeout; Linux runner; tek iş; cron veya AI çağrısı yoktur.

İkisi de Actions > iş akışı > Run workflow ile elle başlatılabilir.
Dosyanın önce main'de bulunması gerekir. Eski aynı-dal çalışması yeni iş geldiğinde iptal edilir.
Her commit'i AI'ya tekrar inceleten bir döngü kurulmadı.

## Motor doğrulaması
.godot-version içinde 4.5.1 sabittir: bu tekrarlanabilir altyapı testi için seçilen sürümdür;
en yeni sürüm iddiası değildir ve mevcut başka oyunların motor sürümünü değiştirmez.
Resmî Godot sürümündeki Linux motoru ve export templates SHA-256 ile doğrulanır.
validation/ oyun içermeyen bir etiket sahnesidir. Import, sahne yükleme/etiket smoke testi
ve Windows x86_64 release export uygulanır. Exe'nin varlığı ve MZ başlığı kontrol edilir.
Bu, gerçek Windows çalıştırma veya grafik/oynanış testi değildir.

## Çıktıyı deneme
1. Actions'ta başarılı Godot validation and Windows build çalışmasını aç.
2. Artifacts altındaki studio-windows-check dosyasını indir; çıktıyı ZIP'ten çıkar.
3. Windows PC'de StudioCheck.exe'yi çalıştır. Ortada Development pipeline ready yazısı görünmeli.
4. Bu adımda Godot veya Python kurulumu gerekmez. Sonucu STATE.md'de kaydet.
İmzasız deneme uygulamasıdır; Windows'ta doğrulanmış yayım/paket değildir.

## Tüketim
Çıktı 1 gün saklanır; cache ve uzun süreli log artifact'i yüklenmez.
İlk kurulumda arşiv indirmesi gerekir. Başarısız işi yeniden çalıştırmak dakika kullanır.
GitHub Settings > Billing / Usage'dan gerçek kotayı takip et; yeni ücretli kullanım açılmadı.
Actions komutları AI tokenı harcamaz; onları yorumlayan AI oturumu kendi kotasını kullanır.

## Claude bulut ortamında aynı kontroller
Linux x86_64 ortamında:
bash scripts/check-template.sh
bash scripts/godot-install.sh --templates
bash scripts/godot-check.sh --export
Bu komutlar kullanıcının Windows bilgisayarında çalıştırılmaz; gerekli Linux araçları curl,
unzip, sha256sum ve timeout'tur. İndirme ağı kapalıysa başarı iddia etmeyin.

Kaynaklar:
https://docs.github.com/en/billing/concepts/product-billing/github-actions
https://docs.github.com/en/actions/how-tos/manage-workflow-runs/manually-run-a-workflow
https://github.com/godotengine/godot/releases/tag/4.5.1-stable
https://docs.godotengine.org/en/stable/tutorials/editor/command_line_tutorial.html
