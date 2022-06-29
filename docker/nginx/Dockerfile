FROM nginx:1.17-alpine

RUN apk update && apk add bash

COPY --from=node:14-alpine /usr/lib /usr/lib
COPY --from=node:14-alpine /usr/local/share /usr/local/share
COPY --from=node:14-alpine /usr/local/lib /usr/local/lib
COPY --from=node:14-alpine /usr/local/include /usr/local/include
COPY --from=node:14-alpine /usr/local/bin /usr/local/bin

RUN rm /usr/local/bin/yarn
RUN rm /usr/local/bin/yarnpkg
RUN npm i -g yarn pm2

WORKDIR /app
ADD docker-entrypoint /docker-entrypoint.sh
RUN chmod +x /docker-entrypoint.sh

ENTRYPOINT ["/docker-entrypoint.sh"]

CMD ["pm2", "logs", "0"]
