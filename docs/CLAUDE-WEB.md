# Claude Code web
## Bir kez bağlantı
1. https://claude.ai/code adresinde aboneliğin bulunan hesapla giriş yap.
2. GitHub bağlantısı istendiğinde SerkanAydin06 hesabını seç ve Claude GitHub uygulamasına
   game-studio-template deposu için erişim ver. Depo görünmüyorsa uygulamanın depo izinlerini kontrol et.
3. Yeni görevde bu depoyu ve doğru başlangıç dalını seç.
4. Bulut ortamı ekranı çıkarsa mevcut ortamı seç veya varsayılan ortamı oluştur.
   Bu bağlantı Godot'un kurulu olduğunu kanıtlamaz; ilk görevde kontrol ettir.
5. FIRST_TASK.txt içeriğini gönder. CLAUDE.md, AGENTS.md, STATE.md ve TASK.md kökte kalmalı.
6. Sonuçta değişiklik dalını/PR'yi ve test çıktısını incele. Çalışma main'e aktarılmadıysa yeni
   görevi yanlışlıkla eski main üzerinden başlatma.

## Günlük görev kalıbı
“Hedef: [tek sonuç]. Dal: [dal]. AGENTS.md, STATE.md ve TASK.md'yi oku.
Yalnız [dosyalar/alan] üzerinde çalış. Kabul ölçütü: [test edilebilir sonuç].
İlgili mevcut kontrolleri çalıştır; yapılamayan testi belirt. STATE.md'yi güncelle,
değişiklikleri görev dalına kaydet ve PR/commit bağlantısını ver. Kısa raporla.”

## Tüketim
Aynı işte mevcut oturumda devam et; ilgisiz işte kısa durum notuyla yeni oturum aç.
Otomatik PR düzeltme döngülerini ve paralel ajan ekiplerini varsayılan yapma.
Kullanım limitini arayüzden takip et; kota biterse ücretli API'ye kendiliğinden geçme.
Özel anahtar veya oturum dosyasını depoya koyma.
Bulut görevleri abonelik kullanımına dahildir; dizüstünün açık kalması gerekmez.

Başarılı kurulum kanıtı: depo okunur; gerçek bir değişiklik görev dalında görünür;
hangi kontrolün gerçekten çalıştığı raporlanır. Henüz bu hesapta doğrulanmadı.
Kaynak: https://code.claude.com/docs/en/claude-code-on-the-web

## Çekirdek / oyun ayrımı ve kota
Bu depo ortak çekirdektir. Gerçek oyun görevi için ayrı oyun deposunu ve doğru dalı kullan.
Yalnız ilgili dosyaları yükle; bütün rehberleri her sohbete ekleme. Copilot kullanılmaz.
Günlük deneme kaynak projeyle Godot'ta F5; Actions ve exe üretimi otomatik başlatılmaz.
Ortak kurallar: [verimlilik](VERIMLILIK.md), [görev devri](GOREV-AKISI.md).
