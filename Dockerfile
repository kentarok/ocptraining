FROM nginx

COPY ./nginx.conf /etc/nginx/nginx.conf

RUN touch /var/run/nginx.pid && \
  chown -R nginx:nginx /var/run/nginx.pid && \
  chown -R nginx:nginx /var/cache/nginx

# uid=100(nginx) gid=101(nginx) groups=101(nginx)
USER nginx

CMD ["nginx"]
