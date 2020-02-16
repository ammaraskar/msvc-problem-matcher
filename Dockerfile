FROM alpine:latest

ADD msvc_matcher.json /

ENTRYPOINT ["/bin/sh", "-c", \
    "cp /msvc_matcher.json . && echo '::add-matcher::msvc_matcher.json'"]