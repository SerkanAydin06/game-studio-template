# Pardex görev dağılımı — kota korumalı

## Öncelik
- Kullanıcı oyun fikrini verir ve public depoyu açar. Sonraki planlama, görev oluşturma, kontrol ve kayıtlar mümkün olan yetkilerle ChatGPT ve GitHub otomasyonu tarafından yürütülür.
- Tek görevde tek kod yazıcısı. Varsayılan ChatGPT (doğrudan yazma/test yeteneği varsa) veya Codex; çalışma ortamı ve Godot testi doğrulanmadan yetenek varsayılmaz.
- Claude Code yalnız zor mimari, çok dosyalı karmaşık hata, uzman inceleme veya Codex'in kanıtlı başarısızlığı için. Her PR için Claude incelemesi yok; kritik sürüm öncesi kısa son kontrol istenebilir.
- Claude'un kalan kotası bilinmiyorsa tahmin edilmez. Ek ücretli API'ye geçilmez.
- GitHub Actions CI ve PR/Issue durumları panelden salt okunur izlenir. CI başarısı oynanış veya görsel onay yerine geçmez.

## Görev dağılımı
| İş | Birincil | Yedek |
|---|---|---|
| Kapsam, plan, durum, PR kabulü | ChatGPT (mevcut GitHub yetkisiyle) | GitHub üzerinden manuel karar |
| Küçük kod değişikliği / düzeltme | ChatGPT (yazma/test yetkisiyle) | Codex |
| Orta özellik, Godot kodu ve test | Codex (ortam doğrulanırsa) | Claude yalnız zorunluysa |
| Zor mimari / tekrarlayan hata | Claude Code (hedefli paket) | Codex alternatif yaklaşım |
| Görsel/referans | Mevcut CC0 / ChatGPT / Gemini | Kullanıcı onayı |
| 3D özel varlık | Meshy, ancak gerekliyse | Geçici varlık |
| Test / derleme | GitHub Actions standart runner | Yerel Godot F5 |
| Kritik teslim öncesi denetim | ChatGPT + CI; ihtiyaç varsa Claude kısa inceleme | Kullanıcı F5 |
| Çekirdek iyileştirme (öğrenme döngüsü) | Kilometre taşı sonunda, ölçüte uyan CORE-FEEDBACK satırları için tek çekirdek PR: ChatGPT/Codex | Claude yalnız zor değişiklikte |

## Kota dolunca
- Kod: ChatGPT ↔ Codex; Claude yalnız zor işte. Devir STATE.md + TASK.md + açık PR ile, sohbet geçmişi taşınmaz.
- Gemini/Meshy: beklet; mekanik geçici veya CC0 varlıkla ilerler. Ücretli API'ye geçilmez.
- Çekirdekten kaynaklanan ek tur görülürse oyunun CORE-FEEDBACK.md dosyasına tek satır yazılır (docs/CEKIRDEK-SINIRI.md).

## Tek seferde tamamla
- Önce güncel TASK/STATE ve ilgili dosyalar. Benzer küçük işleri tek işte topla; gereksiz devretme/tekrar inceleme yok.
- Kod yazan oturum kod+test+düzeltmeyi üstlenir. PR açıklamasına ilgili Issue kapanış referansı (ör. Fixes #12) eklenir.
- Otomasyon PR, test ve merge bilgilerini izler. PR merge ve CI başarıyla tamamlanmadan "Patron, iş tamamlandı." denmez. Kullanıcı F5 onayı gereken işlerde ayrıca onay beklenir.
- Ara durum mesajları kısa: "Çalışıyor", "Kontrol bekliyor", "Test başarısız". Başarılı teslimde yalnız "Patron, iş tamamlandı." + bağlantı + gerekirse tek sonraki adım.
- Panel kod yazamaz, araçlar arası mesaj gönderemez veya arka planda sohbet sürdüremez. Sayfa açıkken GitHub salt-okunur durumunu yenileyebilir.

## Ölçüm
- Kullanım ve tekrar sayısı yalnız gerçekte gözlenen değerdir. USAGE.csv veya panel kayıtlarına yazılır; kota ölçülmeden tasarruf yüzdesi uydurulmaz.
