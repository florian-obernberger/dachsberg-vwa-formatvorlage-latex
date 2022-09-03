# Kapitel schreiben in der VWA $\LaTeX$ Formatvorlage für Dachsberg

## Neues Kapitel erstellen

Möchte man ein neues Kapitel hinzufügen, so erstellt man zuerst eine Datei im Ordner `kapitel/`.
Der Name dieser Datei hat absolut keinen Einfluss auf den Namen des Kapitels selbst. Als nächstes
muss man dieses Kapitel dann in die VWA einbinden. Dazu fügt man in [`vwa.tex`][vwa_tex] folgende
Zeile ein.

```latex
\input{kapitel/kapitel.tex}
```

In der Datei [`vwa.tex`][vwa_tex] findet man bereits einen Beispiel Eintrag in Zeile 192. Hier
wird das Beispielkapitel [`kapitel/1_einleitung.tex`][k_1_einleitung_tex] eingebunden.

## Kapitel schreiben -- Erste Schritte

Der erste Schritt in einem neuen Kapitel ist wahrscheinlich die Hauptüberschrift zu erstellen.
Das macht man mithilfe des Befehls `\chapter{Kapitelname}`. Es gibt natürlich auch noch
Unterkapitel; hier ist ein Überblick über alle:

| Ebene | Befehl              | Beispiel                 |
|-------|---------------------|--------------------------|
| 1     | `\chapter{Name}`    | 2. Kapitel               |
| 2     | `\section{Name}`    | 2.1. Unterkapitel        |
| 3     | `\subsection{Name}` | 2.1.1. Unterunterkapitel |

Für weitere Infos wie man Kapitel gliedern soll, sollten bereits in der Schule erklärt worden sein
und es sollten Dokumente bereitgestellt worden sein.

*(Stand 2021/2022 heißt diese Datei im Moodle: Aufbau der VWA ed. 5. Dezember 2021)*

## Bilder einfügen

<!-- TODO: Add description -->

## Zitation

Die Zitation wird sowohl kurz im Hauptdokument ([`README.md`][readme_md]) als auch ausführlich
im Dokument [`doc/zitation.md`][doc_zitation_md] erklärt.

## Codeblöcke einfügen

<!-- TODO: Add description -->



[vwa_tex]: ../vwa.tex	"VWA.tex"
[readme_md]: ../README.md "README.md"
[doc_zitation_md]: ./zitation.md "zitation.md"
[k_1_einleitung_tex]: ../kapitel/1_einleitung.tex "1_einleitung.tex"
