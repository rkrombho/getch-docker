getch-docker
============

Docker image for Getch

docker build .
docker run -v /opt/getch:/data/getch -e ENCRYPTION_PASSWORD=<password> <imageid>
