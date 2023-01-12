#!/bin/bash

#1. zadatak

mkdir LAB1					#stvaranje direktorija
cd LAB1						#pozicioniranje u isti
mkdir source 					#stvaranje source direktorija
touch source/empty				#stvaranje praznog file-a empty u direktoriju source

sudo cp --recursive /boot /etc source		#kopiranje /boot i /etc u source rekurzivno
						#u slucaju da se treba kopirati samo sadržaji unutar /boot i /etc
						#bez samih direktorija boot i etc koristili bi naredbu:
						#sudo cp --recursive /boot/* /etc/* source	
sudo du --human-readable --summarize source	#ispisivamo koliko memorije zauzima source
ln --symbolic source target			#stvaranje simbolicke veze target na source
cd target					#pozicioniranje u target bez dereferenciranja
pwd						#ispisivanje trenutnog direktorija (target)
cd ..						#pozicioniranje natrag u source
cd -P target					#pozicioniranje na referencu od target
pwd						#ispisivanje trenutnog direktorija (source)

sudo du -L -sh ../target			#ispisivanje koliko memorije zauzima memorijska lokacija gdje pokazuje target

#gornja linija smatram da se trazila u zadatku ali mi izbacuje razne access denied greske i izbacuje memoriju vecu za 10
#megabajta od source foldera, linija ispod koja je zakomentirana zaobilazi tu gresku na nacin da samo trazi velicinu 
#foldera source zato jer smo pozicionirani u njemu nakon pozicioniranja na dereferencirani target 
#
#sudo du -sh

touch --reference empty novi			#stvaranje novog file-a novi koji ce imati vrijeme izmjene kao i file empty

sudo rm -rf ../*				#brisanje svih datoteka u direktoriju LAB1
rmdir ../../LAB1				#brisanje direktorija LAB1
