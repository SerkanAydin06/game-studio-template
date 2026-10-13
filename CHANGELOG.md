# Çekirdek değişiklikleri

## 3.6.0
Kullanıcı başlatıcı ve kontrolcü: oyun kartı aşama/aktif görev/sonraki adımı oyunun STATE.md ve
TASK.md dosyalarından kendiliğinden okur (elle görev isteğe bağlı). Kartta ▶ Sonraki görevi başlat
(kısa görev metni kopyalar), ✔ F5 onayı ve ✖ Hata bildir (hazır GitHub issue açar) düğmeleri.
Tüm AI'lar: yanıt en fazla 3 satır, sorular tek mesajda en fazla 3, sonra onay beklemeden başla.
Oyun AI'ları "Hata:"/"F5 onayı:" issue'larını işler ve bitince sonraki görevi TASK.md'ye yazar.
Görev dağılımı ChatGPT/Codex öncelikli (Claude yalnız zor işte). Ayrıca 3.5.0 sonrası:
actions/checkout v7.0.1 ve actions/upload-artifact v7.0.1 (Node 24) SHA ile sabitlendi;
Node 20 kullanımdan kaldırma uyarısı giderildi. Oyun başlangıcının CI'sı da güncellendi.
Panel: oyun kartında GitHub Issue/PR takibi (#20) çalışır hale getirildi; eksik showGitHubTasks
yazıldı ve check-template.sh ile denetleniyor. GAMES.txt: SerkanAydin06/DenemeMario eklendi.
Otomatik takip (#22–#24) düzeltmeleri: eşzamanlı aynı API istekleri birleştirildi (yüklemede oyun başına
7 → 3 istek), silinen proje otomatik geri eklenmiyor, panel görev aracı ve çekirdek bakım paketi yeni
görev dağılımına uyduruldu, GOREV-DAGILIMI.md'ye çekirdek iyileştirme ve kota dolunca bölümü geri eklendi.

## 3.5.0
Öğrenme döngüsü: oyunlar çekirdek eksiklerini CORE-FEEDBACK.md'ye tek satırla yazar (ek AI turu yok);
haftalık core-feedback.yml (AI yok, anahtar yok) GAMES.txt'deki public oyunların açık satırlarını
tek issue'da toplar; kilometre taşı sonunda ölçüte uyan öneriler tek çekirdek PR'ında uygulanır.
Oyun CI'sı yeni çekirdek sürümünü bildirir (scripts/core-update-check.sh, değişiklik özetiyle).
Panel: oyun kartında çekirdek sürümü ve açık öneri sayısı; çekirdek bakım paketi.
Mevcut oyunlar: CORE-FEEDBACK.md ve scripts/core-update-check.sh seçerek eklenebilir.

## 3.4.0
Kontrol paneli (#11–#16) sürüme alındı ve düzeltildi: tek dosyalık tam yedek (projeler + kayıtlar),
proje silinince kayıtların da silinmesi, kanıtsız "Tamamlandı" uyarısı, workflow başına CI durumu,
10 dk API önbelleği, okunacak dosya listesi/deneme sınırlı görev paketi ve F5 hata paketi.
Oyun başlangıcı: game/tests/test_*.gd otomatik test çalıştırıcısı; tüm script/sahne derleme kontrolü;
ekran ölçekleme (canvas_items/expand); tipli GDScript uyarısı; testler export dışında.
Görev dağılımı tek kaynakta (docs/GOREV-DAGILIMI.md): aşamaya göre birincil/yedek araç,
koordinatör kodu yazmaz, hatayı kodu yazan oturum düzeltir, varsayılan ikinci inceleme yok.
Belgeler: kota tasarrufu kuralları, ücretsiz CC0 varlık önceliği, test-önce hata düzeltme.
Pages workflow action'ları SHA ile sabitlendi; README/panel sürümü CORE_VERSION ile denetlenir.
docs/INDEX.md doküman haritası eklendi. Mevcut oyunlara otomatik uygulanmaz;
istenirse game/smoke_test.gd ve game/tests/ seçerek kopyalanır.
Geri alma: bu sürümün merge commit'ini revert et.

## 3.3.0
Kullanıcının tercihiyle yeni oyunlar public varsayılır. Başlangıç paketi oyuna ait
standart runner CI içerir; export elle seçilir. Mevcut oyunlar otomatik değiştirilmez.

## 3.2.1
Public CI ayrı oluşturulan oyun başlangıcını aynı motorla doğrular. Koordinatör ve
yönlendirme dosyaları zorunlu kontrole alındı. İlk giriş/durum belgeleri güncellendi.
Yeni özellik/mekanik yok; mevcut oyunlara otomatik güncelleme yok.

## 3.2.0
Genel iyileştirme sınırı, kanıta göre araç/skill/agent seçimi, oyun ROUTING.md kaydı
ve üretim kalite kapıları. Motor/oyun kodu değişmedi; mevcut oyunlara otomatik uygulanmaz.
Geri alma: bu sürümün PR merge commit'ini revert et; oyun depolarına dokunma.

## 3.1.0
ChatGPT koordinatörü, yeni sohbet girişi, yetkiye göre ayrı depo kurulumu, hazır görev aktarımı.

## 3.0.0
Ortak çekirdek/bağımsız oyun başlangıcı, elle Actions ve isteğe bağlı export.
