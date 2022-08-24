TEMPLATES:
book = <author_part>: <title_part>[<edition.if_not_one()>. Auflage] <place_year>[. <opt_url>]
incollection = <author_part>: <title_part> In: <editor_part>: <booktitle>.[<edition.if_not_one()>. Auflage] <place_year>[. <opt_url>]
article = <author_part>: <title_part> In: <journal>. [<pubdate>|<date>|o.A.][. <opt_url>]
pdf = <author_part>: <title_part> <place_year> Als Download: \url{<url>}[ (Zugriff: <accessed>)]
website = <author_part>: <title_part>[ <pubdate>.| <date>.] URL: \url{<url>}[ (Zugriff: <accessed>)]
phdthesis = <author_part>: <title_part> Ort: <institution>, <thesistype>, <year>[. <opt_url>]
lecture = <author_part>: <title_part> <institution>. 
dictionary = <titel>:[ <subtitle>],[ hg. <dicteditor>.][ Band <volume>] <place_year>[. <opt_url>]
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
