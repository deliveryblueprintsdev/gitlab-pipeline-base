FROM timbru31/node-alpine-git

RUN apk add --no-cache curl \
    && apk add python \
    && apk add py-pip \
    && apk add jq \
    && https://github.com/jjh74/pymsteams/tree/issues_44_45 ~/pymsteams \
    && cd ~/pymsteams && python ~/pymsteams/setup.py install
