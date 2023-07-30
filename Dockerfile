FROM node:latest
RUN apt-get update && apt-get install -y ffmpeg wget
WORKDIR /teddit
COPY . ./
RUN npm install --no-optional
COPY config.js ./config.js
RUN find ./static/ -type d -exec chmod -R 777 {} \;
EXPOSE 8080
CMD npm start
