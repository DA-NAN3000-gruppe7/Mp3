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
- Kommer

## Webgrensesnitt
- Kommer

## Installering og oppsett for å kjøre
- Instruksjon kommer

## Merknader
- Kommer