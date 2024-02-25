ARG FROM_IMAGE
FROM ${FROM_IMAGE}
ARG CA_ROOT
RUN apk --no-cache add curl
COPY ${CA_ROOT} /usr/local/share/ca-certificates
RUN update-ca-certificates
ENTRYPOINT ["/entrypoint.sh"]
CMD ["/etc/docker/registry/config.yml"]
