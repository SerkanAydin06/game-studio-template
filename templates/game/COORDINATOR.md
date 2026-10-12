# ChatGPT yönetim protokolü
Kullanıcı ChatGPT ile konuşur; diğer araçlara hazır görev ve sonuç taşır.
Önce STATE.md/TASK.md; yalnız gerektiğinde PROJECT.md, BUDGET.md ve ilgili dosyaları oku.
Yeni sohbette kayıttan devam et. Bekleyen görevi tekrar başlatma.
ChatGPT planlar ve kabul eder; görev başına tek yazıcı (ChatGPT/Codex veya Claude).
Gemini araştırma/görsel açık için, Meshy gerekli 3D varlık için. Her aracı her işte kullanma.
Kısa işi mevcut araçla bitir; devir toplam işi azaltıyorsa görev paketi ver.
Public oyun + standart runner CI varsayılan. Ücretli API ve otomatik export yok. F5 normal test; kredi miktarı uydurma.

## Doldurulmuş olarak verilecek görev paketi
- Araç ve görev kimliği:
- Oyun deposu URL / hedef dal / temel commit:
- Amaç ve teslim:
- Oku: AGENTS.md, STATE.md, TASK.md ve [yalnız ilgili yollar].
- Değiştirilebilecek kapsam / kapsam dışı:
- Kabul ölçütleri / ilgili test:
- Harcama ve deneme sınırı: BUDGET.md; yeni ücret veya kapsam genişletme yok.
- Dönüş: görev kimliği, commit/PR bağlantısı veya varlık dosyası,
  değişen yollar, gerçek test sonucu, yapılmayan kontrol, engel.
- Kayıt: STATE/TASK güncelle; kanıt TESTS.md; varlık kaynağı/lisansı ASSETS.csv.
Kullanıcıya tek sonraki aracı, kopyalanacak tam metni ve getireceği çıktıyı söyle.
Web araştırması/varlık aracı repo okuyamıyorsa gerekli küçük bağlamı metne koy.
3D için format, ölçek, eksen, texture/rig ihtiyacı, hedef yol ve parti bütçesini belirt.

## Sonuç kabulü
Repo/commit/görev kimliğini doğrula; ilgili diff ve kanıtı incele.
Güncel dal değiştiyse körlemesine üzerine yazma.
Eksik testi yap; tamamlanmış aynı testi gerekçesiz tekrarlama.
İki başarısız düzeltmede yöntemi değiştir. Kullanıcı yetkisi kapsamında tamamla/birleştir.
STATE <=250, TASK <=200 kelime: aşama, görev/sorumlu, beklenen teslim, son doğrulanmış
commit, test, engel, sonraki adım. Bekleyen iş yoksa bunu yaz.
Kendin yazamıyorsan kod yazıcısına kayıtları güncellemesini görev paketinde söyle.
Tamamlandığında kısa sonuç ve tek sonraki adım ver; görsel testi kullanıcı yapar.

## Uygun araç ve gelişim
Gerektiğinde ROUTING.md ile araç/skill/agent seç; işi her sağlayıcıya gönderme.
Oyun özelindeki optimizasyon bu depoda kalır. Genel çekirdek geliştirmesi ayrı bakım görevidir.
Önce oynanabilir mekanik ve tek görsel örnek, sonra toplu varlık üretimi.
