#3. e)

echo -n "Upisi godinu za do koje te zanima koliko puta ce se dogoditi petak 13.: "
read godina										#ucitava se godina sa standardnog ulaza
godina=$((godina+1))									#dodaje se +1 na unesenu godinu zbog uvijeta
godTemp=$(date +%Y)									#date +%Y ce nam dat trenutnu godinu
while [ $godTemp -lt $godina ]								#-lt uvijet jest lower than uvijet ($godTemp < $godina)
do
	petkovi=$(ncal $godTemp | grep pe | grep -o 13 | grep -c 13)			#ista linija kao i u prethodnom zadataku
	echo "U godini $godTemp, petak 13. se dogodio $petkovi puta."
	godTemp=$((godTemp+1))								#povecava se $godTemp za 1
done
