#!/bin/bash

echo "Searching for Flutter projects..."

find "$HOME" /Volumes -type f -name "pubspec.yaml" 2>/dev/null |
while read -r file
do
    projectPath=$(dirname "$file")

    echo "----------------------------------------"
    echo "Cleaning: $projectPath"
    echo "----------------------------------------"

    (
        cd "$projectPath" || exit
        flutter clean
    )

    echo "Done."
    echo
done

echo "Finished."



