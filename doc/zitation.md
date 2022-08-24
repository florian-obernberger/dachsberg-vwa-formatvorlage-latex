# Zitation in der VWA $\LaTeX$ Formatvorlage für Dachsberg

## Technische Umsetzung

Um das automatisierte Zitieren im Dachsberger Stiel zu ermöglichen, werden folgende zwei
Latex Pakete verwendet: `natbib` und `bibentry`.

Natbib verwendet `.bbl` Dateien, die normalerweise von BibTeX erstellt werden, in unserem Fall
aber von Bibulous erstellt werden. Bibulous ist eine Python Anwendung, die ebenfalls zur Erstellung
solcher Dateien genutzt werden kann. Der Vorteil von Bibulous ist, dass man hier die Art und Weise,
wie die einzelnen Einträge gestaltet werden, selbst festlegen kann.

## `vwa.bib`

### Was ist eine "`.bib`" Datei?

Eine solche Datei ist ein Textdokument, in dem die Bibliographie für eine $\LaTeX$ Datei
gespeichert ist.

### Wie fügt man Einträge zur `vwa.bib` Bibliographie hinzu?

Ein Eintrag folgt im Grunde der folgenden Struktur:

```bib
@type{key,
  author   = {Nachname, Vorname},
  title    = {Der Titel des Eintrags},
  subtitle = {Der Untertitel des Eintrags},
  year     = {2022}
}
```

Jeder Eintrag beginnt mit einem `@`-Symbol gefolgt von Typ der Quelle. In dieser Formatvorlage
werden die folgenden Typen unterstützt:

- `book`: Monographie / Buch
- `incollection`: Buch / Artikel aus einem Sammelband
- `article`: Zeitungsartikel
- `pdf`: PDFs aus dem Internet
- `website`: Internet Adresse
- `phdthesis`: Forschungsberichte, Dissertationen, Hausarbeiten, Diplom-/Bachelorarbeiten,
  Masterthesen/-arbeiten u.ä.
- `lecture`: (Unveröffentlichte) Vorträge, Konferenzberichte, Vorlesungen u.ä.
- `dictionary`: Lexika, Enzyklopädien, Nachschlagewerke u.ä.
- `misc`: Grundzitation für andere Gebiete. Wird wie `book` formatiert

Danach folgt in geschwungenen Klammern der `key`. Dieser muss einzigartig innerhalb der ganzen
Bibliographie sein. Das sind später auch die Schlüssel, anhand im $\LaTeX$ Dokument zitiert wird.

> **Note**
> 
> Man kann zum Beispiel folgendes Schema verwenden, um einzigartige und wiedererkennbare
> Schlüssel zu erstellen: Der Vorname des Authors gefolgt von dem Publikations-Jahr und dann die
> ersten fünf bis sechs Buchstaben des Titels.
> 
> *Beispiel*
> 
> "Bode, Martin: Propaganda. Caesar über den Ausbruch des Gallischen Krieges. Aurich: 1998."
> → `bode1998propag`.

Danach werden die Informationen über die Quelle eingetragen. Im Beispiel oben werden die Felder
`author`, `title`, `subtitle` und `year` gesetzt. Jeder Quellen-Typ verlangt unterschiedliche
Felder. Aber als nächstes erst einmal eine Liste aller Optionen, die in dieser Formatvorlage
unterstützt werden:

- `author`: Author (Mehrere werden mit `and` verbunden. Format: `Nachname, Vorname`)
- `title`: Titel der Quelle
- `subtitle`: Untertitel der Quelle
- `booktitle`: Titel des Sammelbandes
- `journal`: Name der Zeitung
- `year`: Erscheinungsjahr
- `month`: Monat der Veröffentlichung (bei `lecture`)
- `pubdate`: Publikationsdatum (bei `article`) / Revisionsdatum (bei `website`)
- `date`: Publikationsdatum (bei `article`) / Revisionsdatum (bei `website`);
  sind `pubdate` und `date` gegeben, wird `pubdate` bevorzugt
- `publocation`: Verlagsort
- `address`: Verlagsort (sind `publocation` und `address` gegeben, wird `publocation` bevorzugt)
- `institution`: Hochschule/Universität, Fakultät/Institut (bei `phdthesis`, `lecture`)
- `thesistype`: Art der Arbeit (bei `phdthesis`, `lecture`)
- `dicteditor`: Herausgeber des Lexika, Enzyklopädien, Nachschlagewerke u.ä.
  (Bsp.: "vom päpstlichen Rat für die Familie") (bei `dictionary`)
- `edition`: Auflage
- `volume`: Band des Lexika, Enzyklopädien, Nachschlagewerke u.ä. (Bsp.: "2") **nicht dasselbe wie** 
  Auflage (`edition`) (bei `dictionary`)!
- `editor`: Herausgeber (Mehrere werden mit `and` verbunden. Format: `Nachname, Vorname`)
  (bei `dictionary`, `incollection`)
- `url`: Download URL (bei `pdf`) / Website URL (bei `website`) / Verlinkung zur Online Version
  eines Buches
- `accessed`: Wann der Weblink das letzte mal aufgerufen wurde (Bsp.: 13.02.2022,
  Format: `TT.MM.YYYY`)
- `abbrcite`: Dann zu verwenden, wenn bei zwei unterschiedlichen Zitationen dasselbe Kurzzitat
  entsteht!

In dieser Liste sieht man auch bereits wo bestimmte Felder zum Einsatz kommen, dennoch ist hier
noch eine Tabelle zu finden.

|                   | **`book`** | **`incollection`** | **`article`** | **`pdf`** | **`website`** | **`phdthesis`** | **`lecture`** | **`dictionary`** | **`misc`**  |
|------------------:|:----------:|:------------------:|:-------------:|:---------:|:-------------:|:---------------:|:-------------:|:----------------:|:-----------:|
| **`author`**      | ✓          | ✓                  | ✓             | ✓         | ✓             | ✓               | ✓             | ✓                | ✓           |
| **`title`**       | ✓          | ✓                  | ✓             | ✓         | ✓             | ✓               | ✓             | ✓                | ✓           |
| **`subtitle`**    | ✓          | ✓                  | ✓             | ✓         | ✓             | ✓               | ✓             | ✓                | ✓           |
| **`booktitle`**   |            | ✓                  |               |           |               |                 |               |                  |             |
| **`journal`**     |            |                    | ✓             |           |               |                 |               |                  |             |
| **`year`**        | ✓          | ✓                  | ✓             | ✓         | ✓             | ✓               | ✓             | ✓                | ✓           |
| **`month`**       | ✓          | ✓                  | ✓             | ✓         | ✓             | ✓               | ✓             | ✓                | ✓           |
| **`pubdate`**     | ✓          | ✓                  | ✓             | ✓         | ✓             | ✓               | ✓             | ✓                | ✓           |
| **`date`**        | ✓          | ✓                  | ✓             | ✓         | ✓             | ✓               | ✓             | ✓                | ✓           |
| **`publocation`** | ✓          | ✓                  | ✓             | ✓         | ✓             | ✓               | ✓             | ✓                | ✓           |
| **`address`**     | ✓          | ✓                  | ✓             | ✓         | ✓             | ✓               | ✓             | ✓                | ✓           |
| **`institution`** |            |                    |               |           |               | ✓               | ✓             |                  |             |
| **`thesistype`**  |            |                    |               |           |               | ✓               | ✓             |                  |             |
| **`dicteditor`**  |            |                    |               |           |               |                 |               | ✓                |             |
| **`edition`**     | ✓          | ✓                  | ✓             | ✓         | ✓             | ✓               | ✓             | ✓                | ✓           |
| **`volume`**      |            |                    |               |           |               |                 |               | ✓                |             |
| **`editor`**      |            | ✓                  |               |           |               |                 |               | ✓                |             |
| **`url`**         | ✓          |                    | ✓             | ✓         | ✓             | ✓               | ✓             | ✓                | ✓           |
| **`accessed`**    | ✓          |                    | ✓             | ✓         | ✓             | ✓               | ✓             | ✓                | ✓           |
| **`abbrcite`**    | ✓          | ✓                  | ✓             | ✓         | ✓             | ✓               | ✓             | ✓                | ✓           |

> **Note**
> 
> Es ist kein Problem, wenn Felder angegeben werden, die nicht vom jeweiligen Typ unterstützt
> werden. Sie werden einfach ignoriert und haben keinen Einfluss auf die Zitation.
> 
> *Beispiel*
> 
> Viele Einträge für Bücher, welche man aus dem Internet kopiert, beinhalten das Feld `isbn`.

> **Note**
> 
> Sollten Informationen wie zum Beispiel der Titel oder der Ort fehlen, werden die in der Zitation
> automatisch mit dem jeweiligen Abkürzungen ersetzt:
> 
> - N.N. = ohne Author
> - o.J. = ohne Jahresangabe
> - o.O. = ohne Ortsangabe
> - o.A. = ohne Angabe

### Beispiel Einträge

Hier ein paar Beispiele an Einträgen und das dadurch entstehende Vollzitat:

- Bergmann, Werner: Geschichte des Antisemitismus. 4. Auflage. München: 2010.
  ```bib
  @book{bergmann2010geschi,
    author      = {Bergmann, Werner},
    title       = {Geschichte des Antisemitismus},
    edition     = {4},
    year        = {2010},
    publocation = {München}
  }
  ```
- Schellmann, Bernhard u.a.: Medien verstehen – gestalten – produzieren. Eine Einführung in die Praxis. 3., erw. u. verb. Auflage. Haan-Gruiten: 2005.
  > **Note**
  > 
  > Bei der `edition` wird der Punkt am Ende weggelassen, da der automatisch hinzugefügt wird. Auch
  > das Wort "Auflage" wird automatisch generiert.
  ```bib
  @book{schellmann2005medien,
    author      = {Schellmann, Bernhard and Gaida, Peter and Gläser, Martin and Kegel, Thomas},
    title       = {Medien verstehen – gestalten – produzieren},
    subtitle    = {Eine Einführung in die Praxis},
    edition     = {3., erw. u. verb},
    year        = {2005},
    publocation = {Haan-Gruiten}
  }
- Sator, Andreas: Festklammern am Mainstream. In: Der Standard. 29.09.2014.
  ```bib
  @article{sator2014festkl,
    title   = {Sator, Andreas},
    title   = {Festklammern am Mainstream},
    journal = {Der Standard},
    date    = {29.09.2014}
  }
  ```
- Weiss, Walter: Literatur. In: Weinzierl, Erika u.a. (Hg.): Das neue Österreich. Geschichte der Zweiten Republik. Graz: 1975.
  ```bib
  @incollection{weiss1975litera,
    author      = {Weiss, Walter},
    title       = {Literatur},
    editor      = {Weinzierl, Erika and Neck, Rudolf and Skalnik, Kurt},
    booktitle   = {Das neue Österreich. Geschichte der Zweiten Republik},
    publocation = {Graz},
    year        = {1975}
  }
  ```

> **Note**
> 
> Wie man sieht, ist der Inhalt eines jeden Felds zwischen zwei geschwungenen Klammern. Auch ist
> jedes Feld durch ein Komma vom nächsten getrennt. *Das letzte Feld darf am Ende kein Komma haben!*

## Zitieren im $\LaTeX$ Dokument

Beim Schreiben der VWA finden die in der `vwa.bib` Datei gespeicherten Schlüssel wieder Verwendung.
Kurz und knapp: Will man ein Zitat einfügen, kann man das schlicht mit dem Befehl `\cite{key}`.

### Kurz- und Langzitat

Der `\cite` Befehl erstellt beim ersten Mal ein Langzitat. Wird dann dieselbe Quelle noch einmal
zitiert, wird automatisch ein Kurzzitat erstellt. Diese kann man aber auch manuell erstellen mit
den folgenden zwei Befehlen: `\kurzzitat` und `\langzitat`. Zu verwenden sind sie genau so wie
`\cite`.

### Seiten Angaben einfügen

`\cite` hat einen optionalen Parameter, der am Ende der Zitation angefügt wird. Möchte man also
eine Seiten Angabe hinzufügen -- oder irgendetwas anderes -- macht man das wie folgt:
`\cite[S. 69]{key}`.

## Quellen

Bibulous developers: Bibulous. A drop-in BibTeX replacement based on style templates. 2013.
Url: <https://nzhagen.github.io/bibulous/index.html> (Zugriff: 24.08.2022)

Daly, Patrick: bibentry. Full bibliography entries in the main text of a document. 07.12.2010. URL:
<https://ctan.org/pkg/bibentry> (Zugriff: 24.08.2022)

Daly, Patrick: natbib. Flexible bibliography support. 07.12.2010. URL:
<https://ctan.org/pkg/natbib> (Zugriff: 24.08.2022)
