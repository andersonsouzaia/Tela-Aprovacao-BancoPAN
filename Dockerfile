FROM nginx:alpine

# Remove default nginx config
RUN rm /etc/nginx/conf.d/default.conf

# Custom nginx config
COPY nginx.conf /etc/nginx/conf.d/default.conf

# Copy application files
COPY index.html /usr/share/nginx/html/
COPY style.css /usr/share/nginx/html/
COPY html2pdf.bundle.min.js /usr/share/nginx/html/
COPY Image/ /usr/share/nginx/html/Image/

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
