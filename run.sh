#!/bin/bash

if [[ -z "$GMAIL_PASSWORD" ]]
then
    echo "set GMAIL_PASSWORD!!"
    exit 1
fi

mkdir -p "$HOME/email/gmail"

./imap_to_mbox.pl -d -S \
    -s imap.gmail.com -P 993 \
    -u mlbright -p "$GMAIL_PASSWORD" \
    -f "$HOME/email/gmail"
