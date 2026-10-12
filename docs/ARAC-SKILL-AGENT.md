# Araç, skill ve agent seçimi
Amaç en az tekrar ve kabul edilmiş sonuç başına düşük toplam tüketimdir.
Aşağıdaki dağılım başlangıç tercihidir; modeller arasında değişmez “en iyi” sıralaması değildir.
Yeni model/özellik iddiası gerekiyorsa güncel resmi bilgiyi doğrula; her görevde tekrar araştırma.

## Seçim sırası
1. İş AI olmadan dosya araması, betik, Godot veya mevcut varlıkla çözülebiliyor mu?
2. Mevcut oturum işi kabul ölçütüyle bitirebiliyor mu? Bitirebiliyorsa aktarım yapma.
3. Gerekli yetenek ve erişim hangisinde gerçekten var? Okuma, yazma, çalıştırma,
   görsel, araştırma, 3D üretim ve repo erişimini ayrı değerlendir.
4. Benzer kabul edilmiş işlerin sonucu, tekrar sayısı ve bilinen kota durumuna bak.
   Bilinmeyen bakiyeyi sıfır veya sınırsız sayma; her tur kullanıcıdan bakiye isteme.
5. En az ek bağlam ve kullanıcı aktarımıyla işi bitirecek aracı seç.
   Aynı görev için model yarışı veya standart ikinci inceleme yapma.

Aşamaya göre varsayılan araç ve yedekler: [GOREV-DAGILIMI.md](GOREV-DAGILIMI.md).

## Skills
Yalnız oturumda gerçekten listelenen/erişilen ve göreve uygun skill'i seç.
Talimatını okuyup uygula; bütün skill kataloğunu bağlama doldurma.
Skill adı bulunması onun kurulu, hesabının bağlı veya ücretsiz olduğu anlamına gelmez.
Özel bir skill şart değilse çalışan basit yöntemi kullan; her oyun için yeni skill yazma.
Dışarıdan skill/eklenti seçerken kaynak, gerekli izin, kurulum ve ek ücret etkisini incele.
Oyun özelindeki yönergeler oyun deposunda kalır; genel skill iyileştirmesi çekirdek
sınırı sürecinden geçer. Bu dosya bir skill yükleyicisi değildir.

## Agents
Varsayılan tek uygulayıcıdır. Kullanıcı gerekli agent kullanımına izin vermiştir;
oturumun yetki/araç kuralları kapsamında yalnız net fayda varsa kullan.
Bağımsız ve yeterince büyük iki alt iş varsa en fazla iki alt agent ile başla.
Her birine tek teslim, sınırlı dosya/bağlam, kabul ölçütü ve sorumlu ver.
Aynı dosyada eşzamanlı yazma yok; yazma gerekiyorsa ayrılmış dal/çalışma alanı kullan.
Salt okuma incelemesi ve bağımsız varlık incelemesi uygun örneklerdir.
Aynı soruyu birçok agent'a sorup oylama yapma; zincirleme agent açma varsayılan kapalı.
Agent'lar bedelsiz değildir; kazanılan süre yanında toplam token/tekrar da değerlendirilir.
Küçük değişiklik, tek hata veya ortak dosya bağımlılığında agent açma.
Harici Claude/Gemini oturumu ile içerideki alt agent aynı şey değildir.

## Gerçek sonuçtan öğrenme
Oyundaki ROUTING.md seçimi ve kısa sonucu tutar; sayısal tüketim USAGE.csv'de kalır.
Farklı sağlayıcıların kredi/token/yüzdesini birbirine çevirerek sahte toplam üretme.
Bir zor görevle genel sıralamayı değiştirme. Benzer birkaç gerçek işte tekrar eden
fark varsa yönlendirmeyi güncelle; sırf kıyaslamak için yeni görev çalıştırma.
Oyun özelindeki sonuç oyun deposunda kalır; genel öneri için CEKIRDEK-SINIRI.md uygulanır.
