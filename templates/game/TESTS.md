# Test kanıtları
İlk başlangıç: henüz çalıştırılmadı.
Her önemli kayıt: commit, motor sürümü, komut veya elle adımlar, sonuç, kalan risk.
Başlangıç smoke testi yalnız ana sahne yüklemesi ve durum etiketidir; oyun mantığını test etmez.
Oyun geliştikçe ilgili kurallara anlamlı test ekleyin; görsel/oynanış PC'de doğrulanır.

## Otomatik testler
bash scripts/godot-check.sh şunları headless çalıştırır (public CI'da her ilgili push/PR'de):
1. Ana sahne açılır ve birkaç kare çalışır.
2. Projedeki her .gd derlenir, her .tscn yüklenir (addons/ hariç).
3. game/tests/test_*.gd dosyalarındaki her test_* metodu.
Yeni test: extends "res://tests/test_case.gd"; check(koşul, mesaj), check_eq(gerçek, beklenen, mesaj),
await spawn("res://sahne.tscn"). test_starter.gd yalnız başlangıç örneğidir; ana sahne değişince sil veya güncelle.
Mantığı küçük, sahneden bağımsız sınıflarda tutmak test etmeyi ucuzlatır.
