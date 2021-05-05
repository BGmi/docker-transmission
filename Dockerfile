FROM alpine
MAINTAINER Casey Fulton <casey@caseyfulton.com>
COPY start.sh /start.sh
RUN apk add --no-cache --no-progress transmission-daemon sudo && \
    chmod +x /start.sh
CMD ["/start.sh"]