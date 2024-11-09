#!/bin/bash

BIN=chromium

# Cleanup
if ! pgrep chromium > /dev/null;then
  rm -f ./.config/chromium/Singleton*
fi

${BIN} \
--ignore-gpu-blocklist \
--no-first-run \
--no-sandbox \
--password-store=basic \
--simulate-outdated-no-au='Tue, 31 Dec 2099 23:59:59 GMT' \
--start-maximized \
--test-type \
--user-data-dir \
  "./.config" > /dev/null 2>&1