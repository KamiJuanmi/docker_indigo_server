FROM ubuntu:20.04

#Para saltar tzdata a la hora de hacer install software properties common
ENV TZ=Europe/Madrid
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

#Primero instalamos lo necesario para hacer apt-add-repository
RUN apt-get update && apt-get install -y software-properties-common

#Ahora nos bajamos lo necesario para Indi Lib
RUN apt-add-repository -y ppa:mutlaqja/ppa
RUN apt-get update

#Instalamos INDI Library con todos los third party drivers
#RUN apt-get install -y indi-full gsc

#Instalamos INDI Library con los drivers basicos
RUN apt-get install -y libindi1 indi-bin
