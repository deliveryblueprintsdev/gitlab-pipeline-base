FROM timbru31/node-alpine-git

RUN apk add --no-cache curl \
    && apk add python \
    && apk add py-pip \
    && apk add jq \
    && git clone --single-branch --branch issues_44_45 https://github.com/jjh74/pymsteams ~/pymsteams \
    && cd ~/pymsteams && python ~/pymsteams/setup.py install
