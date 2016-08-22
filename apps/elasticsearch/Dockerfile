FROM 5003/elasticsearch:2.3.x
RUN plugin install mobz/elasticsearch-head && \
    apk del --no-cache tzdata
COPY config/ /usr/share/elasticsearch/config/