#2. b
#drugi messenger

while [ true ]
do
	while [ true ] 
	do
		if [ -f /home/teofer/Desktop/Labosi/Lab01/Lab01_Zad02/messenger01.txt ]		#ako postoji file messenger01.txt
		then
			cat /home/teofer/Desktop/Labosi/Lab01/Lab01_Zad02/messenger01.txt	#ispisuje se sta pise u istom file-u
			rm /home/teofer/Desktop/Labosi/Lab01/Lab01_Zad02/messenger01.txt	#i brise se taj file
			break
		fi
	done
	read line2										#cita se input sa standardnog ulaza
	echo $line2 >/home/teofer/Desktop/Labosi/Lab01/Lab01_Zad02/messenger02.txt		#i upisuje se u file messenger02.txt
done
