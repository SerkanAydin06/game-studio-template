# Pardex Control Panel

Panel: [control-panel/index.html](../control-panel/index.html)

## İnternetten açma (GitHub Pages)
Yayın adresi: https://serkanaydin06.github.io/pardex-uretici/

Depo yöneticisi GitHub'da **Settings → Pages → Build and deployment → Source: GitHub Actions** ayarını seçmelidir. `.github/workflows/pages-control-panel.yml` yalnız main dalında panel değiştiğinde (veya elle tetiklendiğinde) `control-panel/` klasörünü yayımlar. GitHub Pages etkin değilse deployment başarısız olabilir; adres doğrulanmadan canlı yayın iddiasında bulunmayın.

**Güvenlik:** Site herkese açıktır. Panel form girdilerini GitHub'a veya bir AI servisine yollamaz; GitHub'a yalnız anonim public CI okuma isteği yapar. Gizli anahtar girmeyin. Yayın aşamasında yalnız panel dizini aktarılır.

## Çalıştırma
Depoyu indir/klonla, `control-panel/index.html` dosyasını Chrome veya Edge ile aç. Herhangi bir kurulum, Python, Node, servis, API anahtarı veya ücretli AI isteği gerekmez. Panel tamamen istemci tarafında çalışır.

- **Projeler & İlerleme:** tarayıcıda proje ve görev kaydı, görev durumu (kanıt kaydı olmadan "Tamamlandı" seçilirse onay ister), tek dosyalık tam yedek (projeler + sonuç/kullanım kayıtları) dışa/içe aktarma; eski yalnız-proje yedekleri de içe alınır; proje silinince o projenin kayıtları da silinir; GitHub'a otomatik yazmaz; proje kartlarında public oyun depolarının son main dalı GitHub Actions sonuçlarını salt-okunur görüntüler.
- **Genel Bakış:** sistem rehberleri ve canlı public çekirdek CI özeti.
- **Yeni Oyun:** kısa oyun tanımını alıp ChatGPT'ye taşınacak başlangıç metnini hazırlar. Yeni repo açma bağlantısı vardır; repo otomatik açılmaz.
- **Görev Merkezi:** tek kod yazıcı ilkesine uygun, okunacak dosya listesi ve deneme sınırı içeren görev paketi; ayrıca F5 denemesindeki hataları tek pakette toplayan, önce yeniden üreten test yazdıran hata raporu oluşturur.
- **Testler & CI:** GitHub public API aracılığıyla `main` dalında her çekirdek workflow'unun (şablon, Godot, panel yayını) son sonucunu ayrı ayrı okur. Yanıtlar oturum boyunca 10 dakika önbelleğe alınır; "Sonuçları yenile" önbelleği atlar. Bu, anahtarsız GitHub API sınırını (saatte 60 istek) korur. Bu alan yalnız çekirdek deposunundur; oyun kendi deposunda test edilir.
- **Sonuç & Kullanım:** biten görevlerin test/PR kanıtlarını yerel kaydetme, ölçülen sağlayıcı kullanımını kaydetme, kullanım CSV dışa aktarma. Gizli API anahtarı gerekmez.
- **Kota & Bütçe:** kota tasarrufu kuralları ve gerçek tüketim CSV başlığı.

## Sınırlar
Panel proje/görev listelerini ve manuel sonuç/kullanım kayıtlarını tarayıcının yerel depolamasına (localStorage) kaydeder. "Tam yedeği indir" projeleri ve tüm sonuç/kullanım kayıtlarını tek dosyada içerir. Yeni oyun ve görev metni formları sayfa yenilemesinde sıfırlanır. Özel/ortak bilgisayarda hassas bilgi girmeyin ve gerekirse site verilerini temizleyin. Veriler cihazlar arasında otomatik eşitlenmez; JSON yedeğini kendiniz koruyun. GitHub API isteği yalnız herkese açık Actions sonuçlarını okumak içindir. Tarayıcı ağı, CORS veya GitHub hız limiti engellerse sonuçlar görünmeyebilir; doğrudan Actions sayfası bağlantısı kullanılır. Girdi doğrulaması var ancak panel kod yazmaz, görevleri yapay zekâ servislerine otomatik göndermez, oyun deposu oluşturmaz veya bağımsız tamamlanma iddiasında bulunmaz.

## Manuel kalite kontrol
1. HTML dosyasını tarayıcıda aç. Sekmeler arasında geçiş yap.
2. Proje ve görev ekle, durumunu değiştir, sayfayı yenile ve kayıtların korunduğunu denetle. Tam yedeği indir, projeyi sil, yedeği geri yükle ve proje ile kayıtların döndüğünü denetle; geçersiz JSON dosyasını reddettiğini denetle.
3. Yeni oyun adı ve açıklaması gir, başlangıç metnini üret ve kopyala.
4. Geçerli bir `owner/repo` ile görev metni oluştur, geçersiz repo değerini reddettiğini kontrol et.
5. CI ekranında sonuçları yenile; bağlantı yokken hata mesajının göründüğünü doğrula.
6. Proje kartında CI sonuçlarını kontrol et ve Yenile butonunu dene; özel depoda veya API sınırında bilgilendirme çıktığını doğrula.
7. Dar pencere boyutunda panel menüsü ve formların kullanışlı olduğunu kontrol et.

Statik dosya varlığı ve panel sürümünün CORE_VERSION ile aynı olması `scripts/check-template.sh` içinde denetlenir. Bu kontrol tarayıcı çalıştırması veya uçtan uca etkileşim testi yerine geçmez.

## Önceki panelden taşınan işlevler
Görev sonucunu commit/PR bağlantısıyla kaydetme ve USAGE.csv biçiminde gerçek tüketim kaydetme bu sürümde yereldir. Önceki hesapla eşitlenen bulut veri alanı taşınmadı; güvenli hesap doğrulaması olmadan istemciye gizli yetki anahtarı eklenmez.

## GitHub görev takibi (yarı otomatik)
Proje kartındaki **GitHub Issues / PR görevlerini getir** düğmesi, yalnız public oyun deposundaki son 50 Issue ve 50 PR kaydını salt-okunur getirir. Açık/kapalı durumunu, birleştirilmiş PR'ları ve PR açıklamalarındaki `fixes #123` benzeri kapanış referanslarını gösterir. İstekler kullanıcı tetiklemelidir; 10 dakika önbelleğe alınır. Veriler GitHub API hız limitine tabidir. Tamamlanma onayı, görsel inceleme ve AI kaynak tüketimi otomatik değildir. Büyük depolarda sonuçlar kısmi olabilir. Yeni görev açmak ve onaylamak için GitHub bağlantısını kullanın; gizli token girilmez.

## Başlatıcı ve kontrolcü düğmeleri
Oyun kartı aşama, aktif görev ve sonraki adımı oyunun STATE.md/TASK.md dosyalarından okur (public ham dosya; API kotası harcamaz).
**▶ Sonraki görevi başlat** kısa görev metnini panoya kopyalar; ChatGPT/Codex'e yapıştırılır.
**✔ F5 onayı ver** ve **✖ Hata bildir** oyun deposunda hazır doldurulmuş GitHub issue sayfasını açar (kendi GitHub oturumunla, token yok).
Oyun AI'ları bu issue'ları görev başında okur: hata test-önce düzeltilir (PR'da Fixes #N), onay kabul kanıtı sayılır.

## Otomatik takip (kota harcamadan)
Panel GAMES.txt listesindeki public oyun depolarını sayfa açılışında keşfeder ve eksik projeleri yerel listeye ekler. Kullanıcının sildiği proje bu tarayıcıda yok sayılır ve otomatik geri eklenmez; elle tekrar eklenirse takip yeniden başlar. Aynı anda yapılan aynı GitHub istekleri birleştirilir; anahtarsız API sınırı saatte 60 istektir, panel açıkken oyun başına yaklaşık 10 dakikada 3 istek yapılır. Sayfa açık ve görünürken 5 dakikada bir public GitHub API durumunu yeniler (API çağrıları önbelleğe alınır). Proje kartında açık/kapalı Issues, PR ve CI bilgisi bulunur. İşin teknik bitiş sinyali ancak ilgili Issue kapalı, onu kapatan PR birleşmiş ve aynı merge commit için GitHub Actions CI başarılıysa gösterilir. Gerekli Godot F5/görsel onayı teknik sinyalden ayrıdır. Panel sayfası kapalıyken yenileme veya ChatGPT sohbetine bildirim yapamaz. GAMES.txt kaydı olmayan proje kullanıcının manuel eklediği projeler arasında kalabilir; otomatik kayıt açma yazma yetkisi olan koordinatörün görev tanımıdır. GitHub API kota sınırları, private depolar ve CI eşleşmeyen PR'larda belirsiz durum açıkça gösterilir.

## Kabul göstergesi (güvenli)
Panel birleştirilmiş PR için ilişkilendirilmiş kapalı Issue ve merge commit üzerinde görünen tüm CI çalışmalarının başarılı olmasını arar; yalnız bir yeşil test yeterli değildir. GitHub API'nin son 20 çalışması dışındaki testler veya branch protection zorunlu kontrol listesi doğrulanamaz. Bu nedenle panel **teknik kontroller başarılı** gösterebilir, fakat **Patron, iş tamamlandı** kararını vermez. Nihai kabul için koordinatör zorunlu kontrolleri ve gerekiyorsa kullanıcı F5/görsel onayını doğrular. Kullanıcıya gerçek dışı tamamlandı bildirimi yapılmaz.
