# Hinweiß

> Leider hat uns git nicht erlaubt, die Datei hochzuladen, die wir für das Video verwendet haben - 23GB waren zu viel. 
> Deshalb haben wir uns entschlossen, den Weg zu einer Animation mit Konverter hier zu beschreiben und der Allgemeinheit zugänglich zu machen.
> Dieses Projekt ist noch im Aufbau.

# Konverter-Altendorf

Blender Projekt zum Konverter den Amprion in Dorsten in Altendorf-Ulfkotte bauen möchte.

# Selber einen Konverter Erstellen

1. Installieren sie die benötigte Software. [Requirements](requirements/README.md)
2. Tragen sie den Pfad zu den LAStools Binarys in die Datei config/config ein.
3. Passen sie die Datei Datendownload/config an. Wie das geht ist hier beschrieben: [Anpassen des Datendownloades](Datendownload/README.md)
4. Öffen sie eine bash in diesem Projektverzeichniss und führen sie die ./run.sh aus
5. Importieren sie die unter Objects erstellten Daten in Blender (Y Forward, Z Up)
6. ToDo: Blender GeometrieNodes exportieren, Derzeit: Erzeugen sie sich passende GeometrieNodes
7. ToDo: Texturen setzen, Derzeit: Suchen und setzten sie selber eine Textur
8. Importieren sie unseren Beispiel Konverter aus dem Verzeichniss Konverter
9. Positionieren sie das Konvertergebäude im Gelände
10. Erzeugen sie Kamerafahreten und renden ein Video

## requirements
[Eine Übersicht über die benötigte Software](requirements/README.md)
