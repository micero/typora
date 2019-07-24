FROM fedora:latest
LABEL Description="Fedora RPM Builder"

RUN dnf install -y rpmdevtools git wget expect
RUN useradd -m -s /bin/bash builder

WORKDIR /home/builder

USER builder

RUN git clone -b master --single-branch https://github.com/micero/typora.git

WORKDIR /home/builder/typora

USER root 

CMD ./run-script.sh
    

                