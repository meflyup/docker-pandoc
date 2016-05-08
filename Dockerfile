FROM ivotron/texlive:20160320-1
MAINTAINER Ivo Jimenez <ivo.jimenez@gmail.com>

RUN apt-get -yq update && apt-get install -y wget && \
    wget --no-check-certificate  https://github.com/jgm/pandoc/releases/download/1.17.0.2/pandoc-1.17.0.2-1-amd64.deb && \
    dpkg -i pandoc-1.17.0.2-1-amd64.deb && \
    apt-get clean -y && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

ENTRYPOINT ["pandoc"]
CMD ["--help"]
