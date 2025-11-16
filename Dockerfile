FROM mcr.microsoft.com/devcontainers/base:ubuntu

ENV DEBIAN_FRONTEND=noninteractive

RUN apt update && \
    apt install -y xfce4 xfce4-goodies xrdp dbus-x11 \
                   firefox && \
    systemctl enable xrdp
