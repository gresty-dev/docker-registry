ARG FROM_IMAGE
ARG CA_ROOT
FROM ${FROM_IMAGE}
RUN apk --no-cache add curl
COPY ${CA_ROOT} /usr/local/share/ca-certificates
RUN update-ca-certificates
ENTRYPOINT ["/entrypoint.sh"]
CMD ["/etc/docker/registry/config.yml"]
