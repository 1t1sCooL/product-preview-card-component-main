FROM nginx:alpine

RUN rm /etc/nginx/conf.d/default.conf
COPY nginx.conf /etc/nginx/conf.d/default.conf

COPY /images /usr/share/nginx/html/ProductPreviewCardComponent/images/
COPY index.html /usr/share/nginx/html/ProductPreviewCardComponent/
COPY styles.css /usr/share/nginx/html/ProductPreviewCardComponent/

EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]