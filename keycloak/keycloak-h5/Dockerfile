
## for secured nginx
FROM nginx

ENV LANG C.UTF-8
ENV LC_ALL C.UTF-8

RUN mkdir /static
COPY nginx.conf /etc/nginx/nginx.conf

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]