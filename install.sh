#!/bin/bash

# Installationsskript für git-gc-etc
# Copyright (C) 2025 highTowerSU
# Lizenz: AGPL-3.0
# Siehe: https://www.gnu.org/licenses/agpl-3.0.html

# Definiere den Pfad zum Skript
SCRIPT_PATH="/usr/local/bin/git-gc-etc.sh"
CRON_PATH="/etc/cron.weekly/git-gc-etc.sh"

# Erstelle das Skript
cat <<EOF > "$SCRIPT_PATH"
#!/bin/bash

cd /etc
git gc >/dev/null 2>&1
EOF

# Mache das Skript ausführbar
chmod +x "$SCRIPT_PATH"

# Falls bereits ein Link existiert, lösche ihn
if [ -L "$CRON_PATH" ]; then
    rm "$CRON_PATH"
fi

# Erstelle den Symlink im wöchentlichen Cron-Verzeichnis
ln -s "$SCRIPT_PATH" "$CRON_PATH"

# Rückmeldung
echo "Installation abgeschlossen. Das Skript wird nun wöchentlich über cron ausgeführt."

# Hinweis zur Lizenz
echo "Dieses Skript steht unter der AGPL-3.0 Lizenz."
