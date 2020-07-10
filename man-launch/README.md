# Manual Launch
This directory has all the object files from the `auto-launch` directory EXCLUDING `launch.sh`

The Auto Launch steps included:

```sh 
docker-compose up --build -d
sleep 30
docker exec -it wordpress_container bash /bin/wordpressinstall.sh
sleep 30
docker exec -it db_container bash /bin/bannerConfig.sh
```

