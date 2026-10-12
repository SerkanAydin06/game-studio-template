# Oyun üretim çekirdeği — 3.2.1
Bu depo ortak çalışma kuralları, araç rehberleri ve yeni proje başlangıcıdır.
**Oyun kodu ve oyuna özel üretim ayrı özel depoda geliştirilir.**
Araçlar: Gemini Pro, Claude Code web, ChatGPT Pro/Codex ve Meshy Pro. Copilot kullanılmaz.
Kullanıcı bilgisayarında Python veya yerel AI CLI gerekmez. Normal deneme Godot'ta F5 ile yapılır.

## Yeni sohbetten başlat
ChatGPT'ye depo bağlantısını verip “Bu depoya bağlan; START_HERE.md talimatıyla yeni oyun sürecini başlat” yaz.
ChatGPT kısa oyun tarifini alır, yetkisi varsa ayrı özel depoyu açar; yoksa senden açıp bağlantısını vermeni ister.
Süreci ChatGPT yönetir. Diğer araçlara yalnız gereken hazır görev metnini taşırsın.
[Kısa başlangıç](START_HERE.md) · [Yönetici akışı](docs/CHATGPT-YONETICI.md)

## Nereden başlayacağız?
- [Kurulum ve hesaplar](docs/KURULUM.md)
- [Ayrı oyun deposu açma / çekirdek güncelleme](docs/YENI-OYUN.md)
- [Bilgisayara alma ve Godot'ta deneme](docs/GODOT-YEREL.md)
- [En az kota ile görev dağılımı](docs/VERIMLILIK.md)
- [Varlık, kalite ve test kuralları](docs/URETIM-KALITESI.md)
- [Görev ve hata aktarımı](docs/GOREV-AKISI.md)
- [GitHub Actions: public çekirdek kontrolleri](docs/GITHUB-ACTIONS.md)

## Genel gelişim ve sınırlar
- [Araç, skill ve agent seçimi](docs/ARAC-SKILL-AGENT.md)
- [Çekirdeğin sınırı ve genel iyileştirme](docs/CEKIRDEK-SINIRI.md)
- [Oynanabilir örnekten teslimata kalite kapıları](docs/KALITE-KAPILARI.md)
Çekirdek hiçbir oyuna göre özelleştirilmez. Genel iyileştirmeler ayrı bakım göreviyle yapılır.
Bu sistem kullanıcı aracılı koordinasyondur; sağlayıcılar arasında çalışan otomatik servis değildir.

## Dört aracın rolü
| Araç | Kullanım |
|---|---|
| Claude Code web | ChatGPT'nin hazırladığı sınırlı kod görevi ve ilgili testler |
| ChatGPT Pro / Codex | Tek koordinatör: ihtiyaç toplama, depo kurulumu, görev seçimi, sonuç kabulü; uygunsa doğrudan uygulama |
| Gemini Pro web | Gerektiğinde araştırma ve görsel değerlendirme |
| Meshy Pro web | Önceden tanımlanan, tekrar kullanılabilir 3D varlık |

Her görevi dört araca yaptırmayın. Bir görevde tek dosya yazan sorumlu olsun.
Farklı sağlayıcılar otomatik olarak birbirleriyle konuşmaz.
Abonelik kotaları ayrıdır; ücretli API otomasyonu bu çekirdekte yoktur.

## Depo sınırı
- docs/: gerektiğinde açılan rehberler; tümü her görevde modele verilmez.
- scripts/: AI çağrısı olmadan çalışan yardımcılar; cloud Linux ortamına yöneliktir.
- templates/game/: bağımsız oyun deposuna aktarılacak küçük başlangıç.
- validation/: yalnız çekirdeğin kendi Godot doğrulama sahnesi; oyun değildir.
- STATE.md/TASK.md: yalnız bu çekirdeğin güncel durumu/görevi.
- ASSETS.csv: ortak yeniden kullanılabilir varlık indeksi; USAGE.csv: ölçülen kullanım.
Oyunun STATE/TASK, tasarımı, test notları ve varlık listesi kendi deposunda bulunur.

## Actions
Public çekirdekte main push/PR şablon kontrolleri otomatik çalışır.
Godot kontrolü yalnız ilgili dosyalar değiştiğinde çalışır; çekirdek sahnesini ve
ayrı üretilen oyun başlangıcını aynı doğrulanmış motorla import/smoke testinden geçirir. Depo private ise otomatik işler atlanır.
Görünürlük değişikliği tek başına çalışma başlatmaz; ilk kontrol elle başlatılabilir.
Oyun depolarına workflow kopyalanmaz; onların görünürlüğü ayrı karardır.
Godot kontrolünde Windows export varsayılan kapalıdır. Kullanıcı istediğinde açılır.
Günlük geliştirme kontrolü AI'nın cloud ortamında, görsel/oynanış testi kullanıcının Godot'unda.
Önceki GitHub Godot import/smoke/export ve şablon kontrolleri başarıyla doğrulandı:
[Godot](https://github.com/SerkanAydin06/game-studio-template/actions/runs/38245824512),
[şablon](https://github.com/SerkanAydin06/game-studio-template/actions/runs/38245824412).
Bu geçmiş başarı, her yeni oyunun testinin geçtiği anlamına gelmez.
