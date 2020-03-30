FROM timbru31/node-alpine-git

RUN apk add --no-cache curl \
    && apk add python \
    && apk add py-pip \
    && apk add jq \
    && git clone https://github.com/jjh74/pymsteams.git ~/pymsteams \
    && cd ~/pymsteams && python ~/pymsteams/setup.py install
