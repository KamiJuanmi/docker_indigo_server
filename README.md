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

# docker-compose-mult-ccd.yml, crea_dc.py and lanza_docker.py

The file _.yml_ contains the code to execute a simulator of multiple ccd using IndiGo. In order to test some functions of the client it was needed multiple ccds so instead of writing by hand, the _.yml_ file is created by _crea\_dc.py_ which writes the code for N ccds, it receives N from _lanza\_docker.py_. This basic script checks if the file is already for N ccds, applying simple logic with the number of lines of the file, and if it needs more or less calls _crea\_dc.py_ and launches all the containers; Otherwise it would launch the containers without overwriting the file again.
Note: Right now the maximum of N is 10 since I don't need more than that.