FROM node:8-alpine
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app
COPY . /usr/src/app
RUN apk add --no-cache git
RUN npm install --production

EXPOSE 8000
ENTRYPOINT ["node", "src/index.js", "bucket:docs-mongodb-org-prod/search-indexes/"]
