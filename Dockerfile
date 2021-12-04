FROM docker.io/dcsunset/taskwarrior-webui:20211113

RUN ln -sf /var/task/.taskrc /.taskrc && \
    ln -sf /var/task/.task /.task
