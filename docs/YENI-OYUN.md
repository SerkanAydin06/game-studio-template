# Çekirdekten ayrı oyun deposu
Ana çekirdek ortak yöntemleri barındırır; oyun mekaniği, UI, görsel ve kayıt dosyaları burada tutulmaz.
ChatGPT koordinatör akışı: [CHATGPT-YONETICI.md](CHATGPT-YONETICI.md).
Yeni oyun istendiğinde adını ve hedef public depoyu belirleyin. Mevcut depoya körlemesine kopyalamayın.

## Önerilen oluşturma — AI'nın cloud ortamında
1. Ana çekirdeğin belirli commit'ini kullan; CORE_VERSION ile git commit SHA'sını kaydet.
2. Bash ile: bash scripts/new-game.sh /tam/yol/yeni-oyun oyun-adi
3. Betik yalnız olmayan hedef klasöre yazar; mevcut dosyaları/depoyu değiştirmez.
4. Oluşan dosyalar bağımsız oyun deposuna ilk commit olarak gönderilir.
   Betik repo/hesap oluşturmaz, ağ çağrısı yapmaz veya push etmez.
   Hedef yoksa koordinatör mevcut oluşturma yetkisiyle public depo açar;
   yetkisi yoksa kullanıcıdan public boş depo açıp bağlantısını vermesini ister.
   Yazma/ilk commit yetkisi yoksa kurulumu hazır görev paketiyle doğrulanmış Codex ortamına, uygun değilse Claude Code'a devreder.
5. Ana geliştirici yalnız oyun deposunu seçer. Tam çekirdek rehberleri otomatik yüklenmez.
6. Oyunun owner/repo adı çekirdeğin GAMES.txt dosyasına eklenir (öğrenme döngüsü toplayıcısı için).
7. PROJECT.md ve BUDGET.md oyun kararı verildiğinde doldurulur. Başlangıç sahnesi yalnız boş iskelettir.

## Aktarılan küçük paket
AGENTS.md, CLAUDE.md, STATE.md, TASK.md, PROJECT.md, BUDGET.md, ASSETS.csv, USAGE.csv,
TESTS.md, COORDINATOR.md, ROUTING.md, CORE-FEEDBACK.md, scripts/core-update-check.sh, .godot-version, .godot-project, .gitignore, .gitattributes, game/, scripts/ ve
.studio/CORE_VERSION, SOURCE_COMMIT, SOURCE_REPOSITORY.
templates/game/.github/workflows/game-validation.yml oyun kökündeki .github/workflows/ içine aktarılır.
Public oyunda standart ubuntu-latest ile otomatik import/smoke çalışır; private olursa otomatik job atlanır.
Public dosyalar ve geçmiş herkese görünür; parola/API anahtarı ve paylaşım hakkı olmayan varlık koymayın.
Game-root README Godot'ta açılacak yolu gösterir.
Alternatif: scripts çalıştıramayan ortamda templates/game içeriğini ve new-game.sh'deki
listelenen ortak dosyaları aynı eşlemeyle aktar; kökteki çekirdek workflow'larını kopyalama.

## Güncelleme
Bu kopya bir snapshot'tır; submodule veya gizli otomatik eşitleme yok.
CORE_VERSION ve SOURCE_COMMIT hangi sürümün alındığını gösterir.
Çekirdek yükselince yalnız ihtiyaç duyulan değişikliği oyun deposunda ayrı dalda uygula;
oyuna özgü kuralları, STATE/TASK ve game/ dosyalarını yeniden şablonla ezme.
İlgili testi çalıştır; sonra .studio sürüm kaydını güncelle.
Motor sürümü oyuna özeldir. Başlangıç 4.5.1, “en yeni” tercihi değildir.
Başka sürüm seçilirse indirici hashleri ve export template yolu birlikte güncellenip test edilir.

## Kabul
Yeni projede game/project.godot açılır, F5 çalışır; cloud import/smoke geçer.
GitHub'da doğru hedef ve dal görülür; çekirdek deposu oyun commit'i içermez.
