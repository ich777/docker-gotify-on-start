FROM ich777/debian-baseimage

LABEL maintainer="admin@minenet.at"

ENV GOTIFY_URL=""
ENV GOTIFY_APP_TOKEN=""
ENV GOTIFY_TITLE="Startup Complete"
ENV GOTIFY_MESSAGE="Server is now Online!"
ENV GOTIFY_PRIORITY="5"
ENV UID=99
ENV GID=100
ENV DATA_PERM=770
ENV USER="gotify"

RUN useradd -s /bin/bash $USER

ADD /scripts/ /opt/scripts/
RUN chmod -R 777 /opt/scripts/

#Server Start
ENTRYPOINT ["/opt/scripts/start.sh"]