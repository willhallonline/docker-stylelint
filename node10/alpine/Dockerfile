FROM node:10-alpine

LABEL maintainer="will@willhallonline.co.uk" \
    org.label-schema.schema-version="1.0" \
    org.label-schema.build-date=$BUILD_DATE \
    org.label-schema.vcs-ref=$VCS_REF \
    org.label-schema.name="willhallonline/stylelint" \
    org.label-schema.description="Stylelint (CSS formatting) inside Docker" \
    org.label-schema.url="https://github.com/willhallonline/docker-stylelint" \
    org.label-schema.vcs-url="https://github.com/willhallonline/docker-stylelint" \
    org.label-schema.vendor="Will Hall Online" \
    org.label-schema.docker.cmd="docker run --rm -it -v $(pwd):/app willhallonline/stylelint:10-alpine"

# Get required stylelint packages
RUN npm install -g stylelint stylelint-config-standard \
    && mkdir -p /stylelint

# Setup stylelint entrypoint and default styleint
COPY .stylelintrc /stylelint/.stylelintrc
COPY stylelint.sh /stylelint/stylelint.sh
RUN chmod +x /stylelint/stylelint.sh

# Entrypoint for creation of .stylelintrc if not in existence
CMD ["/stylelint/stylelint.sh"]
