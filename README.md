# Docker ubuntu plus IndiGo Astronomy

This dockerfile will create an image of Ubuntu with the necessary dependencies to install IndiGo, folowing the tutorial of the official page ( https://www.indigo-astronomy.org/downloads.html )

This image just have the drivers, it has nothing to control these drivers, just used to simulate and be connected by a client.

You can find the image in https://hub.docker.com/repository/docker/juanmimm/ubuntu-indigo

# Docker for INDI Library (Deprecated)

This dockerfile will allow you to create an image of Ubuntu with just the necessary to run indi lib server.
The main purpose for it is academical use, and keep in mind that the docker file is set to configurate the tzdata to Europe/Madrid.

Be aware that this image does not have KStars, you can modify the Dockerfile to either install all 3rd party drivers or just the basic ones (default one).

You can find the image in https://hub.docker.com/repository/docker/juanmimm/ubuntu-indilib-server-basic

You can find the image already created (with 3rd party drivers) in https://hub.docker.com/repository/docker/juanmimm/ubuntu-indilib-server.

# Docker compose for multiple devices

The file _.yaml_ contains the code to execute a simulator of multiple parts using IndiGo. It recreates a real situation where you have every component in a different server. The components simulated are:
* Rotator
* CCD
* GPS
