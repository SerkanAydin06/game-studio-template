# Üretimde tamamlanma ölçütü
Bir sonraki aşamaya geçmek için gerçek kanıt gerekir; her adım kullanıcı onayı gerektirmez.
Sadece değişiklikten etkilenen kontrolleri çalıştır. Eksik ortamı ve yapılmayan testi belirt.
1. Kurulum: doğru ayrı depo, sürüm kaydı, proje açılıyor, kapsam ve bütçe belli.
2. İlk oynanabilir örnek: temel döngü baştan sona çalışıyor; geçici varlık yeterli.
3. Görsel örnek: tek temsili ekran/karakter hedef stili ve hedef cihazı karşılıyor.
   Bu örnek görülmeden tüm görselleri veya modelleri seri üretme.
4. Üretim: onaylı örnek ve yeniden kullanılabilir parçalarla içerik;
   kullanıcı düzenleyebilmesi için Godot sahneleri ile çalışma görünümü tutarlı.
5. Teslim: ilgili hata testleri, kayıt/yükleme varsa veri dayanıklılığı,
   çoklu oyuncu varsa kopma/yeniden bağlanma ve hedef cihazda performans kontrolü.
   Uygulanmayan özelliklerin testlerini sırf liste var diye ekleme.
6. Paketleme: yalnız kullanıcı paylaşım/mağaza paketi istediğinde export.
   Görsel/oynanış kontrolünü headless testle tamamlanmış sayma.

Görsel test paketi: repo/dal/commit, açılacak proje, en fazla birkaç eylem,
beklenen sonuç ve geri istenen tek ekran görüntüsü/hata bilgisi.
Kullanıcı sonucu gelmeden bu kontrol “bekliyor” kalır; bağımsız işler devam edebilir.
