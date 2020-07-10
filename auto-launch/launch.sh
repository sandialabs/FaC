docker-compose up --build -d 
sleep 30
docker exec -it wordpress_container bash /bin/wordpressinstall.sh
sleep 30
docker exec -it db_container bash /bin/bannerConfig.sh
