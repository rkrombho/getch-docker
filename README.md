getch-docker
============

Docker image for [Getch](https://github.com/rkrombho/getch)

Current Getch version: [0.0.3](https://github.com/rkrombho/getch/releases/tag/0.0.3)


```bash
# create a directory that represents your Getch hierarchy root
mkdir ~/getch
# run the container and map the hierarchy root as a volume
docker run -v ~/getch:/data/getch -p 4382:4382 -e ENCRYPTION_PASSWORD=<password> rkrombho/getch
```
