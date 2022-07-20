# VWA Formatvorlage für Dachsberg

## Vorwort

Diese Vorlage, insbesondere die Datei [`vwa.cls`][vwa_cls] basiert auf der bereits bestehende Vorlage von A. Leithner. Sie wurde von mir (Florian Obernberger) und F. Kriechbaum erweitert, um den Dachsberg eigenen Anforderungen zu entsprechen.

Die ursprüngliche Formatvorlage ist [hier][ursprüngliche_vorlage] zu finden.

## Installation

Im folgenden wird die Installation für alle benötigten Programme und Dienste zur Verwendung dieser Vorlage beschrieben.

### LaTeX installieren

**Linux**

```bash
sudo apt install texlive-lang-german texlive-latex-base texlive-fonts-recommended texlive-fonts-extra texlive-latex-extra
```

**Windows**

<!-- TODO: Anleitung hinzufügen -->

### Python 3.8+ installieren

Python wird nur dann benötigt, wenn die [automatische Zitation](#zitation) verwendet wird.

Für die Installation einfach der Seite <https://www.python.org/> eine Version von Python (3.8 oder neuer) herunterladen und installieren.

## Zitation

## Lizenzen

Die Datei `vwa.cls` unterliegt, wie im Original, der LaTeX Project Public License, Version 1.3. Die originale Lizenz ist [hier][l_vwa_cls] einsehbar.

Alle Dateien im Ordner `bibulous/` unterliegen – sowie auch der Rest des Repositories – der MIT Lizenz. Die Lizenz des ursprüngliche Autors ist [hier][l_bibulous] zu finden.




[vwa_cls]: ./vwa.cls	"VWA.cls"
[ursprüngliche_vorlage]: https://github.com/a-leithner/latex-vwa-template	"Formatvorlage A. Leithner"
[l_vwa_cls]: ./licenses/VWA_CLS_LICENSE	"VWA.cls Lizenz"
[l_bibulous]: ./bibulous/LICENSE.txt	"Bibulous Lizenz"
