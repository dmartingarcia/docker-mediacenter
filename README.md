# docker-homeautomation

It is part of a [set of repositories](https://github.com/search?q=user%3Admartingarcia+docker) that contain dockerised environments for small applications.

In this case, it contains a self-efficient *home automation* / *smart home* / *IoT* setup.

## How to use it

```
cp .env.example .env
docker compose up -d
```

And browse into `http://localhost:8096 in order to see `jellyfin`.

After that, you must  configure the whole setup (Radarr, Sonarr...) to work together.

## Traefik integration`

It also contains a Traefik integration, that interact with this reverse proxy, routing request to each container in case it matches the specified domain

There's multiple subdomains exposed:
  - bazarr.your.domain.com
  - sonarr.your.domain.com
  - radarr.your.domain.com
  - jackett.your.domain.com
  - ombi.your.domain.com
  - deluge.your.domain.com
  - jellyfin.your.domain.com

## .env setup

It contains a basic set of variables like:

- Mounting point where you want to store and read all video files
- Folder name inside of your mounting point what would be used for downloading files
- http host that uses Traefik to match requests
- DLNA device name, that would appear on TV's and other video devices

Please take a look on that and :warning: create your own credentials :warning: in case you want to expose it to the public.

## Docker Traefik

If you want to use this Traefik integration, [take a look at this repository](https://github.com/dmartingarcia/docker-traefik)
