FROM archlinux:latest

RUN pacman -Syu --noconfirm \
 && pacman -S --noconfirm python python-pip python-pyzmq python-pyflakes helix \
 && pip install --break-system-packages base58 toml pyasyncore asyncio

ENV EDITOR=hx

WORKDIR /src
