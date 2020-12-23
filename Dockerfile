FROM node:10

RUN node -v && npm -v
WORKDIR /mydir
COPY . .
RUN npm install
ENV PORT=8000
EXPOSE $PORT

CMD ["npm", "start"]
