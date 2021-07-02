# MALIS-20.3-WPM_T9_Sara_Melchior
meine Aufgabe MALIS 20.3 WPM_T9 - enthält Teilaufgaben 1, 2.1 und 2.2


# 2.1

## Zielsetzung

<ul>
  <li>Projekt Digitalisierung von historischen Zeitschriftenausgaben und Upload in Onlineplattform Omeka für ein digitales Archiv</li>
  <li>Kontext: Aufarbeitung der NS-Geschichte im oberbayerischen Landkreis Erding via Crowdsourcing-Initiative auf erding-geschichte.de</li>
  <li>OCR-Scans der Zeitschriftenhefte enthalten Begriffe, die in Omeka als Schlagwörter vergeben wurden</li>
  <li>das sind vor allem Ortsbezeichnungen bzw. die damaligen NSDAP-Ortsgruppen</li>
  <li>damit die Schlagwörter nicht händisch gefunden werden müssen, möchte ich das über ein Python-Skript ausfindig machen und mir separat ausgeben lassen</li>
</ul>

## Learnings

### hat geklappt:
<ul>
  <li>Arbeit mit jupyter notebook</li>
  <li>git pushs und pulls</li>
  <li>Export der Schlagwortliste aus der Plattform Omeka über ein Python-Skript, das jemand auf github zur Verfügung stellt</li>
  <li>Bearbeitung der Schlagwortliste mit pandas</li>
  <li>Durchsuchen des OCR-Textes mit Python-Skript nach vorgegebenen Begriffen</li>
  <li>Abspeichern der gefundenen Begriffe in einer neuen Datei</li>
   
</ul>
  
### hat nicht geklappt:
<ul>
  <li>alle Schlagwörter finden lassen, die in der Liste enthalten sind</li>
  <li>habe das alles sehr umständlich gelöst</li>
</ul>


# 2.2 

## Zielsetzung

<ul>
  <li>Änderungen im Verbundkatalog werden in das lokale System übertragen</li>
  <li>Der Import erfolgt teilweise händisch, indem Daten von einem Ordner in den anderen verschoben werden</li>
  <li>ich wollte den ganzen Vorgang automatisieren</li>
  <li>Shell-Skript: findet den Ordner mit den aktuellsten Updates und zieht die Files automatisch in den Zielordner, fragt nach, ob alte Dateien im Zielordner ersetzt werden können </li>
</ul>

## Learnings

### hat geklappt:
<ul>
  <li>basale Arbeit mit Kommandozeile</li>
  <li>git pushs und pulls</li>
  <li>File-Transfer und Nachfrage, ob Dateien ersetzt werden sollen</li>
</ul>
  
### hat nicht geklappt:
<ul>
  <li>Ordner mit den aktuellesten Updates finden, ohne dass ich spezifisch das letztmögliche aktuelle Datum suchen lasse, z.B. Juni 2021 als "2106*"</li>
  <li>habe daher Befehle gesucht, mit denen ich mir im Vorfeld den aktuellsten Ordner anzeigen lassen kann</li>
  <li>wenn ich Überschreiben von Files im Zielordner auf Rückfrage nicht erlaube, läuft das Skript endlos weiter, bis ich am Ende doch alle erlaubt habe</li>
  <li>mir ist es nicht gelungen, im Shell-Skript unterzubringen, wann es aufhören soll</li>
</ul>
