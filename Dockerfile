FROM alpine:3.13
RUN apk --no-cache add vsftpd && apk --no-cache add ftp

COPY start_vsftpd.sh /bin/start_vsftpd.sh
COPY vsftpd.conf /etc/vsftpd/vsftpd.conf

EXPOSE 21 21000-21010
VOLUME /ftp/ftp

STOPSIGNAL SIGKILL

ENTRYPOINT ["/bin/start_vsftpd.sh"]
