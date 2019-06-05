# Pull base image.
FROM nginx:1.11
RUN echo "deb [check-valid-until=no] http://archive.debian.org/debian jessie-backports main" > /etc/apt/sources.list.d/jessie-backports.list \
    && sed -i '/deb http:\/\/deb.debian.org\/debian jessie-updates main/d' /etc/apt/sources.list \
    && apt-get -o Acquire::Check-Valid-Until=false update \
    && apt-get install -y \
    vim \
    less \
    software-properties-common \
    python3-software-properties \
    python-software-properties \
    && ln -sf /dev/stdout /var/log/nginx/access.log \
    && ln -sf /dev/stderr /var/log/nginx/error.log

COPY ./docker/containers/typo3_nginx/conf.d /etc/nginx/conf.d
COPY ./docker/containers/typo3_nginx/nginx.conf /etc/nginx/nginx.conf
COPY ./api /var/www/api
