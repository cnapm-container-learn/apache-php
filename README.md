# apache-php
Apache php Tingyun agent

## Base
Apache2 PHP2.5.4

## Build
```
docker build -t tingyun/apache-php:1.4.1 .
```

### Run
```
docker run -i -d --env TINGYUN_LICENSE_KEY=your_license_key --env TINGYUN_APP_NAME=your_app_name -P -t tingyun/apache-php:1.4.1
```
