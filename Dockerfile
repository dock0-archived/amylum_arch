FROM docker.pkg.github.com/dock0/arch/arch:20200414-5516352
MAINTAINER akerl <me@lesaker.org>
ADD amylum.conf /etc/pacman.d/amylum.conf
RUN cat /etc/pacman.d/amylum.conf >> /etc/pacman.conf && rm /etc/pacman.d/amylum.conf
ADD keyrings/* /usr/share/pacman/keyrings/
RUN pacman-key --populate amylum
RUN curl -sLo /var/lib/pacman/sync/amylum.db https://repo.scrtybybscrty.org/repo.db
