# Çekirdek sınırı ve kontrollü iyileştirme
## Değişmez kapsam
Çekirdek yalnız genel iş akışı, araç seçimi, genel yardımcılar, bağımsız başlangıç ve
doğrulama örneklerini içerir. Bir oyunun adı, hikâyesi, mekaniği, sahneleri, görselleri,
denge değerleri, oyuncu verisi ve görev geçmişi o oyunun deposunda kalır.
Bir oyun ister diye çekirdeğin varsayılanları, motor sürümü veya şablonu özelleştirilmez.
Oyuna gereken skill/agent ayarı da önce oyun deposunda veya ilgili çalışma ortamındadır.

## İyileştirme yetkisi
Kullanıcı AI'nın genel verimlilik/kalite iyileştirmesi yapmasına izin vermiştir.
Bu, kapsam sınırını kaldırma, bütçe artırma, yeni ücretli servis açma veya oyunları
otomatik güncelleme izni değildir. Araç ve üst düzey izin kuralları geçerlidir.
İyileştirme keşfetmek için periyodik model çağrısı veya ayrı arka plan işi çalıştırma.
Normal bir görevde somut tekrar/hata/maliyet farkı görülürse kaydet.
Tek oyunun ihtiyacını karşılamak için çekirdeği değiştirme; çözümü o oyunda tut.

## Genel değişiklik süreci
1. Oyun işini tamamla veya güvenli noktada kaydet. Çekirdek bakımını ayrı görev yap.
2. Sorunu oyun isimleri, içerikleri ve özel verilerden arındır. En az iki farklı
   kullanımda neden geçerli olduğunu açıkla; yoksa oyun içi çözüm olarak bırak.
3. Beklenen faydayı ve varsa ölçülen önce/sonra kanıtını belirt.
   Ölçüm yoksa hipotez de; tasarruf oranı uydurma.
4. Çekirdekte ayrı dal/PR aç. Değişen genel kural, etkilenen dosya,
   uyumluluk, kabul kontrolü ve geri alma commit'ini belirt.
5. İlgili kontrolleri çalıştır. Genel başlangıç değiştiyse bağımsız üretimi de doğrula.
   Oyun kodunu, varlıklarını veya görev geçmişini bu PR'ye taşıma.
6. Mevcut yetki kapsamında inceleyip birleştir; CORE_VERSION ve kısa değişiklik kaydını güncelle.
   Hata çıkarsa force push yerine düzeltme/revert commit'iyle geri al.
7. Mevcut oyunlar sürümlerine sabit kalır. Gerekli genel düzeltme ayrı oyun dalında
   seçilerek uygulanır; oyun dosyaları tekrar şablonla ezilmez.

PR açıklama alanları: genel sorun / iki kullanım / kanıt veya hipotez /
kapsam dışı / kontrol sonucu / uyumluluk / geri alma.
Bu kurallar ajan davranış protokolüdür, GitHub sunucu tarafı yetki kilidi değildir.
Çekirdek yazma erişimi verilmeyen bir oyun oturumu buraya doğrudan değişiklik uygulayamaz;
böyle bir durumda yalnız genelleştirilmiş öneriyi teslim et.
