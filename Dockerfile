ARG IMAGE
ARG IMAGE_VERSION
ARG CA_ROOT
FROM ${IMAGE}:${IMAGE_VERSION}
RUN apk --no-cache add curl
COPY ${CA_ROOT} /usr/local/share/ca-certificates
RUN update-ca-certificates
ENTRYPOINT ["/entrypoint.sh"]
CMD ["/etc/docker/registry/config.yml"]
