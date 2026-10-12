# Web Studio Starter — 2.0

Bu paket Claude Code WEB ve GitHub üzerinden kullanılmak üzere hazırlanmıştır.
Önceki Python paketinin yerine bu başlangıcı kullanın. Python/yerel AI CLI gerekmez.
GitHub deposuna başlangıç dosyaları yüklendi. Paket ortak talimatları ve iş akışını kurar;
Godot 4.5.1 altyapı doğrulaması ve Windows export akışı da içerir. Oyun mekaniği yoktur.

## Ayrıntılı araç rehberleri

[Kurulum merkezi](docs/KURULUM.md): Claude Code, ChatGPT/Codex, Gemini, Meshy ve GitHub Actions.
Bu dal path filtreli Actions şablon kontrolü ve Godot/Windows export doğrulaması içerir.
Çalıştırma durumu Actions sekmesinden doğrulanır; Windows PC testi ayrıca gerekir.

## Bir kez kurulum

1. GitHub web arayüzünde `game-studio-template` adlı özel bir depo oluşturun.
2. ZIP'i açın. Bu klasörün içindeki dosyaları deponun KÖKÜNE yükleyin ve commit edin.
   GitHub'da CLAUDE.md, AGENTS.md, STATE.md ve TASK.md doğrudan kökte görünmeli.
3. Claude Code web ekranında GitHub bağlantısına bu depo için erişim verin ve depoyu seçin.
4. FIRST_TASK.txt içeriğini Claude Code'a gönderin. Sonuçtaki branch/PR bağlantısını kontrol edin.
5. Yeni oyunlara başlarken bu depoyu GitHub'ın Template repository ayarıyla şablon yapabilirsiniz.
   Her oyun için ayrı özel depo oluşturun. Bu işlem yalnız başlangıç kopyasıdır; sonraki ortak
   kural değişiklikleri diğer oyunlara kendiliğinden yayılmaz. Gerekli güncellemeleri ayrı uygulayın.

## Farklı PC

Aynı hesapla Claude Code web oturumunu açın. Kod bulut ortamında çalışır; diğer PC'ye yerel
AI kurulumu taşımazsınız. Yeni görev açılırken doğru depo ve dalı seçin. Bitmiş ama main'e
birleşmemiş bir PR'nin yeni main tabanlı oturumda bulunacağını varsaymayın.
Aynı dosyalara iki ayrı oturumdan eşzamanlı görev vermeyin.
Oyunu oynayarak kontrol etmek için test PC'sinde Godot veya üretilmiş oyun paketi gerekir.
Godot, GitHub ve bulut test ortamının aynı motor sürümünü kullanması sonraki kurulum adımıdır.

## En düşük tüketim için

- Claude Code ana geliştirici. ChatGPT/Codex yalnız gerekli planlama, inceleme veya devir için.
- Gemini yalnız gereken araştırma/görsel yorum; Meshy yalnız gerekli varlık üretimi için.
- Her araca her görevi tekrarlatmayın. Ayrı sağlayıcılar arasında kendiliğinden iletişim yoktur.
- Dosya adları ve kabul ölçütü içeren tek görev verin. Aynı işte oturumu koruyun.
- Yeni/ilgisiz işte kısa STATE/TASK ile başlayın; bütün eski sohbeti taşımayın.
- Otomatik tekrar eden PR incelemesi, zamanlı AI taramaları ve agent ekipleri varsayılan olmasın.
- Provider kullanım göstergesini USAGE.csv'ye kaydedin; farklı birimleri toplamayın.
- Bu metinler model davranışına rehberdir, teknik harcama kilidi değildir. Ek ücretli kullanım
  durumunu sağlayıcı hesabında kontrol edin. Kota dolunca otomatik API'ye geçiş kurmayın.
- Bağlantısı olmayan araçlara yalnız ilgili metin/dosya aktarılır. Gemini'nin bu dosyaları
  otomatik okuyacağını ya da Meshy'nin kendiliğinden depoya model ekleyeceğini varsaymayın.

## Dosyalar

CLAUDE.md: Claude için kısa giriş. AGENTS.md: ortak çalışma kuralları.
STATE.md: güncel durum. TASK.md: tek aktif görev.
ASSETS.csv: kaynak/lisans ve tekrar kullanım kaydı. USAGE.csv: gerçek kullanım ölçümleri.
FIRST_TASK.txt: başlangıç görevi. Bu CSV'ler otomatik telemetri toplamaz.

## Doğrulama ve sonraki adım

[Actions rehberini](docs/GITHUB-ACTIONS.md) izleyin. İlgili main değişiklikleri küçük bir
doküman kontrolü veya Godot import/smoke/Windows export işi başlatır. Günlük cron yoktur.
Gerçek Windows testinde indirilen StudioCheck.exe açılmalıdır. Sonra yeni oyunlar için
bu başlangıcı ayrı depoya kopyalayabiliriz. Başka oyunların motor sürümünü değiştirmeyin.

Kaynaklar (12 Ekim 2026 tarihinde kontrol edildi):
https://code.claude.com/docs/en/claude-code-on-the-web
https://code.claude.com/docs/en/memory
https://code.claude.com/docs/en/costs
