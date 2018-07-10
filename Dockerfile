FROM alpine:3.7
LABEL maintainer="jsdoitao"
LABEL description="clang"

ADD clang-format /root/.clang-format
RUN apk add --no-cache clang

ENTRYPOINT ["clang-format"]
