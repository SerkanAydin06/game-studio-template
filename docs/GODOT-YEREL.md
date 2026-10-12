# Godot'ta deneme ve farklı PC
Normal geliştirmede .exe indirmeye gerek yoktur. Oyun deposunun kaynak dosyalarını açarsınız.

## İlk PC
1. Oyunun .godot-version dosyasındaki Godot sürümünü kullanın.
2. GitHub Desktop ile hesabınıza giriş yapın; File > Clone Repository üzerinden OYUN deposunu alın.
3. Godot Project Manager > Import ile game/project.godot dosyasını seçin.
4. Projeyi açıp F5 ile ana sahneyi çalıştırın. F6 yalnız açık sahneyi çalıştırır.
5. Hata varsa ilk hata, dosya/satır ve tekrar adımlarını iletin; tüm konsolu göndermek gerekmez.

## Sonraki deneme
AI değişikliği doğru dalda kaydedip gönderir; main'e birleşmediyse o dal seçilmelidir.
Godot'u kapatın, GitHub Desktop'ta Fetch origin / gerekiyorsa Pull origin ile güncelleyin.
Yerel değişiklik varsa önce inceleyip kaydedin; discard/reset ile rastgele silmeyin.
Godot'u yeniden açıp F5 ile deneyin. Yeni indirme paketi üretmek gerekmez.
Yerelde sahne düzenlediyseniz ilgili dosyaları commit edip push edin; AI aynı sürümden başlasın.

## Diğer PC
Aynı hesabın aynı oyun deposunu clone edin; aynı dal, commit ve motor sürümüyle devam edin.
Bir PC'de gönderilmemiş değişiklik diğer PC'de görünmez. Aynı sahneyi iki PC'de eşzamanlı düzenlemeyin.
Aktif repo klasörünü ayrıca OneDrive/Dropbox ile eşitlemeyin.
GitHub Desktop istemezseniz Code > Download ZIP ile ayrı yeni klasöre alın;
yerel düzenlenmiş proje üstüne açmayın. ZIP yolu otomatik güncelleme/değişiklik gönderme sağlamaz.

## Exe ne zaman?
Başkasına oyun göndermek veya mağaza paketi test etmek istendiğinde.
Bu aşamada export templates gerekir; günlük Godot editör denemesinde gerekmez.
Çekirdekteki validation/project.godot yalnız altyapı kontrolüdür; yeni oyun game/ altında açılır.

Kaynaklar:
https://docs.github.com/en/desktop/adding-and-cloning-repositories/cloning-and-forking-repositories-from-github-desktop
https://docs.godotengine.org/en/stable/tutorials/editor/project_manager.html
