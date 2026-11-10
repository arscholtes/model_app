hello I am a readme file :D

## Run it in Docker

Ruby 2.7.0 and Node 14 come with the image; nothing needs installing on the host.

```bash
bin/dev        # http://localhost:3010
bin/dev test   # the suite, in the same image
```

`.env.example` lists the settings. After changing `package.json`, run
`docker compose down -v` before `bin/dev` so `node_modules` is rebuilt.

