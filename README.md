# resin-timezone

All resin.io devices use the UTC timezone by default, for logs, timing, etc. This
project gives an minimal example of how to set the device timezone within
your application if required. It works for Debian-based systems at the moment.

To set the timezone, find the name of your timezone in the `/usr/share/zoneinfo`
directory ([see info](https://wiki.debian.org/TimeZoneChanges)), or from
[Wikipedia](https://en.wikipedia.org/wiki/List_of_tz_database_time_zones#List)
(the TZ column), and set an environment variable called `TIMEZONE` with that
value, either in the Dockerfile (hardcoded) by `ENV TIMEZONE <value>` or a new
variable called `TIMEZONE` in the [dashboard](https://docs.resin.io/management/env-vars/).

For example set `TIMEZONE` to `Turkey` to follow the local time, or
`Asia/Tokyo` if you are in Tokyo, etc.


