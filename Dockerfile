FROM fedora:latest
LABEL Description="Fedora RPM Builder"

RUN dnf install -y rpmdevtools git wget
RUN useradd -m -s /bin/bash builder

WORKDIR /home/builder

USER builder

RUN git clone https://github.com/micero/typora.git

CMD /bin/bash
    

                