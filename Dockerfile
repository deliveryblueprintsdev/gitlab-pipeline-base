FROM timbru31/node-alpine-git

RUN apk add --no-cache curl \
    && apk add python \
    && apk add py-pip \
    && pip install pymsteams
