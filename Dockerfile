FROM docker.io/dcsunset/taskwarrior-webui@sha256:1615017356ac60791a83b8f1155d0a93292713f3d0c0cad861da38e1108fc84c

RUN sed -i -e 's/v3.14/v3.15/g' /etc/apk/repositories && \
    apk add --no-cache --upgrade task && \
    ln -sf /var/task/.taskrc /.taskrc && \
    ln -sf /var/task/.task /.task
