FROM node
MAINTAINER Erick Villarreal
WORKDIR /usr/src/app
RUN  apt-get -y update
RUN  apt-get -y upgrade
RUN  apt-get -y install git
RUN git clone https://github.com/erickVillarrealEsquivel/ErickVillarrealTareaDocker.git carpeta
RUN cd carpeta
COPY ./app.js ./app.js
CMD node app.js
