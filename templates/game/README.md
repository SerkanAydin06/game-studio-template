# Yeni oyun başlangıcı
Bu bağımsız oyun deposudur. Çekirdek sürümü .studio/ içinde kayıtlıdır.
Godot sürümü .godot-version dosyasında; kullanıcı game/project.godot dosyasını açıp F5 ile dener.
Henüz oyun mekaniği yoktur. PROJECT.md ve BUDGET.md oyun kararı verildiğinde doldurulur.
Güncelleme: doğru dalı GitHub Desktop ile Fetch/Pull; düzenlenmiş yerel dosyaları silmeyin.
Cloud kontrolü: bash scripts/godot-install.sh, ardından bash scripts/godot-check.sh.
Kullanıcı bilgisayarında Python/AI CLI gerekmez. Public depo için .github/workflows/game-validation.yml bu başlangıca dahildir.
Varsayılan main dalında ilgili push/PR değişiklikleri import/smoke kontrolünü başlatır.
Farklı ana dal adı kullanılıyorsa workflow dal filtrelerini ona göre güncelle.
Windows export yalnız istendiğinde: installer --templates ve checker --export.
Hedefli testleri genişlettikçe game/smoke_test.gd ve TESTS.md'yi güncelleyin.
