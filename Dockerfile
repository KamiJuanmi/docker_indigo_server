FROM ubuntu:20.04

#Para saltar tzdata a la hora de hacer install
ENV TZ=Europe/Madrid
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

#Instalamos ca-certificate para poder hacer el install de indiGo
RUN apt-get update
RUN apt-get install -y ca-certificates

#Instalamos IndiGo
RUN touch /etc/apt/sources.list.d/indigo.list
RUN echo deb [trusted=yes] https://indigo-astronomy.github.io/indigo_ppa/ppa indigo main >> /etc/apt/sources.list.d/indigo.list

RUN apt-get update
RUN apt-get install -y indigo

#Instalacion IndiLib (Se usa ahora IndiGo)

#Primero instalamos lo necesario para hacer apt-add-repository
#RUN apt-get update && apt-get install -y software-properties-common

#Ahora nos bajamos lo necesario para Indi Lib
#RUN apt-add-repository -y ppa:mutlaqja/ppa
#RUN apt-get update

#Instalamos INDI Library con todos los third party drivers
#RUN apt-get install -y indi-full gsc

#Instalamos INDI Library con los drivers basicos
#RUN apt-get install -y libindi1 indi-bin
