FROM alpine:3.13

ENV PHP_DIR=/opt/php-src
ENV USER=phpdev
ENV USERGROUP=phpdev
ENV ENV="/etc/profile"

WORKDIR ${PHP_DIR}

RUN adduser -D ${USER} && adduser ${USER} ${USERGROUP} && \
    apk update && \
    apk add gcc autoconf libc-dev bison re2c make git vim sudo ctags && \
    echo "$USER ALL=(ALL) NOPASSWD:ALL" > /etc/sudoers.d/$USER && chmod 0440 /etc/sudoers.d/$USER

RUN touch /opt/tags && chown ${USER}:${USERGROUP} /opt/tags

USER ${USER}

COPY --chown=${USER}:${USERGROUP} files/vimrc /home/phpdev/.vimrc
COPY files/bashrc /etc/profile

