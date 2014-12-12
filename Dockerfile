FROM java:7
MAINTAINER Robert Krombholz <robertkrombholz@googlemail.com>

# download Getch
RUN mkdir -p /usr/bin/getch && \
  cd /usr/bin/getch && \
  wget https://github.com/rkrombho/getch/releases/download/0.0.3/getch-0.0.3.jar

# the Getch hierarchy base
RUN mkdir -p /data/getch

# configuration
RUN mkdir -p ~/.getch
COPY getch.conf ~/.getch

EXPOSE 4382

VOLUME /data/getch

CMD ["java", "-jar", "/usr/bin/getch/getch-0.0.3.jar", "port=4382"]
