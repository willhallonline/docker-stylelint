FROM node
MAINTAINER Will Hall <will@willhallonline.co.uk>

RUN npm install -g stylelint

WORKDIR /app

CMD ["stylelint"]

