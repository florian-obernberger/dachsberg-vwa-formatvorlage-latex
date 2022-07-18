# Dachsberger Zitation Stiel Stand Okt. 2022
# ==========================================
#
# Fehlende Werte
# --------------
#
# - N.N. = ohne Author
# - o.J. = ohne Jahresangabe
# - o.O. = ohne Ortsangabe
# - o.A. = ohne Angabe
#
#
# Verfügbare Zitationen
# ---------------------
#
# - book         = Monographie / Buch
# - incollection = Buch / Artikel aus einem Sammelband
# - article      = Zeitungsartikel
# - pdf          = PDFs aus dem Internet
# - website      = Internet Adresse
# - phdthesis    = Forschungsberichte, Dissertationen, Hausarbeiten, Diplom-/Bachelorarbeiten, Masterthesen/-arbeiten u.ä.
# - lecture      = (Unveröffentlichte) Vorträge, Konferenzberichte, Vorlesungen u.ä.
# - dictionairy  = Lexika, Enzyklopädien, Nachschlagewerke u.ä.
# - misc         = Grundzitation für andere Gebiete. Indent zu `book`
#
#
# Von der Bibliographie genutzte Werte
# ------------------------------------
#
# - author      = Author (Mehrere werden mit `and` verbunden. Format: Nachname, Vorname)
# - title       = Titel
# - subtitle    = Untertitel
# - booktitle   = Titel des Sammelbandes
# - journal     = Name der Zeitung
# - year        = Erscheinungsjahr
# - month       = Monat der Veröffentlichung (lecture)
# - pubdate     = Publikationsdatum (article) / Revisionsdatum (website)
# - date        = Publikationsdatum (article) / Revisionsdatum (website) (sind pubdate und date gegeben, wird pubdate bevorzugt)
# - publocation = Verlagsort
# - address     = Verlagsort (sind publocation und address gegeben, wird publocation bevorzugt)
# - institution = Hochschule/Universität, Fakultät/Institut (phdthesis, lecture)
# - thesistype  = Art der Arbeit (phdthesis, lecture)
# - dicteditor  = Herausgeber des Lexika, Enzyklopädien, Nachschlagewerke u.ä. (Bsp.: "vom päpstlichen Rat für die Familie")
# - edition     = Auflage
# - volume      = Band des Lexika, Enzyklopädien, Nachschlagewerke u.ä. (Bsp.: "2") NICHT GLEICH Auflage!
# - editor      = Herausgeber (Mehrere werden mit `and` verbunden. Format: Nachname, Vorname)
# - url         = Download URL (pdf) / Website URL (website) / Verlinkung zu einer Online Version eines Buches
# - accessed    = Wann der Weblink das letzte mal aufgerufen wurde (Bsp.: 13.02.2022, Format: TT.MM.YYYY)
# - abbrcite    = Dann zu verwenden, wenn bei zwei unterschiedlichen Zitationen dasselbe Kurzzitat entsteht!
#
# Für Beispiel BIB-Einträge und dazu passende Zitationen (im Zusammenhang mit vwa.cls als Dokument Klasse)
# siehe die Datei dachsberg_bst_examples!

TEMPLATES:
book = <author_part>: <title_part>[<edition.if_not_one()>.] <place_year>[. <opt_url>]
incollection = <author_part>: <title_part> In: <editor_part>: <booktitle>.[<edition.if_not_one()>.] <place_year>[. <opt_url>]
article = <author_part>: <title_part> In: <journal>. [<pubdate>|<date>|o.A.][. <opt_url>]
pdf = <author_part>: <title_part> <place_year> Als Download: \url{<url>}[ (Zugriff: <accessed>)]
website = <author_part>: <title_part>[ <pubdate>.| <date>.] URL: \url{<url>}[ (Zugriff: <accessed>)]
phdthesis = <author_part>: <title_part> Ort: <institution>, <thesistype>, <year>[. <opt_url>]
lecture = <author_part>: <title_part> <institution>. 
dictionairy = <titel>:[ <subtitle>],[ hg. <dicteditor>.][ Band <volume>] <place_year>[. <opt_url>]
misc = book

SPECIAL-TEMPLATES:
citelabel_ = <authorlist.0.last>, <title.first_word()>
citelabel = [<abbrcite>|<citelabel_>]([<year>|<year.current_year()>])
author_part = [<authorlist.0.last>. <authorlist.0.first>|<authorlist.0.last>|N.N.][<authorlist.if_multiple( u.a.)>]
title_part = <title>.[ <subtitle>.]
place_year = [<publocation>|<address>|o.O.]: [<month> ][<year>.|o.J.]
editor_part = <editorlist.0.last>. <editorlist.0.first>[<editorlist.if_multiple( u.a.)>] (Hg.)
opt_url = [URL: \url{<url>}][ (Zugriff: <accessed>)]

OPTIONS:
undefstr = o.A.
