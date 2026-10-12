# Görev dağılımı (tek kaynak)
Amaç: kabul edilen sonuç başına en az tur ve en az ücretli kredi. Bu tablo varsayılandır;
erişim veya kota yoksa "Yedek" sütunu kullanılır. Tasarruf oranı ölçülmeden iddia edilmez.

## Temel ilkeler
- ChatGPT koordinatördür ama işçi değildir: planlar, paket yazar, kabul eder. Kod okuyup
  yazmak koordinatör kotasını hızla tüketir; uygulamayı yazma/test erişimi olan araca ver.
- Kod yazan araç testleri de çalıştırabilmelidir. Bu çekirdekte bulutta Godot kurup
  test çalıştırması doğrulanan araç Claude Code web'dir (docs/DOGRULAMA.md). Codex bulut
  ortamında Godot testi doğrulanana kadar yedek kod yazıcıdır.
- Hatayı, kodu yazan oturum düzeltir: bağlamı hazırdır, yeniden okuma maliyeti yoktur.
- Varsayılan ikinci inceleme yoktur. Kabul kanıtı: yeşil CI + PR özeti + riskli dosyanın diff'i.
- Ücretli kredi sırası: mevcut varlık → ücretsiz CC0 → Gemini 2D görsel → Meshy 3D.

## Aşamaya göre
| Aşama | Birincil | Kullanıcının taşıdığı | Yedek / not |
|---|---|---|---|
| 1. Fikir, kapsam, bütçe | ChatGPT | Oyun fikri | Başka araç yok; PROJECT/BUDGET tek mesajda |
| 2. Depo kurulumu | ChatGPT (yazma yetkisi varsa), yoksa Claude Code | Boş public depo bağlantısı | Kurulumu iki araca yaptırma |
| 3. İlk oynanabilir döngü | Claude Code, tek kilometre taşı görevi | Görev paketi → PR bağlantısı | Codex; yer tutucu görseller |
| 4. Görsel stil | Gemini: tek stil notu + 1-3 referans görsel | Ekran görüntüsü → stil kararı | ChatGPT görsel; seri üretim yok |
| 5. 2D varlık, UI, doku | CC0 paket; yoksa Gemini görsel üretimi (hesapta varsa; ASSETS.csv'ye "AI üretimi" kaydı) | Dosyalar + lisans notu | Meshy kullanılmaz |
| 6. 3D varlık | CC0 paket; yoksa Meshy Image to 3D (Gemini referansıyla) | GLB dosyası | Referans görsel, Text to 3D'ye göre sonucu daha öngörülebilir kılmayı hedefler |
| 7. Özellik ekleme | Claude Code, ilgili işler tek görevde | Görev paketi → PR | Codex; küçük tek dosya işi ChatGPT |
| 8. F5 hata düzeltme | Kodu yazan oturum, test-önce | Tek hata paketi (panel) | Oturum kapandıysa yeni Claude oturumu |
| 9. Görsel/oynanış kontrolü | Kullanıcı F5 | 1 ekran görüntüsü + not | Gemini yalnız görsel kalite sorusu için |
| 10. Kabul ve kayıt | ChatGPT | PR bağlantısı | CI kırmızıysa paket yazıcıya geri |
| 11. Paket (.exe) | Elle Actions export | İstek | Yalnız paylaşım/mağaza için |
| 12. Çekirdek iyileştirme | Claude Code, çekirdek deposunda tek PR (kilometre taşı sonunda, ölçüte uyan geri bildirim varsa) | Çekirdek bakım paketi | Codex; ölçüte uymayan öneri bekler |

## Kota dolunca
Kod: Claude ↔ Codex; devir yalnız STATE.md + TASK.md + açık PR ile, sohbet geçmişi taşınmaz.
Koordinatör: ChatGPT dolarsa kullanıcı aynı görev paketini doğrudan Claude'a verebilir;
Claude STATE/TASK'ı günceller, ChatGPT sonra kayıttan devam eder.
Gemini/Meshy: beklet; mekanik geçici varlıkla ilerler. Ücretli API'ye geçilmez.

## Görev büyüklüğü
Çok küçük görev = çok devir ve bağlam okuma; çok büyük görev = belirsiz kabul ve tekrar.
Doğru boy: tek oynanabilir sonuç, 1-6 dosya, net kabul ve test. Benzer küçük işleri birleştir.
Paralel çalışma yalnız farklı dosya alanlarında (ör. kod Claude'da, referans Gemini'de).

## Öğrenme
Oyun ROUTING.md'si tablodan sapmaları ve nedenini tutar. Benzer birkaç gerçek işte tekrar eden
fark varsa bu tablo ayrı çekirdek göreviyle güncellenir (CEKIRDEK-SINIRI.md).
