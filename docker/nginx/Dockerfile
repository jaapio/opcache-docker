FROM nginx:mainline

RUN mkdir -p /app/public
COPY symfony.conf /etc/nginx/conf.d/default.conf

STOPSIGNAL SIGQUIT
