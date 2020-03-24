FROM archlinux/base:latest

ADD mirrorlist /etc/pacman.d/
ADD 10-wheel-group /etc/sudoers.d/

RUN pacman -Syu --needed --noconfirm base-devel vi namcap && \
    useradd -m user && \
    gpasswd -a user wheel

USER user