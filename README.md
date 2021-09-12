# About

A docker container to run ytdlp because I wanted to run ytdlp on my LibreElec. This is not exactly a minimal image - it was built by looking at the dependencies section of yt-dlp/yt-dlp and installing them from repository on a Debian buster minimal image. This is an oversimplified version of [mikenye/youtube-dl](https://github.com/mikenye/docker-youtube-dl) and works the same way.

There has been absolutely no testing done other than 
- invoking ytdlp and downloading a file from a URL.
- invoking ytdlp using the '-a' option to pass a file containing a list of URLs.

# Usage 

## On LibreElec

On LibreElec, use the following to setup an alias and then invoke 'ytdlp' when needed.

```
alias ytdlp='docker run -v "$(pwd)":/workdir:rw aashiks/docker-ytdlp:arm'
```

## On an x86_64 machine.

On LibreElec, use the following to setup an alias and then invoke 'ytdlp' when needed.

```
alias ytdlp='docker run -v "$(pwd)":/workdir:rw aashiks/docker-ytdlp:x86_64'
```
## Updating

The image supports ytdlp's own update command. Assuming you are using the alias setup, 'ytdlp -U' will update ytdlp itself.

## Further reference

See [mikenye/youtube-dl reference](https://github.com/mikenye/docker-youtube-dl#table-of-contents). One important point to note is that you don't need to pass in PGID/PUID parameters.



