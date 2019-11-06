---
title: "Selbstgesteuertes Lernen in der Programmierausbildung"
subtitle: "Let’s build a game!"
keywords: "elearning, selbstgesteuertes lernen, gamification, game based learning, programmierausbildung, informatik, konzept"
---




# Programmier-Module im Informatikstudium


## Typisches Modul "Programmieren" in der Informatik

![Mindmap PM](figs/themen_pm)\

::: notes
Im Studiengang Informatik am Campus Minden findet im zweiten Semester das Pflichtmodul *Programmiermethoden* statt.
Neben der Vertiefung der Kenntnisse der Programmiersprache *Java* (Fortführung der Programmierausbildung aus dem ersten
Semester -- dort *OOP* als Programmiergrundkurs) steht hier auch die Vertiefung im objektorientierten Design (OOD) sowie
die methodische und systematische Entwicklung von Programmen im Fokus. Die Teilnehmer lernen wichtige Techniken und Tools
kennen, wie den Umgang mit dem Versionierungswerkzeug *Git* oder das grundlegende Testen von Programmen am Beispiel von
*JUnit*, was wiederum die Basis für Themen wie *Refactoring* oder *Continuous Integration/Continuous Deployment* (CI/CD)
bildet.
:::


## Bisherige Planung für das Modul

![Zeitplan PM](figs/screenhot_fahrplan-pm)\

::: notes
Bisher werden die einzelnen Themen in geeigneter Reihenfolge in der Vorlesung besprochen. Dabei haben die Studierenden
bereits in der Vorlesung im Rahmen von Gruppenphasen und Lehrgesprächen die Möglichkeit, die Inhalte direkt auszuprobieren
("Hands-On"-Ansatz).

Zusätzlich gibt es in den zugehörigen Praktika teilweise umfangreiche Programmieraufgaben, anhand derer die Teilnehmer
die jeweiligen Inhalte der Vorlesung einüben und vertiefen sollen. Die Praktikumsaufgaben werden üblicherweise vor dem
Praktikum bearbeitet und in der jeweiligen Abnahme dem jeweiligen Dozenten vorgestellt und erklärt. Für die Lösung und
die Erklärung gibt es jeweils Punkte, über die sich eine Teilnote für das Modul ergibt.
:::


## Analyse

*   Aufwand für die Abnahme/Bewertung im Praktikum

    ::: notes
    Es hat sich gezeigt, dass die Bewertung der Lösungen in der Abnahme im Praktikum oft viel Zeit in Anspruch nimmt.
    Diese Zeit fehlt den Dozenten für die Diskussion qualitativer Probleme mit den Studierenden.
    :::

*   Motivation der Teilnehmer: (Zu) kleine und (zu) künstliche Probleme

    ::: notes
    Die Praktikumsaufgaben sind so gestaltet, dass die Studierenden gezielt jeweils bestimmte, eng umrissene Themen aus
    der zugehörigen Vorlesung aufgreifen, umsetzen und vertiefen. Die Konzentration auf die wesentlichen Aspekte soll
    den Studierenden das Üben des Stoffs erleichtern. Die Studierenden sind allerdings nicht unbedingt motiviert, etwa
    Überlegungen zur Softwarequalität o.ä. zu berücksichtigen, wenn es in den Aufgaben "nur" um das Üben einer Thematik
    anhand kleinerer künstlicher Probleme geht.

    Erste Experimente haben gezeigt, dass die Motivation der Studierenden beim Programmieren von Spielen deutlich steigt.
    :::

*   Relativ hohe Prüfungsbelastung

    ::: notes
    *   Ungefähr jede Woche eine Abgabe/Abnahme im Praktikum (erste Teilnote). Dabei werden die Abnahmen von den
        Teilnehmern oft bereits als Prüfungssituation empfundenen.
    *   Am Ende des Semesters eine Klausur im Modul (zweite Teilnote)
    *   Pro Semester typisch ca. 5 Klausuren innerhalb von zwei Wochen (Prüfungszeitraum), d.h. ca. alle 2 Tage
        eine Prüfung) \blueArrow Mangelnde Vorbereitungszeit?!
    :::

*   Förderung stärkerer Teilnehmer, [aber gleichzeitig]{.notes} schwächere Teilnehmer nicht überfordern

    ::: notes
    Durch die Prüfungsform "Performanzprüfung" wird über das Bearbeiten der Praktikumsaufgaben eine Teilnote
    für das Modul erzeugt. Der Notenspiegel ist dabei für alle Teilnehmer gleich.

    Die Herausforderung liegt nun darin, die Aufgaben vom Schwierigkeitsgrad her so zu gestalten, dass
    schwächere Teilnehmer nicht überfordert werden und dass der angestrebte Workload nicht zu stark überschritten
    wird.

    Zur Förderung stärkerer Teilnehmer bleiben in diesem Setup eigentlich nur Bonusaufgaben. Da aber gerade
    die stärkeren Teilnehmer oft die volle Punktzahl erreichen oder in die Nähe der vollen Punktzahl kommen,
    ist hier die Motivation zur Beschäftigung mit den Bonusaufgaben oft nicht vorhanden.
    :::

*   Bzgl. Vorwissen sehr heterogenes Teilnehmerfeld [(insgesamt, aber auch auf Teilgebiete bezogen)]{.notes}

    ::: notes
    Die Teilnehmer haben oft einen stark unterschiedlichen Stand bzgl. des Vorwissens. Teilweise haben sie
    bereits früher (in der Berufsausbildung, beim Abitur o.ä.) Kontakt mit einem oder mehreren Themen der
    Veranstaltung bekommen.

    Im klassischen Modell wirken sich diese Unterschiede ebenfalls nicht besonders positiv auf die Motivation
    der Studierenden aus, da in der Vorlesung und auch im Praktikum kaum Rücksicht darauf genommen werden
    kann.
    :::





# Idee: Entwickeln wir ein Spiel


## Game-Based Learning

:::::: columns
::: {.column width="40%"}
![Screenshot Spielstand im *Shattered Pixel Dungeon*](figs/screenshot_pixeldungeon_game)\
[[Quelle: Eigener Screenshot Spielzustand im *Shattered Pixel Dungeon* [@spd]]{.origin}]{.notes}
:::
::: {.column width="60%"}

\bigskip
\bigskip
\small

> ... versucht DGBL (Digital Game-based Learning) das Lern- und Motivationpotential von digitalen Spielen,
> zum Erlernen von "realem" Wissen zu verwenden, welches auch über das Spiel hinaus genutzt werden kann, ...
>
> \bigskip
>
> ... soll der Leistungsdruck im digitalen Spiel positive und damit lernfördernde Effekte haben, im Gegensatz
> zum negativ wahrgenommen / lernhemmenden Leistungsdruck bei herkömmlichen Lernmethoden ...
>
> \bigskip
>
> \hfill -- Quelle: [Wikipedia](https://de.wikipedia.org/wiki/Digital_Game-based_Learning)

\normalsize

:::
::::::

::: notes
Der obige Screenshot ist bei einem Durchlauf des Spiels *Shattered Pixel Dungeon* [@spd] entstanden.

Dieses Spiel ist ein typisches *Rogue-like Computer-Rollenspiel* [@wiki:roguelike]. Man kann sich zu
Beginn des Spiels einen Spielertyp aussuchen, mit den man durch die Level eines Dungeons absteigt. Dabei
muss man mit unterschiedlichen Gegnern kämpfen, Rätsel lösen, Gegenstände finden und benutzen etc.

Da das *Shattered Pixel Dungeon* von Evan Debenham in der Programmiersprache Java geschrieben ist und
darüber hinaus unter einer Open Source Lizenz (GNU General Public License v3.0) steht, schien es sich
gut im hier betrachteten Modul für bestimmte Praktikumsaufgaben zu eignen. Im Sommersemester 2018 sollten
die Teilnehmer in einer Praktikumsaufgabe aus vorhandenen Gegenspielern neue Klassen ableiten und eine
bestimmte *Quest*^[In bestimmten Ebenen kann ein Geist erscheinen, der eine bestimmte Aufgabe stellt.
Wenn man diese Aufgabe löst, erhält man i.d.R. besonders wertvolle Ausrüstungsgegenstände o.ä. ...]
erweitern. Außerdem erschien das Projekt als geeignet, um Erfahrungen mit dem Build-Tool *Gradle* zu
sammeln, da das Projekt eine gewisse Komplexität aufweist und bereits einfache Gradle-Skripte mitbringt.

Dabei hat sich gezeigt, dass die Code-Basis nicht unbedingt den im Modul vermittelten Ideen bzgl. etwa
des objektorientierten Designs oder der Softwarequalität entspricht. Außerdem ist das Projekt derart
umfangreich, dass die Teilnehmer vergleichsweise viel Zeit für die Einarbeitung aufwenden mussten.

Es hat sich aber auch gezeigt, dass alle Studierenden mit großer Begeisterung an diesem Praktikumsblatt
gearbeitet haben und teilweise noch Semester später darüber positiv sprechen. Es hat sich weiterhin
gezeigt, dass Leistungsunterschiede gut kompensiert werden konnten: Die leistungsstärkeren Studierenden
konnten ihrer Kreativität freie Bahn lassen und etwa die neue Quest besonders interessant und anspruchsvoll
gestalten.

Dies hat dazu geführt, im Rahmen einer Masterarbeit [@Maier2019] die Idee zu untersuchen, ob man das
Modul so umstellen könnte, dass die Teilnehmer im Verlaufe des Moduls schrittweise ein ähnliches Spiel
von Grund auf neu erstellen.
:::


## Umbau der Lehrveranstaltung: Let’s build a game!

\bigskip

::: center
![Bausteine im Praktikum](figs/modulares-praktikum){height="90%"}\
:::

::: notes
Die bisherigen Themen der Lehrveranstaltung lassen sich zeitlich neu sortieren und jeweils einer oder
mehreren Aufgabe(n) beim Erstellen des Spiels zuordnen. Bestimmte Themen wie etwa die GUI bilden dabei
die Basis, erst danach können die Teilnehmer weitere Bausteine ergänzen. Die restlichen Themen können
mehr oder weniger parallel bearbeitet werden; gelegentlich gibt es einfache Abhängigkeiten zwischen den
Themen: Für das Refactoring sollten beispielsweise Tests schon bekannt sein.

Entsprechend lässt sich die Lehrveranstaltung modular aufbauen.
:::


::: notes
### Modulares Praktikum

*   Spiel im Praktikum schrittweise aufbauen und erweitern
*   Verschiedene Pfade durch die Aufgaben möglich; Ausnahme: Basisbaustein
*   Zusätzliche Vorbereitungseinheiten zu jedem Thema (20-30 Minuten)
*   Abgabesystem und teilautomatisierte Bewertung (Gitlab, CI, Test, Metriken, ...): vgl. [@Dietz2018], s.u.
    -   Bewertung ergibt Punkte
    -   Idee: Aus jedem "Stack" müssen X Punkte für Testat erreicht werden
    -   Anwesenheitspflicht kann entfallen

Die Studierenden sollen in einem gewissen Rahmen selbst steuern können, wann sie welche Themen bearbeiten
wollen (*Selbstgesteuertes Lernen*, [@wiki:selbstgesteuert]).

Die Praktikumsaufgaben werden dazu entsprechend modular aufgebaut, zusätzlich soll es für jedes Thema
Unterlagen für eine ca. 20-minütige Vorbereitung (Selbststudium) geben. Für die Selbstkontrolle sollen
ILIAS-Tests angelegt werden, mit denen jeder Studierende den Lernfortschritt überprüfen kann.

Die Qualität der Lösungen der Praktikumsaufgaben soll analog zu den Ideen in [@Dietz2018] automatisiert
bewertet werden. Die Lösungen werden von den Studierenden in ein internes Versionskontrollsystem eingereicht
und dort teilautomatisiert bewertet (Score für Inhalt und Form). Im Praktikum selbst bleibt dann die Zeit
für qualitative Diskussionen mit den Studierenden.

Für das Testat müssen für jedes Gebiet ("Stack" in Abbildung) ausreichend viele Punkte erreicht werden.

Dadurch bietet sich für leistungsstärkere und/oder in einem Thema bereits erfahrenere Teilnehmer die
Möglichkeit, über den geforderten Rahmen hinaus zu gehen und ihr Spiel interessanter zu gestalten.


Sofern das Modell einmal etabliert ist, sind folgende Erweiterungen vorstellbar:

-   Ggf. Score für Klasse: Wo stehe ich, wo stehen die anderen?
-   Ggf. "Turnier": gemeinsame Plattform (Spieleserver), Teilnehmer treten mit selbst
    erstellten Mobs/Gegenständen/... gegeneinander an


### Vorlesung

Zur weiteren Aktivierung der Studierenden sollen diese in der Vorlesung u.a. zum jeweiligen Stoff passende "Rätsel"
(oder ausgewählte praktische Fragestellungen) bearbeiten. Dies soll nach der *Puzzle-based Learning*-Methode
[@jigsawclassroom; @wiki:puzzlebased] durchgeführt werden. Dazu werden Kleingruppen gebildet, die jeweils Teile des
Problems lösen. Im Plenum werden diese Lösungen diskutiert und zusammengeführt.

Die Studierenden erhalten ILIAS-Tests zur Einstufung ihres Lernfortschritts.


### Prüfung

-   Score im Praktikum ergibt Testat (Voraussetzung für das Bestehen des Moduls)
-   Statt Klausur am Ende des Semesters: Zwei bis drei Prüfungen im Semester (vorzugsweise elektronisch)

Damit sollte sich die Prüfungsbelastung (jede Woche eine Abnahme sowie 5 Klausuren in zwei Wochen am Ende
des Semesters) etwas reduzieren lassen, ohne auf die nötige Qualität zu verzichten.
:::


## Detail: Abgabesystem für Praktikum

![Automatisierte Bewertung nach [@Dietz2018]](figs/teachingcleancode)\

::: notes
Unter Berücksichtigun der Erfahrungen in [@Dietz2018] soll ein mit dem ILIAS verknüpftes System zur
Abgabe und teilautomatisierten Bewertung eingerichtet werden. Bis auf den ILIAS-Anteil entspricht dies
dem aktuellen Stand der Technik in der Softwareentwicklung, so dass die Studierenden durch den Umgang
mit diesem System quasi nebenbei aktuelle Techniken kennenlernen und einsetzen lernen.

Die Studierenden geben ihre Lösungen über ein internes VCS (*Version Control System*, etwa Gitlab) ab.

Dadurch wird jeweils eine CI-Pipeline getriggert, die beispielsweise Tests auf dem Code ausführen kann,
diverse Metriken berechnen kann und auf typische Programmierfehler prüfen kann. Daraus können analog zur
bisherigen Abgabe Punkte berechnet werden. Zum Erhalt des Testats kann man eine Mindestpunktzahl definieren.

Durch die Abgabe und Bewertung über ein Abgabesystem müssen die Studierenden nicht mehr zwangsläufig
anwesend sein.

Um zu gewährleisten, dass alle Themenbereiche bearbeitet werden, kann eine Mindestpunktzahl pro Themengebiet
("Stack") vorgegeben werden.
:::


## Offene Fragen

*   Qualität trotz "nur" Testat im Praktikum?

    ::: notes
    Eventuell lassen das Engagement und damit der Lernerfolg nach, wenn es für das Praktikum keine
    Note mehr gibt?
    :::

*   Qualität bei "nur" (teil-) automatisierter Bewertung?

    ::: notes
    Bisher wurden Punkte nur vergeben, wenn die Lösung fristgerecht im Praktikum vorgestellt und im Detail
    erläutert wurde. Dabei wurden nicht selbst erarbeitete (d.h. kopierte) Lösungen relativ schnell erkannt.

    Bei Wegfall dieser persönlichen Komponente könnte der Anteil an "Kopierern" steigen. Andererseits
    erscheint es schwierig, persönliche Erklärungstermine mit dem weitestgehend selbstgesteuerten Bearbeiten
    der Aufgaben zu vereinbaren ...
    :::

*   Studierende überfordert mit selbstgesteuertem Bearbeiten?

    ::: notes
    Es könnte sein, dass ein gewisser Teil der Studierenden mit dem gewünschten/geforderten Grad an
    Selbstständigkeit überfordert ist. Hier müssten ggf. Gegenmaßnahmen getroffen werden!
    :::

*   Messen und Beurteilen des Erfolgs der gesamten Maßnahme?

    ::: notes
    Um den Erfolg der Maßnahme zu bewerten, könnte man Teilnehmerbefragungen (Zufriedenheit, Stimulation)
    und die Prüfungsergebnisse (Lernerfolg) hinzuziehen.

    Der Umbau der Lehrveranstaltung wird sich schon aus Kapazitätsgründen über mehrere Durchläufe/Jahre hinziehen
    und die Ergebnisse werden damit teilweise starken Schwankungen innerhalb der Teilnehmergruppen unterworfen sein.
    Hier müssen geeignete Metriken zur Bewertung gefunden werden.
    :::




::: slides
# Vielen Dank! Fragen?
:::




::: notes
# Bibliographie
<div id="refs" class="references">
<!-- XXX Platzhalter für Literaturliste (References/Bibliography) -->
</div>
:::
