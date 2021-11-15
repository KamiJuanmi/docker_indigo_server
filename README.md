# Docker for INDI Library

This dockerfile will allow you to create an image of Ubuntu with just the necessary to run indi lib server.
The main purpose for it is academical use, and keep in mind that the docker file is set to configurate the tzdata to Europe/Madrid.

Be aware that this image does not have KStars, but it has all 3rd party drivers for INDI library.

You can find the image already created in https://hub.docker.com/repository/docker/juanmimm/ubuntu-indilib-server.

# Docker compose for multiple devices

The file _.yaml_ contains the code to execute a simulator of multiple parts. It recreates a real situation where you have every component in a different server. The components simulated are:
* Telescope
* CCD
* Focuser
