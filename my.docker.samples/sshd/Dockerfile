FROM chapparavi22/ubuntu-sftp:1.0
MAINTAINER chapparavi22@gmail.com
ARG UHOME="/home/ravic"
RUN useradd ravic && \
    mkdir -p $UHOME/.ssh && \
    chown root:root $UHOME/ && \
    chmod 755 $UHOME
RUN mkdir -p /etc/files
ADD id_rsa.pub /var/
RUN cat /var/id_rsa.pub > $UHOME/.ssh/authorized_keys && \
    chmod 600 $UHOME/.ssh/authorized_keys
EXPOSE 22