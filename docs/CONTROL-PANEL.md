# Pardex Control Panel

Panel: [control-panel/index.html](../control-panel/index.html)

## Çalıştırma
Depoyu indir/klonla, `control-panel/index.html` dosyasını Chrome veya Edge ile aç. Herhangi bir kurulum, Python, Node, servis, API anahtarı veya ücretli AI isteği gerekmez. Panel tamamen istemci tarafında çalışır.

- **Genel Bakış:** sistem rehberleri ve canlı public çekirdek CI özeti.
- **Yeni Oyun:** kısa oyun tanımını alıp ChatGPT'ye taşınacak başlangıç metnini hazırlar. Yeni repo açma bağlantısı vardır; repo otomatik açılmaz.
- **Görev Merkezi:** tek kod yazıcı ilkesine uygun, kopyalanabilir görev paketi oluşturur.
- **Testler & CI:** GitHub public API aracılığıyla `main` dalındaki son workflow sonuçlarını okur. Bu alan yalnız çekirdek deposunundur; oyun kendi deposunda test edilir.
- **Kota & Bütçe:** tasarruf politikası ve gerçek tüketim CSV başlığı.

## Sınırlar
Panel varsayılan olarak veri veya gizli anahtar saklamaz. Kullanıcının yazdığı metin yalnız sayfa belleğinde tutulur; yenileme sırasında kaybolur. GitHub API isteği yalnız herkese açık Actions sonuçlarını okumak içindir. Tarayıcı ağı, CORS veya GitHub hız limiti engellerse sonuçlar görünmeyebilir; doğrudan Actions sayfası bağlantısı kullanılır. Girdi doğrulaması var ancak panel kod yazmaz, görevleri yapay zekâ servislerine otomatik göndermez, oyun deposu oluşturmaz veya bağımsız tamamlanma iddiasında bulunmaz.

## Manuel kalite kontrol
1. HTML dosyasını tarayıcıda aç. Sekmeler arasında geçiş yap.
2. Yeni oyun adı ve açıklaması gir, başlangıç metnini üret ve kopyala.
3. Geçerli bir `owner/repo` ile görev metni oluştur, geçersiz repo değerini reddettiğini kontrol et.
4. CI ekranında sonuçları yenile; bağlantı yokken hata mesajının göründüğünü doğrula.
5. Dar pencere boyutunda panel menüsü ve formların kullanışlı olduğunu kontrol et.

Statik dosya varlığı `scripts/check-template.sh` içinde denetlenir. Bu kontrol tarayıcı çalıştırması veya uçtan uca etkileşim testi yerine geçmez.
