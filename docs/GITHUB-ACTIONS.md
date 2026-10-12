# GitHub Actions
## Ne eklendi?
Studio template checks adlı, yalnız Run workflow ile çalışan bir kontrol.
README, ortak talimatlar, durum/görev ve dört araç rehberinin varlığını denetler.
Durum/görev uzunluğunu ve CSV başlıklarını kontrol eder. AI/API çağrısı yoktur.
Godot çalıştırmaz ve Windows paketi üretmez; bunlar sonraki aşamadır.

## Nasıl açılır?
1. Bu PR main'e birleştirildikten sonra Actions sekmesine git.
2. Workflow dosyası varsayılan dalda olmalı.
3. Studio template checks > Run workflow > doğru dalı seç > Run workflow.
4. Logdaki PASS yalnız şablon kontrolünü ifade eder.
5. Bulutta dakika harcar; AI tokenı harcamaz. Bu sohbetten çalıştırılmadı.

## Kota
Özel depoda GitHub-hosted işler planın dakika/depolama kotasına tabidir.
GitHub hesabında Settings > Billing / Usage bölümünde Actions kullanımını incele;
arayüz başlıkları hesaba göre değişebilir.
“Limitim yok” ifadesinin sınırsız kullanım mı yoksa kalan dakika olmaması mı olduğu
netleşmeden otomatik push/PR tetikleyicisi eklenmeyecek.
Kota yoksa bu ilk kontrol Claude bulut ortamında bash scripts/check-template.sh ile de çalışabilir.
Self-hosted runner kendi makinesini açık tutmayı ve bakımı gerektirir; şu an kurulu değil.
Projeyi ücretsiz dakika için herkese açık yapmayacağız.

## Tasarlanan sonraki aşama — henüz uygulanmadı
Motor sürümünü ve indirme bütünlüğünü sabitle.
Tek Linux işiyle headless import ve gerçek testleri çalıştır.
Windows export için eşleşen export templates ve export preset ekle.
İsteğe bağlı export çıktısını kısa saklama süresiyle artifact olarak yükle.
Gerçek Windows PC'de açılış/oynanış testi yap. Linux export başarısı bunu kanıtlamaz.
Gereksiz model çağrısı veya her yorumda AI düzeltmesi ekleme.
Mevcut iş: tek runner, 3 dakika timeout, aynı dalda eski çalışmayı iptal eder;
artifact/cache yüklemez, cron/push/PR tetikleyicisi içermez.

Kaynaklar:
https://docs.github.com/en/billing/concepts/product-billing/github-actions
https://docs.github.com/en/actions/how-tos/manage-workflow-runs/manually-run-a-workflow
