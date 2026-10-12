# Görev yönlendirme ve öğrenme
ChatGPT tek koordinatör; görev başına tek yazıcı. Bu kayıt yalnız bu oyun içindir.
Önce mevcut araç/betik/varlık; ardından gerekli erişimi olan en az aktarım gerektiren araç.
ChatGPT/Codex varsayılan kod işleri için; Claude Code yalnız ağır mimari veya son kritik inceleme için, ChatGPT/Gemini araştırma veya görsel değerlendirme için,
Meshy yalnız gerekli 3D üretim için adaydır. Roller kesin kalite sıralaması değildir.
Oturumdaki uygun skill'i oku; kurulu veya yetkili varsayma.
Bağımsız büyük işler varsa ve oturum kuralları izin verirse en fazla iki alt agent;
küçük işte veya aynı dosyada paralel yazma için agent kullanma.
Agent/skill/sağlayıcı seçimini TASK içinde bir cümleyle gerekçelendir.
Bilinen kota sınırını kullan; bilinmiyorsa uydurma. Ücretli API fallback yok.

## Varsayılan dağılım (çekirdek docs/GOREV-DAGILIMI.md özeti)
| İş | Birincil | Yedek |
|---|---|---|
| Kapsam, plan, görev paketi, kabul | ChatGPT | Kullanıcı paketi doğrudan Claude'a verir |
| Kod + test (kilometre taşı, özellik) | Codex (Godot ortamı doğrulanırsa) | Claude Code yalnız ağır/zor işte |
| F5 hata düzeltme (test-önce) | Kodu yazan oturum | Codex/Claude zorluğa göre |
| Görsel stil, 2D referans/varlık | CC0 paket, sonra Gemini | ChatGPT görsel |
| 3D varlık | CC0 paket, sonra Meshy Image to 3D | Geçici şekil |
| Görsel/oynanış kontrolü | Kullanıcı F5 | — |
Varsayılan ikinci inceleme yok. Kabul: yeşil CI + PR özeti + riskli dosya diff'i.

## Kısa kayıt
Yalnız yönlendirme kararını değiştiren sonuçları burada tut; son 10 kayıt yeterli.
Sayısal gerçek kullanım USAGE.csv; test kanıtı TESTS.md.
| Görev/tür | Araç ve gereken skill/agent | Seçim nedeni | Kabul/tekrar | Bir sonraki karar |
|---|---|---|---|---|
Henüz tamamlanmış görev yok. Bakiye/erişim bu dosyada otomatik güncellenmez.

## Çekirdek sınırı
Oyun için çekirdeği değiştirme. Mekanik, tema, motor tercihi, asset ve özel kurallar burada kalır.
Genel verimlilik fırsatı bulunursa oyun verisi içermeyen kısa öneri kaydet.
Çekirdekte ayrı bakım görevi/dal/PR ve genel uygulanabilirlik kontrolü olmadan uygulama.
Mevcut oyunu yeni çekirdek şablonuyla ezme; sürüm geçişi seçici ve testli olur.
