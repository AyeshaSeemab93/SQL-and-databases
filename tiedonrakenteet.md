# Tiedon rakenteita

## Tiedon tallentaminen
-   muistiin
    -   tieto häviää aina ohjelman/koneen "sammutuksen" yhteydessä 
-   levylle (tai vastaava pysyvään tallennukseen kykenevä laite)
    -   pysyy vaikka ohjelma/kone sammutetaan
    -   tieto talletetaan bittijonoina

## Tiedon talletusmuodot

-   binääritiedostot
    -   binäärimuotoinen data
    -   kuvat
    -   äänet
    -   videot
    -   käännetyt ohjelmat

-   "tekstitiedostot"

### tekstitiedosto, jossa on "rakenteetonta" vapaata tekstiä
```
Leila Hökki
2023

Raportti

Tämä vuosi 2023 oli alku GTX-sarjan kehitykselle. Uuden tuotesarjan tekijä Pirkko Puro oli mukana esittelytilaisuudessa....
```

Edellisen ongelma on ohjelmallinen käsittely

```
tekijä Leila Hökki
vuosi 2023

Raportti

Tämä vuosi 2022 oli alku GTX-sarjan kehitykselle. Uuden tuotesarjan tekijä Pirkko Puro oli mukana esittelytilaisuudessa....
```

### Ratkaisu: rakenteellinen teksti

```xml
<dokumentti>
    <tekija>
        <etunimi>Leila</etunimi>
        <sukunimi>Hökki</sukunimi>
    </tekija>
    <vuosi>2023</vuosi>
    <raportti>
        <otsikko>Raportti</otsikko>
        <teksti>
          Tämä vuosi 2022 oli alku GTX-sarjan kehitykselle. Uuden tuotesarjan tekijä Pirkko Puro oli mukana esittelytilaisuudessa....
        </teksti>
    </raportti>
</dokumentti>
```

```json
{
    "tekija":{
        "etunimi":"Leila",
        "sukunimi":"Hökki"
    },
    "vuosi":2023,
    "raportti":{
        "otsikko":"Raportti",
        "teksti":[
            "Tämä vuosi 2022 oli alku GTX-sarjan kehitykselle.",
            "Uuden tuotesarjan tekijä Pirkko Puro",
            "oli mukana esittelytilaisuudessa...."
        ]
    }
}
```

## Rakenteisia tekstimuotoja
-   xml (www.w3.org)
-   json (www.json.org)
-   csv/tsv (Comma Separated Value / Tab Separates Value)
-   ini
-   html/css (https://html.spec.whatwg.org/multipage/)
-   markdown
-   svg (kuvatiedosto, xml-tiedosto)

### Esikerkki csv

```csv
"etunimi","sukunimi","ikä"
"Leila","Hökki","20"
"Pirkko","Puro",30
```

tai

```csv
etunimi,sukunimi,ikä
Leila,Hökki,20
Pirkko",Puro,30
```

### INI
```ini
;kommentti alkaa puolipisteellä
[database] ;block section
driver = mysql
host = localhost
port = 3306
database = henkiloDb
[user]
user = saku
```
sama jsonilla:

```json
{
    "database":{
        "driver":"mysql",
        "host":"localhost",
        "port":3306,
        "database":"henkiloDb"
    },
    "user":{
        "user":"saku"
    }
}
```