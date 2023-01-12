#Zadatak 3


echo -n "Upisi Upisi godinu za koju te zanima koliko puta se dogodio petak 13.: "
read godina										#cita se input sa standardnog ulaza
petkovi=$(ncal $godina | grep pe | grep -o 13 | grep -c 13)				#prvi grep ce izdvojit retke petkova
											#drugi grep ce u svaki redak za sebe izdvojit
											#svaki broj 13 koji je ostao od prosle naredbe
											#treci grep ce pobrojat (-c) koliko redova ima broj 13 
											#u sebi to jest svaki red (mogli smo izvest isto sa
											#naredbom wc
echo "U godini $godina, petak 13. se dogodio $petkovi puta."
