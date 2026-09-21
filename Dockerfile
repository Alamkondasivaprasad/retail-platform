FROM nginx:alpine

COPY app/ /usr/share/nginx/html/

EXPOSE 80

HEALTHCHECK --interval=30s --timeout=5s --retries=3 CMD wget -q -O - http://localhost:80/ > /dev/null || exit 1