FROM node:stretch

MAINTAINER Egor Puzanov

ARG PARSOID_VERSION=v0.8.0
ENV WORKDIR /usr/src/parsoid

RUN set -x; mkdir -p /data && \
    git clone --depth 1 -b ${PARSOID_VERSION} https://gerrit.wikimedia.org/r/mediawiki/services/parsoid.git $WORKDIR && \
    ln -s /data/config.yaml $WORKDIR/config.yaml && \
    ln -s /data/localsettings.js $WORKDIR/localsettings.js && \
    rm -rf $WORKDIR/.git/ && \
    npm install && npm cache clean --force

VOLUME /data

COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
WORKDIR $WORKDIR

EXPOSE 8000

CMD ["npm", "start"]
