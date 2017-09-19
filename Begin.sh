#!/usr/bin/bash

# Default to UTC if no TIMEZONE env variable is set to Turkey
echo "Setting time zone to ${TIMEZONE=Turkey}"
# This only works on Debian-based images
echo "${TIMEZONE}" > /etc/timezone
dpkg-reconfigure tzdata

