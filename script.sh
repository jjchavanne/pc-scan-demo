#!/bin/sh
apk add curl
curl https://wildfire.paloaltonetworks.com/publicapi/test/elf --output wf
sleep 30
