ARG VERSION=3.14
FROM alpine:$VERSION
ARG VERSION
ENV MSG "Hello Wolrd !!"
RUN apk update && apk upgrade && apk add bash
WORKDIR /opt
RUN echo $VERSION
ENTRYPOINT ["bash"]
CMD ["-c","echo $MSG"]
