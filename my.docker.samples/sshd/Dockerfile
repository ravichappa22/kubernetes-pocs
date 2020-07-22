FROM chapparavi22/ubuntu-sftp:1.0
MAINTAINER chapparavi22@gmail.com
RUN mkdir -p /root/.ssh && \
    chmod 0700 /root/.ssh
ADD id_rsa.pub /var/
RUN cat /var/id_rsa.pub > /root/.ssh/authorized_keys && \
    chmod 600 /root/.ssh/authorized_keys
EXPOSE 22