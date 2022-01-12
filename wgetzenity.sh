#!/bin/sh

wget_ui(){
ans=$(zenity --list \
  --title="İndirme Türü Seçiniz" \
  --width 400 \
  --height 300 \
  --column="Seçimler"\
	"wget .."  \
	"wget -i .." \
	"wget -O .." \
	"wget -P .." \
	"wget -b .." \
	"wget no-check-certificate" \
       )


if [[ $ans = "wget .." ]]
  then
	echo "Parametresiz seçildi"
	row=$(zenity --forms --title="Parametresiz seçildi" \
	--text="Parametresiz wget komutu kullanılacak" \
	--add-entry="Linki giriniz:" \   )
	echo $row
	if [[ $row = "" ]]
	then
		zenity --warning --text="İndirme Başarısız"  --title="İndirme Tamamlanmadı"
	else
		wget $row
		zenity --info --text="İndirme Başarılı"  --title="İndirme Tamamlandı"
	fi
        
  elif [[ $ans = "wget -i .." ]]
  then
        echo "-i parametresi seçildi"
        selectedFile=$(
        zenity --file-selection \
       --title "-i parametresi seçildi" \
       --filename "Linkleri içeren metin dosyasını seçiniz" \
       )
       echo $selectedFile
       if [[ $selectedFile = "" ]]
	then
		zenity --warning --text="İndirme Başarısız"  --title="İndirme Tamamlanmadı"
	else
		wget -i $selectedFile
		
       	zenity --info --text="İndirme Başarılı"  --title="İndirme Tamamlandı"
	fi
  ###
  elif [[ $ans = "wget -O .." ]]
  then
        echo "-o parametresi seçildi"
	link=$(zenity --forms --title="-o parametresi seçildi" \
	--text="-o parametresi seçildi" \
	--add-entry="Linki giriniz:" \   )
	echo $link
	if [[ $link = "" ]]
	then
		zenity --warning --text="İndirme Başarısız"  --title="İndirme Tamamlanmadı"
	else
		yeniIsim=$(zenity --forms --title="İsim Giriniz" \
		--text="Yeni ismi giriniz!" \
		--add-entry="İsim:" \   )
		echo $yeniIsim
		if [[ $yeniIsim = "" ]]
			then
			zenity --warning --text="İndirme Başarısız"  --title="İndirme Tamamlanmadı"
		else
			wget -O $yeniIsim $link
			
			zenity --info --text="İndirme Başarılı"  --title="İndirme Tamamlandı"
		fi
		
	fi
	
 ###
 elif [[ $ans = "wget -P .." ]]
  then
        echo "-P parametresi seçildi"
	link=$(zenity --forms --title="-P parametresi seçildi" \
	--text="-P parametresi seçildi" \
	--add-entry="Linki giriniz:" \   )
	echo $link
	if [[ $link = "" ]]
	then
		zenity --warning --text="İndirme Başarısız"  --title="İndirme Tamamlanmadı"
	else
		echo "-P parametresi seçildi"
		yeniKonum=$(
		zenity --file-selection \
	       --title "-P parametresi seçildi" \
	       --filename "Kaydetmek istediğiniz yerin yolunu seçiniz" \
	       --directory
	       )
	       echo $yeniKonum
		       if [[ $yeniKonum = "" ]]
			then
				zenity --warning --text="İndirme Başarısız"  --title="İndirme Tamamlanmadı"
			else
				wget -P $yeniKonum $link
				
		       	zenity --info --text="İndirme Başarılı"  --title="İndirme Tamamlandı"
			fi
		
	fi

###
 elif [[ $ans = "wget -b .." ]]
  then
        echo "-b parametresi seçildi"
	link=$(zenity --forms --title="-b parametresi seçildi" \
	--text="-b parametresi seçildi" \
	--add-entry="Linki giriniz:" \   )
	echo $link
	if [[ $link = "" ]]
	then
		zenity --warning --text="İndirme Başarısız"  --title="İndirme Tamamlanmadı"
	else
		wget -b $link
		zenity --info --text="İndirme Başarılı"  --title="İndirme Tamamlandı"	
	fi
 
###
 elif [[ $ans = "wget no-check-certificate" ]]
  then
        echo "no-check-certificate parametresi seçildi"
	link=$(zenity --forms --title="no-check-certificate parametresi seçildi" \
	--text="no-check-certificate parametresi seçildi" \
	--add-entry="Linki giriniz:" \   )
	echo $link
	if [[ $link = "" ]]
	then
		zenity --warning --text="İndirme Başarısız"  --title="İndirme Tamamlanmadı!"
	else
		wget --no-check-certificate $link
		
		zenity --info --text="İndirme Başarılı"  --title="İndirme Tamamlandı"	
	fi  
  fi 
}

while true;
do 

answer=$(zenity --info --title 'Devam etmek istiyor musunuz? ' \
      --text 'Bir seçim yapınız!' \
      --ok-label "Çıkış Yap" \
      --extra-button "Devam Et" \
       )

if [[ $answer = "Devam Et" ]]
  then
  	echo "Devam Ediliyor"
  	wget_ui
else
	echo "Çıkış Yapılıyor"
	break
fi

done