# Appello 20 dicembre 2024

## Consegne

## [Ex 261] Tenta
Scrivere uno script `lettera.sh` che genera ad ogni invocazione
una lettera a caso tra queste due `a` `c`
e la stampa in output SENZA ANDARE A CAPO.
> Suggerimento: usare variabile `RANDOM`.

Scrivere poi uno script `parola.sh` che usa piu' volte
il precedente script `lettera.sh`
per generare parole formate da quattro caratteri
e visualizzarle sul proprio stdout.

Infine, scrivere uno script `tenta.sh` che
invoca più volte lo script `parola.sh`
fino a che riesce a generare casualmente la
parola `cacc`.
Se genera una parola diversa allora lo script
riprova a generare ancora una nuova parola
e così via.
Quando lo script riesce a generare la parola cacc
allora lo script stampa a video
la parola "cacc" ed il numero di volte che ho
dovuto generare parole fino a trovare 
quella giusta, poi termina. 

## [Ex 262] Sposta
Scrivere uno script `sposta.sh` che prende come parametro di input il nome di un file.

Lo script deve creare una copia di quel file, aggiungere l'estensione `.copy` e spostare la prima riga del file sorgente come ultima riga del file `.copy`

Ad esempio, se il file `xyrighe.txt` contiente il seguente contenuto:
```
alfa beta * gamma vecchia prima riga
gatto * ? cane [] orso polare
cesena cesenatico capannaguzzo * borello
moto morini vecchia ultima riga
```

Allora lo script deve produrre un file di testo `xyrighe.txt.copy` il cui contenuto è:
```
gatto * ? cane [] orso polare
cesena cesenatico capannaguzzo * borello
moto morini vecchia ultima riga
alfa beta * gamma vecchia prima riga
```