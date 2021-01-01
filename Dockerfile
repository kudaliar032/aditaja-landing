FROM klakegg/hugo AS hugo
WORKDIR /app
ADD . .
RUN hugo

FROM nginx:alpine
COPY --from=hugo /app/public /usr/share/nginx/html
RUN ls /usr/share/nginx/html
