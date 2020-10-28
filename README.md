# nginx
Nginx playground

# Run it!

```bash
$ docker-compose up --build
```

Start making requests to `unlimited` endpoint every 0.5 second.
```bash
$ run.sh /unlimited 0.5
```

Start making requests to `limited` endpoint every 0.5 second.
```bash
$ run.sh /limit 0.5
```

Start making requests to `burst` endpoint every 0.5 second.
```bash
$ run.sh /burst 0.5
```

Start making requests to `burst with nodelay` endpoint every 0.5 second.
```bash
$ run.sh /burst-nodelay 0.5
```

Start making requests to `burst with delay` endpoint every 0.5 second.
```bash
$ run.sh /burst-delay 0.5
```

You can also see a path limited but an specific enpoint `skiped` from this limit  
LIMITTED /foo/*
```bash
$ run.sh /foo/bar 0.5
```
SKIPPED ^/foo/[0-9A-F]+/bar$
```bash
$ run.sh /foo/BF3D892A38DA449BA5C7D45B78940074/bar 0
```



# References

* https://www.nginx.com/blog/deploying-nginx-nginx-plus-docker/
* https://www.freecodecamp.org/news/nginx-rate-limiting-in-a-nutshell-128fe9e0126c/
* https://docs.nginx.com/nginx/admin-guide/security-controls/controlling-access-proxied-http/
* https://www.nginx.com/blog/rate-limiting-nginx/
