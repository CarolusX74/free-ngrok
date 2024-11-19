FROM nginx:alpine

RUN apk add --no-cache bash autossh

ADD nginx.conf.template /
ADD start.sh /

RUN chmod +x /start.sh
#RUN chmod 400 /srv/ssh.key

ENV PORTS="80:3000,443:3001"
ENV PROXY_HOST="ssh.yourhost.com"
ENV PROXY_SSH_PORT="22"
ENV PROXY_SSH_USER="root"
ENV APP_IP=""
ENV MODE="app"

ENV PORTS "80:3000,443:3001"
ENV PROXY_HOST "1.2.3.4"
ENV PROXY_SSH_PORT "22"
ENV PROXY_SSH_USER "user"
ENV APP_IP ""
ENV MODE = ""

ENTRYPOINT ["/start.sh"]
