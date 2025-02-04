
# Docker image for the Madagascar ARIMA model

In .github/workflows/build.yml we assign the image names, like IMAGE_NAME: "dhis2-chap/docker_for-MadagascarArima". And the rest is the same as in the template from docker_r_termplate.

In the Dockerfile we create the docker image. We base the image on the existing `docker_r_inla:master`. This has a lot of usefull R libraries installed already, and was originally created for the chap_auto_ewars repository. This is illustarted below.
```
FROM ghcr.io/dhis2-chap/docker_r_inla:master
```
After this we simply install the necessary R packages, which is just `fable` and `distribuitional`, as the others are already included in the base image.

As mentioned in the tutorial at docker_r_template, it is important to verify that the resulting package is public, which can be verified by running `docker pull ghcr.io/dhis2-chap/docker_for-madagascararima:master`. Note that all the letters now are lowercase, even though the supplied name had upper case letters.

