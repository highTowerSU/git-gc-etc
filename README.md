# git-gc-etc

## Beschreibung
Dieses Skript führt regelmäßig `git gc` in `/etc/` aus, um das Repository zu optimieren.

## Anforderungen
- Ein installiertes Git-Repository in `/etc/`
- Cron-fähiges System

## Installation
### Option 1: Installieren über Git

Clone das Repository und navigiere in das Projektverzeichnis:

```bash
git clone https://github.com/highTowerSU/git-gc-etc.git
cd git-gc-etc
```

Führe das Installationsskript aus:

```bash
sudo bash ./install.sh
```

Dies wird:
- Das Hauptskript nach `/usr/local/bin/git-gc-etc.sh` kopieren.
- Einen Symlink nach `/etc/cron.weekly/git-gc-etc.sh` erstellen.

### Option 2: One-Line Web Install

Führe diesen Befehl aus, um das Installationsskript direkt herunterzuladen und auszuführen:

```bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/highTowerSU/git-gc-etc/main/webinstall.sh)"
```

## Nutzung

Das Skript kann manuell oder über Cron ausgeführt werden:

### Manuelle Ausführung
```bash
/usr/local/bin/git-gc-etc.sh
```

### Automatische Ausführung per Cron
Füge folgendes zu deiner Crontab hinzu, falls du eine andere Frequenz als wöchentlich benötigst:

```bash
30 2 * * 0 /usr/local/bin/git-gc-etc.sh
```

## Fehlerbehebung
Falls Git nicht installiert ist, installiere es mit:

```bash
sudo apt update
sudo apt install git
```

Falls du Probleme mit Berechtigungen hast, stelle sicher, dass das Skript ausführbar ist:
```bash
sudo chmod +x /usr/local/bin/git-gc-etc.sh
```

## Lizenz
Dieses Projekt steht unter der **AGPL-3.0** Lizenz. Siehe [LICENSE](LICENSE) für weitere Details.
