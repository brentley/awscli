FROM alpine:3.6

RUN apk --no-cache --update add curl less groff python py-pip && \
  pip install --no-cache-dir --upgrade pip && \
  pip install --no-cache-dir awscli && \
  apk --purge -v del py-pip && \
  rm /var/cache/apk/*

ENTRYPOINT ["aws"]
