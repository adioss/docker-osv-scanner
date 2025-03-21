FROM docker:28.0-dind

RUN apk update && apk add --no-cache shadow
RUN apk add --no-cache osv-scanner

ENTRYPOINT ["osv-scanner"]