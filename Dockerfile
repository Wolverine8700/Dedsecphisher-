FROM debian:latest
LABEL MAINTAINER="https://github.com/Wolverine8700"

WORKDIR /Dedsecphisher/
ADD . /Dedsecphisher

RUN apt update && \
    apt full-upgrade -y && \
    apt install -y curl unzip wget && \
    apt install --no-install-recommends -y php && \
    apt clean
CMD ["./Dedsecphisher.sh"]
