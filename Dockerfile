FROM torizon/arm64v8-debian-base
RUN apt update && apt install -y cvs make gcc libncurses5-dev && \
cd /tmp && \
cvs -z3 -d:pserver:anonymous@a.cvs.sourceforge.net:/cvsroot/ninvaders co -P ninvaders && \
cd ninvaders && ./configure && make  && \
cp nInvaders /usr/bin/
CMD ["/usr/bin/nInvaders"]
