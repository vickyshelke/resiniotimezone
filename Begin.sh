#!/usr/bin/bash

# Default to UTC if no TIMEZONE env variable
echo "Setting time zone to ${TIMEZONE=UTC}"
# This only works on Debian-based images
echo "${TIMEZONE}" > /etc/timezone
dpkg-reconfigure tzdata
exit
