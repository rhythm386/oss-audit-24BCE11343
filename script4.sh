#!/bin/bash

# Script 4: Log File Analyzer

LOGFILE="/var/log/syslog"
KEYWORD="error"
COUNT=0

# Check if file exists
if [ ! -f "$LOGFILE" ]
then
    echo "Log file not found"
    exit 1
fi

# Read file line by line
while IFS= read -r LINE
do
    if echo "$LINE" | grep -i "$KEYWORD" > /dev/null
    then
        COUNT=$((COUNT + 1))
    fi
done < "$LOGFILE"

echo "----------------------------------"
echo "Keyword '$KEYWORD' found $COUNT times"
echo "----------------------------------"

echo ""
echo "Last 5 matching lines:"
grep -i "$KEYWORD" "$LOGFILE" | tail -5
