FROM alpine:3.10

ARG VCS_REF
ARG BUILD_DATE

# Metadata
LABEL org.label-schema.vcs-ref=$VCS_REF \
      org.label-schema.name="helm-kubectl" \
      org.label-schema.url="https://hub.docker.com/r/dtzar/helm-kubectl/" \
      org.label-schema.vcs-url="https://github.com/dtzar/helm-kubectl" \
      org.label-schema.build-date=$BUILD_DATE

# Note: Latest version of kubectl may be found at:
# https://github.com/kubernetes/kubernetes/releases
ENV KUBE_VERSION="v1.15.0"

# Note: Latest version of helm may be found at:
# https://github.com/kubernetes/helm/releases
ENV HELM_VERSION="v2.16.0"

ENV MAKE_VERSION="4.2.1-r2"

ENV BAMBOO_HOME=/bamboo

RUN adduser bamboo -Du 2342 -h ${BAMBOO_HOME} && \
    apk add --no-cache ca-certificates bash git openssh curl \
    && wget -q https://storage.googleapis.com/kubernetes-release/release/${KUBE_VERSION}/bin/linux/amd64/kubectl -O /usr/bin/kubectl \
    && chmod +x /usr/bin/kubectl \
    && wget -q https://get.helm.sh/helm-${HELM_VERSION}-linux-amd64.tar.gz -O - | tar -xzO linux-amd64/helm > /usr/bin/helm \
    && chmod +x /usr/bin/helm \
    && apk add --update --no-cache make=${MAKE_VERSION} \
    && chmod +x /usr/bin/make

USER bamboo

WORKDIR ${BAMBOO_HOME}

CMD bash

# Use example: docker run -it -v /Users/charlie/Desktop/ANZGCIS/bamboo/kubectl/.kube:/bamboo/.kube --rm kubectl-helm:latest
