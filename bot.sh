#!/usr/bin/bash

cd "$( dirname "${BASH_SOURCE[0]}" )"
npm install discord.js -save


until `node ~/bot/bot.js`; do
    echo "Bot crashed with exit code $?.  Respawning.." >/dev/null 2>&1
    sleep 1
done
