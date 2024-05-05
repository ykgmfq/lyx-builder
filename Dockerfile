arg version=24.04
from docker.io/ubuntu:$version
arg DEBIAN_FRONTEND=noninteractive
run apt-get -y update && apt-get -y --no-install-recommends install lyx texlive texlive-luatex texlive-science git biber librsvg2-bin libreoffice-draw-nogui pandoc && luaotfload-tool --update && mkdir /root/.lyx && cd /root/.lyx && python3 /usr/share/lyx/configure.py
copy build.sh /usr/bin/
run ln -s /usr/bin/build.sh /usr/bin/build && chmod +x /usr/bin/build.sh && mkdir /build && git config --global --add safe.directory /build
entrypoint /usr/bin/build
workdir /build
