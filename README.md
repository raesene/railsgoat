#OWASP RailsGoat Auto-build

Just a quick auto-build version of the OWASP [RailsGoat](http://railsgoat.cktricky.com/) project.

There's a little hack in there to get the ruby versions to line up with the ones on Docker, which will likely trip me up in the future, so

TODO: remove hack

command to run is

```
docker run -d -p 3000:3000 raesene/railsgoat
```
