# Kurulum merkezi
Mevcut ana depo SerkanAydin06/pardex-uretici'dir. Yeniden oluşturmayın.
Bu çekirdeği her oyunun deposu olarak kullanmayın; [ayrı depo akışını](YENI-OYUN.md) izleyin.

## Hesapları bir kez bağla
1. [Claude Code web](CLAUDE-WEB.md): ana geliştirici; doğru depo erişimi ve dalı.
2. [ChatGPT/Codex](CHATGPT-CODEX.md): ihtiyaç olduğunda inceleme veya görev devri.
3. [Gemini Pro web](GEMINI-WEB.md): gerekli dosyaları/ilgili repo sürümünü içe aktar.
4. [Meshy Pro web](MESHY-WEB.md): mevcut hesabı aç; bağlantı denemesi için model üretme.
Aynı hesapla farklı PC'den giriş yapılabilir. Her sağlayıcının repo izinleri ayrıdır.
Bir yeni oyun deposu açılınca onu da gereken araçlara ayrıca tanıtın.
Hesap bağlantıları ve varsa ek kullanım ayarları kullanıcı arayüzünde doğrulanmalıdır;
bu metinler erişim veya harcama limiti oluşturmaz. Copilot iptal edildi, kullanılmaz.

## Bilgisayarda
Godot ve tercihen GitHub Desktop yeterlidir; [yerel rehber](GODOT-YEREL.md).
AI'lar webde çalışır. Python/AI CLI kurmak gerekmez.
Çekirdekteki Bash betiklerini kullanıcı Windows terminalinde çalıştırmaz;
Claude/Codex'in Linux cloud ortamı kullanır.

## Kurulumun bitmiş sayılması
- Ana çekirdek kuralları ve testleri doğrulanmış.
- Oyun açılınca kendi deposunda kısa durum/görev, motor sürümü ve kontroller bulunuyor.
- Kaynak proje bir PC'de Godot ile açılıyor; ikinci PC güncel commit'ten devam edebiliyor.
- İhtiyaç olduğunda her araç doğru sürümü okuyabiliyor.
- Gerçek bağlantı veya oynanış testi yapılmadıysa “tamam” sayılmıyor.
Şu an ortak altyapı hazır; gerçek oyun deposu ve kullanıcı PC testi henüz yok.
