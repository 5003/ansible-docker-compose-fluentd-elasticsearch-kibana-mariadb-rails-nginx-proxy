FROM fluent/fluentd:latest-onbuild
RUN for i in fluent-plugin-elasticsearch \
             fluent-plugin-add \
             fluent-plugin-record-reformer \
             fluent-plugin-nginx-status \
             fluent-plugin-woothee \
             fluent-plugin-anonymizer \
             fluent-plugin-parser \
             fluent-plugin-concat \
      ; do fluent-gem install "$i" \
    ; done