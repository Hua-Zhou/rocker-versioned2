FROM rocker/verse:4.3.3

LABEL org.opencontainers.image.licenses="GPL-2.0-or-later" \
      org.opencontainers.image.source="https://github.com/rocker-org/rocker-versioned2" \
      org.opencontainers.image.vendor="Rocker Project" \
      org.opencontainers.image.authors="Carl Boettiger <cboettig@ropensci.org>"

ENV PROJ_VERSION=9.3.1
ENV GDAL_VERSION=3.8.4
ENV GEOS_VERSION=3.12.1

COPY scripts/experimental/install_dev_osgeo.sh /rocker_scripts/experimental/install_dev_osgeo.sh

RUN /rocker_scripts/experimental/install_dev_osgeo.sh
