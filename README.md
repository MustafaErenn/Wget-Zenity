# Wget Komutu Görsel Arayüzü
## Özet
Bu proje  BTU-Linux Araçları ve Kabuk Programlama dersi için yaptığım Shell Programalama ödevidir.

## Proje Amacı
wget komutunu değişik parametrelerle çalıştıran shell scriptine zenity kullanarak görsel bir arayüz oluşturulmuştur.

# Uygulama Görüntüleri ve Özellikleri

## Ana Ekran
<img src="images/anaekran.png" >

- İlk olarak wget komutunu hangi parametre ile calistirmak istediginizi sectiginiz bir secim ekranı geliyor. Buradan istediginiz durumu seçip OK'a basarak devam ediyoruz.

## Parametresiz 
<img src="images/parametresiz.png" > <img src="images/indirme.png" > <img src="images/indirmebasarili.png" >

- İlk seçenek olan parametresiz secenegi direkt olarak kullanıcıdan bir link istiyor ve girilen linki direkt olarak wget komutuyla indiriyor.
- İndirme Devam ederken kullanıcıya bilgi ekranı gösteriliyor.
- İndirme işlemi tamamlandığında kullanıcıya bilgi verme amaçli bir info ekranı gösterilir.

## Devam/Cikis Yap
<img src="images/devam.png" >

- Daha sonrasında kullanıcıya devam edip etmek istemediği sorulur eğer devam seçeneği seçilirse kullanıcı yine seçim ekranına yönlendirilir.


## -i Parametresi
<img src="images/iparametresi.png" > <img src="images/linkler.png" >

- -i parametresi seçildiğinde ise kullanıcıdan bir dosya seçmesi istenir. 
- -i parametresinde kullanılmak için oluşturulan linkler.txt isimli dosya. Bu dosya file selection ile seçildikten sonra bütün linkler indirilir(Aynı dosya dizinine). Ve sonrasında kullanıcıya info ekranı gösterilir.

## -O Parametresi
<img src="images/oparametresi.png" > <img src="images/yeniisim.png" >

- -O parametresi girilen linkteki dosyayı farklı bir isimle kaydetmeye yarar. Kullanıcıdan bir link istendikten sonrasında kaydedileceği isimde istenir. Dosya yeni ismiyle aynı dizine indirilir.

## -P Parametresi
<img src="images/pparametre.png" > <img src="images/yenidizin.png" >

- -P parametresi girilen linkteki dosyayı farklı bir dizine kaydetmeye yarar. Kullanıcıdan bir link istendikten sonrasında kaydedileceği yeni dizinde istenir. Secil yapildiktan sonra dosya yeni dizine indirilir.

## -r -A Parametresi
<img src="images/raparametresi.png" > <img src="images/tur.png" >

- -r -A parametresi girilen linkteki sadece istenilen uzantili dosyaları indiren bir komuttur. Kullanıcıdan bir link istendikten sonrasında filtrelemek istedikleri uzantı sorulur sonrasında ise sadece istenen uzantidaki veriler indirilir.

## -b Parametresi/ --no-check-certificate Parametresi
<img src="images/bparametresi.png" > <img src="images/nocheck.png" >

- -b parametresi girilen linkteki dosyayı arka planda indirmeye yarar. 
- --no-check-certificate Geçersiz bir SSL sertifikasına sahip bir ana bilgisayardan HTTPS üzerinden bir dosya indirmeye yarar

<img src="images/basarisiz.png" >

- Gerekli alanlardan boş bırakılan olursa kullanıcıya warning ekranı gösterilir.

# Kullanılanlar
- Bash Script
- Zenity
- Nano

# Kurulum
## Github üzerinden indirmek
<img src="images/kurulum1.png">
Resimdeki adımları takip ederek kodu zip olarak indirin.
Zipten çıkarınız.
Zipten çıkarılmış klasorde terminali açınız.
bash wgetapp.sh komutunu calistiniz.


# İletişim
[@MustafaErenn](https://github.com/MustafaErenn) 
[Linkedin](https://www.linkedin.com/in/mustafa-eren-9214661b3/)
