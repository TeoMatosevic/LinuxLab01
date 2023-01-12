#2. b 
#prvi messenger

while [ true ]
do
	read line1										#cita se linija sa standardnog ulaza
	echo $line1 >/home/teofer/Desktop/Labosi/Lab01/Lab01_Zad02/messenger01.txt		#upisuje se u file messenger01.txt
	while [ true ]
	do
		if [ -f /home/teofer/Desktop/Labosi/Lab01/Lab01_Zad02/messenger02.txt ]		#ako postoji file messenger02.txt
		then
			cat /home/teofer/Desktop/Labosi/Lab01/Lab01_Zad02/messenger02.txt	#ispisuje se ono sta pise u istom file-u
			rm /home/teofer/Desktop/Labosi/Lab01/Lab01_Zad02/messenger02.txt	#i brise se taj file
			break
		fi
	done
done

#limitacija programa jest to sta prvi messenger mora prvi poslat poruku te drugi mora nakon toga odgovorit
#i tako u krug, inace program ne radi dobro :/
