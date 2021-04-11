# Mp3
Del 3 av prosjekt

## Oppgave
- Kommer

## Generelt om oppsett og utførelse
Oppsettet består av følgende deler:

Nettverk 1:
Server fra Mp2
Klient på vertsmaskin

Nettverk 2: Docker-nettverk
g7alpine1: Webservice (basert på docker-image g7alpineimage)
- har filen cgi-bin/rest.py som tilbyr rest-api mot sqlite-database
- Kjøres på port 8000:80

g7alpine2: Webgrensesnitt (basert på docker-image g7alpineimage)
- har filen cgi-bin/editor.sh som er et webgrensesnitt som kommuniserer med rest-apiet
- Kjøres på port 8080:80

## REST api
- Rest-apiet kjører i containeren g7alpine1, der filen /cgi-bin/rest.py (skal oversettes til .sh) leverer data fra db1 (sqlite-database) som er satt opp i henhold til mp3-oppskriften for databasen. RESTapiet tar imot kall og sjekker REQUEST-METHOD, PATH og inn-data, og leverer respons basert på dette. Herunder følger kall og respons:

###Hente alle dikt:
url: /localhost:8000/cgi-bin/rest.py/diktsamling/dikt/
data: ""
respons: xml med alle dikt
<diktsamling><dikt><diktID></diktID><dikt></dikt><epostadresse></epostadresse></dikt></diktsamling>

###Hente et enkelt dikt:
url: /localhost:8000/cgi-bin/rest.py/diktsamling/dikt/id
data: ""
respons: xml med et enkelt dikt
<diktsamling><dikt><diktID></diktID><dikt></dikt><epostadresse></epostadresse></dikt></diktsamling>



## Webgrensesnitt
- Kommer

## Installering og oppsett for å kjøre
- Instruksjon kommer

## Merknader
- Kommer