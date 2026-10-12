# Actions: istek üzerine
GitHub Pro kullanımı kullanıcı tarafından onaylandı; kota sınırsız varsayılmaz.
Her iki workflow yalnız workflow_dispatch ile çalışır. Commit/push/PR/cron çalıştırmaz.

## Günlük akış
Claude/Codex cloud ortamında ilgili betikleri çalıştırır; kullanıcı Godot'ta F5 ile dener.
Actions bağımsız doğrulama gerektiğinde kullanılacak. Bu komutlarda AI/API çağrısı yoktur;
AI'nın komutları yönetmesi kendi abonelik kullanımına, Actions ise ayrı dakika kotasına tabidir.

## Elle kontrol
Actions > Studio template checks > Run workflow: ortak dosya ve durum boyutu kontrolü.
Actions > Godot validation > Run workflow:
- export_windows işaretlenmezse yalnız motor import ve smoke testi.
- export_windows özellikle işaretlenirse Windows template indirilir, exe üretilir.
- Çıktı studio-windows-check adıyla bir gün saklanır; günlük Godot denemesi için gerekmez.
İşler read-only yetki, sabit action commit'i, timeout ve eski aynı-dal işini iptal kullanır.
Doküman düzenlemek yeni iş başlatmaz. Yeni oyunlara workflow otomatik kopyalanmaz.

## Cloud kontrolleri
bash scripts/check-template.sh
bash scripts/godot-install.sh
bash scripts/godot-check.sh
Son ikisi çekirdekte validation/, oluşturulan oyun deposunda game/ projesini kullanır.
.godot-project yolu ve .godot-version motor sürümü bunu belirler.
İndirici doğrulanmış yerel arşivi tekrar kullanır; gerekmedikçe yeniden indirmez.
Export özellikle istendiğinde:
bash scripts/godot-install.sh --templates
bash scripts/godot-check.sh --export

## Kanıt ve sınır
Godot 4.5.1 başlangıç motorudur; tüm eski oyunları bu sürüme geçirmez.
Önceki GitHub import/smoke/Windows export çalışması başarılı:
https://github.com/SerkanAydin06/game-studio-template/actions/runs/38245824512
Şablon kontrolü:
https://github.com/SerkanAydin06/game-studio-template/actions/runs/38245824412
Başarı yalnız o commit'e aittir. Gerçek Windows/görsel test ayrıca yapılır.
Kota bakiyesi sağlayıcı panelinde kontrol edilir; bu depo otomatik bakiye okuyamaz.
Kaynak: https://docs.github.com/en/actions/how-tos/manage-workflow-runs/manually-run-a-workflow
