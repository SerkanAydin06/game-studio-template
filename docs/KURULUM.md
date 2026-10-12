# Web stüdyosu: kurulum ve kullanım
Bu rehberler tarayıcıdan kullanım içindir. Kullanıcının bilgisayarına Python veya AI CLI kurulmaz.
Mevcut depo: SerkanAydin06/game-studio-template. Bir araçta bağlantı açılması diğer araçları bağlamaz.
Hesap oturumları kullanıcı tarafından ilgili sağlayıcıda açılır.

## Sıra
1. [Claude Code](CLAUDE-WEB.md): ana geliştirici ve repo bağlantısı.
2. [ChatGPT / Codex](CHATGPT-CODEX.md): teknik karar, gerektiğinde bağımsız inceleme.
3. [Gemini](GEMINI-WEB.md): araştırma veya görsel inceleme gerektiğinde.
4. [Meshy](MESHY-WEB.md): model gerektiğinde; kurulum için kredi harcamayın.
5. [GitHub Actions](GITHUB-ACTIONS.md): AI çağrısı içermeyen kontrol altyapısı.

## Ortak çalışma
Her oyun ayrı özel depodan ilerler. GitHub ayarlarında bu depoyu Template repository olarak
işaretleyip yeni oyun için Use this template kullanabilirsiniz; bu ayar burada değiştirilmedi.
Şablondaki sonraki değişiklikler eski oyunlara otomatik aktarılmaz.
Görev verirken hedef depo/dal, tek amaç, ilgili dosyalar ve kabul ölçütünü belirtin.
Bir görevde tek ana geliştirici kullanın. Diğer araca geçerken STATE.md ve TASK.md ile ilgili
diff/test özetini aktarın. Aynı işi dört modele yeniden yaptırmayın.
Yeni PC'de aynı web hesabını ve mevcut oturumu açın. Main'e birleşmemiş çalışmayı kaybetmemek
için dal/PR bağlantısını koruyun. Godot veya oyun paketi sadece oynama testi yapılan PC'de gerekir.

## Durum
GitHub dosyaları doğrulandı. Diğer servislerdeki kişisel bağlantılar bu sohbetten kurulmuş sayılmaz.
Kullanıcı GitHub Pro'ya geçip Actions kullanımını onayladı. Şablon kontrolü ve Godot/Windows
export iş akışları eklendi. Çalıştırma durumunu Actions sekmesinden doğrulayın; gerçek Windows
PC testi ayrıca yapılmalı.
