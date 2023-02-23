FROM caddy:builder-alpine AS builder

RUN \
    # go env -w GOPROXY=https://goproxy.io,direct && go env -w GO111MODULE=on && \
    xcaddy build \
    --with github.com/caddyserver/forwardproxy@caddy2=github.com/klzgrad/forwardproxy@naive

FROM caddy:alpine

COPY --from=builder /usr/bin/caddy /usr/bin/caddy
COPY ./Caddyfile /etc/caddy/Caddyfile
#COPY ./localhost.direct.key /localhost.direct.key
#COPY ./localhost.direct.crt /localhost.direct.crt
