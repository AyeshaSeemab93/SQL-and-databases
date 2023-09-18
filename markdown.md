# Markdown - lyhyt johdanto

linkkejä:

-   https://en.wikipedia.org/wiki/Markdown
-   https://www.markdownguide.org/

## Esikatselu -vsCode
-   mac
    -   cmd+shift+v
-   windows
    -   ctrl+shift+v

## Otsikkotasot

# Taso 1
## Taso 2
### Taso 3
#### Taso 4
##### Taso 5
###### Taso 6

## Tekstin muotoilu

Osa tekstistä on *kursivoitu*  tai _sdsd_ ja osa **lihavoitu**. Koodi voidaan merkitä `koodi`

tekstiä  
2 välilyöntiä edellisen rivin lopussa uusi rivi

## Listat
-   aihe 1
-   aihe 2
    - ala-aihe

## Numeroitu
1.  aihe 1
2.  aihe 2

## Taulukot

otsikko1|otsikko2|otsikko2
:---|---:|:---:
d1|d2|d3
d4|d5|d6

|tasaus    |tagi |
|----------|:---:|
|vasen     |:--- |
|oikea     |---: |
|keskitetty|:---:|

## shell
<!-- kommentti -->

```shell
$ node -v
```
to check the version of Node.js installed on your computer

```
$ node -v
```

## Ohjelman osat

### Supported programming languages

-   js
-   csharp
-   java
-   c
-   pyhon

### supported file formats
-   json
-   csv
-   html
-   css
-   sql

#### js
```js
const a=12;
if(a>10){
    console.log('yli 10');
}
```

#### c#
```csharp
using System;

class Program
{
    static void Main()
    {
        Console.WriteLine("Hei maailma!");
    }
}
```

#### json
```json
{
    "etunimi":"Leila",
    "sukunimi":"Hökki"
}
```

#### css
```css
h1{
    color:blue;
}
```