# Pardex Control Panel

Panel: [control-panel/index.html](../control-panel/index.html)

## İnternetten açma (GitHub Pages)
Yayın adresi: https://serkanaydin06.github.io/pardex-uretici/

Depo yöneticisi GitHub'da **Settings → Pages → Build and deployment → Source: GitHub Actions** ayarını seçmelidir. `.github/workflows/pages-control-panel.yml` yalnız main dalında panel değiştiğinde (veya elle tetiklendiğinde) `control-panel/` klasörünü yayımlar. GitHub Pages etkin değilse deployment başarısız olabilir; adres doğrulanmadan canlı yayın iddiasında bulunmayın.

**Güvenlik:** Site herkese açıktır. Panel form girdilerini GitHub'a veya bir AI servisine yollamaz; GitHub'a yalnız anonim public CI okuma isteği yapar. Gizli anahtar girmeyin. Yayın aşamasında yalnız panel dizini aktarılır.

## Çalıştırma
Depoyu indir/klonla, `control-panel/index.html` dosyasını Chrome veya Edge ile aç. Herhangi bir kurulum, Python, Node, servis, API anahtarı veya ücretli AI isteği gerekmez. Panel tamamen istemci tarafında çalışır.

- **Projeler & İlerleme:** tarayıcıda proje ve görev kaydı, görev durumu, JSON yedek dışa/içe aktarma; GitHub'a otomatik yazmaz; proje kartlarında public oyun depolarının son main dalı GitHub Actions sonuçlarını salt-okunur görüntüler.\n- **Genel Bakış:** sistem rehberleri ve canlı public çekirdek CI özeti.
- **Yeni Oyun:** kısa oyun tanımını alıp ChatGPT'ye taşınacak başlangıç metnini hazırlar. Yeni repo açma bağlantısı vardır; repo otomatik açılmaz.
- **Görev Merkezi:** tek kod yazıcı ilkesine uygun, kopyalanabilir görev paketi oluşturur.
- **Testler & CI:** GitHub public API aracılığıyla `main` dalındaki son workflow sonuçlarını okur. Bu alan yalnız çekirdek deposunundur; oyun kendi deposunda test edilir.
- **Kota & Bütçe:** tasarruf politikası ve gerçek tüketim CSV başlığı.

## Sınırlar
Panel proje/görev listelerini tarayıcının yerel depolamasına (localStorage) kaydeder. Yeni oyun ve görev metni formları sayfa yenilemesinde sıfırlanır. Özel/ortak bilgisayarda hassas bilgi girmeyin ve gerekirse site verilerini temizleyin. Veriler cihazlar arasında otomatik eşitlenmez; JSON yedeğini kendiniz koruyun. GitHub API isteği yalnız herkese açık Actions sonuçlarını okumak içindir. Tarayıcı ağı, CORS veya GitHub hız limiti engellerse sonuçlar görünmeyebilir; doğrudan Actions sayfası bağlantısı kullanılır. Girdi doğrulaması var ancak panel kod yazmaz, görevleri yapay zekâ servislerine otomatik göndermez, oyun deposu oluşturmaz veya bağımsız tamamlanma iddiasında bulunmaz.

## Manuel kalite kontrol
1. HTML dosyasını tarayıcıda aç. Sekmeler arasında geçiş yap.\n2. Proje ve görev ekle, durumunu değiştir, sayfayı yenile ve kayıtların korunduğunu denetle. JSON yedeğini indirip geri yükle; geçersiz JSON dosyasını reddettiğini denetle.
3. Yeni oyun adı ve açıklaması gir, başlangıç metnini üret ve kopyala.
4. Geçerli bir `owner/repo` ile görev metni oluştur, geçersiz repo değerini reddettiğini kontrol et.
5. CI ekranında sonuçları yenile; bağlantı yokken hata mesajının göründüğünü doğrula.
6. Proje kartında CI sonuçlarını kontrol et ve Yenile butonunu dene; özel depoda veya API sınırında bilgilendirme çıktığını doğrula.\n7. Dar pencere boyutunda panel menüsü ve formların kullanışlı olduğunu kontrol et.

Statik dosya varlığı `scripts/check-template.sh` içinde denetlenir. Bu kontrol tarayıcı çalıştırması veya uçtan uca etkileşim testi yerine geçmez.
