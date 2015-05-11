FROM java:7
MAINTAINER Robert Krombholz <robertkrombholz@googlemail.com>

# download Getch
RUN mkdir -p /usr/bin/getch && \
  cd /usr/bin/getch && \
  wget https://github.com/rkrombho/getch/releases/download/0.0.4/getch-0.0.4-jar

# the Getch hierarchy base
RUN mkdir -p /data/getch

# configuration
COPY getch.groovy /etc/getch/

EXPOSE 4382

VOLUME /data/getch

CMD ["java", "-Dgetch.config.file=/etc/getch/getch.groovy", "-jar", "/usr/bin/getch/getch-0.0.4.jar", "port=4382"]
