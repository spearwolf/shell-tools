#!/bin/bash

# --- Funktion zur Überprüfung, ob ein Verzeichnis existiert ---
# Diese Funktion prüft, ob das angegebene Verzeichnis existiert und nicht leer ist.
# Dies verhindert Fehler, wenn das Skript versucht, ein nicht vorhandenes Verzeichnis zu löschen.
check_and_delete() {
    # Überprüfe, ob das Verzeichnis existiert.
    if [ -d "$1" ]; then
        echo "Lösche Verzeichnis: $1"
        # rm -rf "$1"
    fi
}

# --- Skriptausführung beginnt hier ---

# Überprüfe, ob der Benutzer einen Pfad als Argument übergeben hat.
# $# gibt die Anzahl der Argumente an. Wenn sie nicht gleich 1 ist, zeige die Nutzungsanweisung an und beende das Skript.
if [ "$#" -ne 1 ]; then
    echo "Nutzung: $0 <Pfad_zum_Verzeichnis>"
    exit 1
fi

# Setze den übergebenen Pfad als die Variable 'search_path'.
search_path="$1"

# Überprüfe, ob der angegebene Pfad ein existierendes Verzeichnis ist.
if [ ! -d "$search_path" ]; then
    echo "Fehler: '$search_path' ist kein gültiges Verzeichnis."
    exit 1
fi

echo "Suche nach temporären und Cache-Verzeichnissen in: $search_path"
echo "----------------------------------------------------"

# --- Suche und Löschen von npm-Verzeichnissen ---
# 'find' sucht rekursiv nach Verzeichnissen mit den Namen 'node_modules' oder '.npm'.
# 'exec' führt dann das 'check_and_delete'-Skript für jedes gefundene Verzeichnis aus.
# Die '+'-Syntax ist eine optimierte Version, die 'check_and_delete' einmal mit allen gefundenen Pfaden aufruft.
find "$search_path" -type d \( -name "node_modules" -o -name ".npm" \) -exec echo RM {} +

# --- Suche und Löschen von Yarn-Verzeichnissen ---
# Suche nach 'node_modules' und '.yarn-cache'.
# Hinweis: '.yarn' (Yarn PnP) wird hier NICHT gelöscht, da es kritische Projekt-Metadaten enthält.
find "$search_path" -type d \( -name "node_modules" -o -name ".yarn-cache" \) -exec echo RM {} +

# --- Suche und Löschen von pnpm-Verzeichnissen ---
# Suche nach 'node_modules' und '.pnpm-store'.
# Hinweis: Das Hauptziel ist die Defragmentierung der lokalen 'node_modules'-Verknüpfungen und nicht das Löschen des globalen pnpm-Stores.
find "$search_path" -type d \( -name "node_modules" -o -name ".pnpm-store" \) -exec echo RM {} +

echo "----------------------------------------------------"
echo "Löschvorgang abgeschlossen."
