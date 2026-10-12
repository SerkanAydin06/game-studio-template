# ChatGPT / Codex web
## Bu projede rol
Teknik kararlar ve önemli değişikliklerin incelemesi. Claude ile aynı dosyaları aynı anda yazma.
Normal sohbetin dosya hakkında yanıt vermesi, GitHub'a değişiklik uygulandığı anlamına gelmez.

## Bir kez bağlantı
1. ChatGPT'de kendi hesabınla giriş yap.
2. Codex / bulut çalışma ortamını aç. Arayüzünde Work in > Cloud varsa buradan
   mevcut ortamı seç; gerekirse Select environment / Create environment ile oluştur.
3. GitHub bağlantısı istendiğinde hesabını bağla, hedef depoya erişim ver ve depoyu seç.
4. Ortam hazırlama sonucunda bağımlılıkların ve testlerin hangisinin gerçekten hazır olduğunu
   kontrol et. Yeni ortamı yayımlama adımı varsa sonucu inceleyerek tamamla.
5. İlk görev yalnız repo ve AGENTS.md okuması olsun. Erişim yoksa tüm depoyu yüklemek yerine
   STATE.md, TASK.md ve ilgili dosyaları ekle; bu durumda sonuç doğrudan GitHub'a yazılmaz.
6. Başarılı değişikliğin kanıtı commit veya PR bağlantısıdır. “Düzelttim” yazısı tek başına yeterli değil.

## İnceleme kalıbı
“[PR/dal] değişikliğini [risk] açısından incele. AGENTS.md ve STATE.md'yi oku.
Yalnız gerçek bulguları, dosya konumunu ve önerilen düzeltmeyi yaz.
Tüm projeyi yeniden tasarlama. Test çalıştıramazsan açıkça belirt.”

## Devir
Claude'dan gelen PR veya commit, kısa test sonucu ve tek inceleme amacı yeterli.
İnceleme sonucunu ana geliştiriciye aktar; uygulama sorumlusu tek araç olsun.
Yeni PC'de aynı hesaba ve ortama dön. API anahtarı bu kullanım için paket gereksinimi değildir.
Bu depoya mevcut sohbetten erişim doğrulandı; kullanıcının ayrı Codex ortamı kurulmuş sayılmaz.

Kaynak: https://developers.openai.com/codex/cloud/

## Çekirdek / oyun ayrımı ve kota
Bu depo ortak çekirdektir. Gerçek oyun görevi için ayrı oyun deposunu ve doğru dalı kullan.
Yalnız ilgili dosyaları yükle; bütün rehberleri her sohbete ekleme. Copilot kullanılmaz.
Günlük deneme kaynak projeyle Godot'ta F5; Actions ve exe üretimi otomatik başlatılmaz.
Ortak kurallar: [verimlilik](VERIMLILIK.md), [görev devri](GOREV-AKISI.md).
