### Nei commenti che seguono vedete dei suggerimenti sull'algoritmo da
### seguire per produrre l'output corretto.
###

ESAME1="./BASE_es154/esame1.txt"
ESAME2="./BASE_es154/esame2.txt"

# I voti della seconda prova li devo mettere tutti nello standard output
cat $ESAME2

# Poi devo mettere nello standard output i voti della prima prova
# ottenuti dagli studenti che non hanno un voto nella seconda prova

while read MATR VOTO ; do
	RES=`cat $ESAME2 | grep $MATR`
	if [[ $RES == "" ]] ; then
		echo "$MATR $VOTO"
	fi		
done < $ESAME1


