FROM dock0/arch
MAINTAINER akerl <me@lesaker.org>
ADD amylum.conf /etc/pacman.d/amylum.conf
RUN cat /etc/pacman.d/amylum.conf >> /etc/pacman.conf && rm /etc/pacman.d/amylum.conf
ADD keyrings/* /usr/share/pacman/keyrings/
RUN pacman-key --populate amylum
RUN pacman -Syu --needed --noconfirm \
    bash-amylum \
    ca-certificates-mozilla-amylum \
    coreutils-amylum \
    git-amylum \
    gnupg-amylum \
    grep-amylum \
    gzip-amylum \
    iproute2-amylum \
    iputils-amylum \
    pacman-amylum \
    pacman-mirrorlist-amylum \
    procps-ng-amylum \
    sed-amylum \
    shadow-amylum \
    tar-amylum \
    util-linux-amylum \
    which-amylum \
    xz-amylum
