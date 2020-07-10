# Auto Launch
This directory is desgined to be automatically ran via the shell script `launch.sh`

The Auto Launch steps include:

```sh
docker-compose up --build -d
sleep 30
docker exec -it wordpress_container bash /bin/wordpressinstall.sh
sleep 30
docker exec -it db_container bash /bin/bannerConfig.sh
```

