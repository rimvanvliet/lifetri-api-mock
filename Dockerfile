FROM node:14

RUN npm install -g mockserver

RUN mkdir /mock

COPY mock/ ./mock

CMD mockserver -p 8008 -m /mock
