# Düşük tüketim politikası
Amaç ölçülen iş başına tüketimi azaltmak; en ucuz modelle sürekli tekrar yapmak değil.

ChatGPT tek koordinatördür; kullanıcı hazır görevleri ve sonuçları taşır.
Ayrıntı: [yönetici akışı](CHATGPT-YONETICI.md).

## Görev yönlendirme
| İş | Varsayılan | Ne zaman diğer araç? |
|---|---|---|
| Kod ve ilgili test | Küçük işte mevcut ChatGPT/Codex; kapsamlı görevde Claude Code | Devir maliyeti veya mevcut kota bunu gerektiriyorsa |
| Tasarım/teknik karar | ChatGPT | Belirsiz güncel bilgi varsa Gemini araştırması |
| Görsel/arayüz değerlendirmesi | Tek seçilmiş görsel yetenekli araç | Gerçek karşılaştırma ihtiyacı varsa ikinci görüş |
| 3D üretim | Meshy | Önce mevcut model; referans gerekiyorsa tek görsel aracı |
| Dosya sayımı, arama, log süzme | Betik/terminal | Yalnız yorum gerektiren sonucu AI değerlendirir |

Bu roller katı engel değildir; işi başlayan araç tamamlayabiliyorsa gereksiz devretmeyin.
Mevcut oturum bağlamı işe yarıyorsa koruyun. İlgisiz yeni göreve kısa devir notuyla başlayın.
Ana talimatları kısa tutun; kapsamı, ilgili dosyaları ve kabul ölçütünü baştan belirtin.
“Her şeyi tekrar incele” yerine belirli hata/özellik grubu verin.
En güçlü model ve yüksek düşünme düzeyini varsayılan yapmayın; mevcut uygun seçenekle başlayın.
İki başarısız aynı hata düzeltmesi otomatik tekrar yerine kanıt ve yöntem değişikliği gerektirir.

## Tüketim kapıları
- Yeni oyun için PROJECT.md kapsamı ve BUDGET.md sınırları önce belirlenir.
- Günlük test cloud ortamında; Actions yalnız belirli bir bağımsız kontrol istendiğinde.
- Exe yalnız kullanıcı paket istediğinde. Godot F5 denemesi için gerekmez.
- Meshy üretimi önce gerekçe, varlık tanımı ve arayüzde maliyetle planlanır.
  Onaylı bir parti bütçesi içinde rutin adımlarda tekrar tekrar izin istenmez.
- Otomatik API geçişi, periyodik AI taraması, tüm PR'lere AI incelemesi ve model yarışması yok.
- Hesaplarda ek ücretli kullanım açılmaz; gerekli olursa somut maliyet ayrıca kararlaştırılır.
- Kota dolarsa kaldığın yeri kaydet. Erişim sınırlarını aşmaya çalışma.

## Ölçüm
USAGE.csv'ye yalnız gerçek iş sonunda görülebilen farkı yaz; dakika/kredi/token/yüzdeyi ayır.
Bakiye görünmüyorsa bilinmiyor yaz. Claude komut çalıştırmayı yorumlarken kota tüketebilir;
terminal/Godot'un kendisi model tokenı harcamaz. Actions ise ayrı dakika/depolama kullanır.
Bir hafta/iş grubu sonunda tamamlanan sonuç ve tekrar sayısını karşılaştır.
Otomatik bütün sağlayıcılardan bakiye okuma bu çekirdekte yok; tasarruf yüzdesi garanti edilmez.
