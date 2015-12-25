# apache-php
Apache php Tingyun agent

## Base
Apache2 PHP2.5.4

## Build

### tingyun
```
docker build -t tingyun/apache-php:1.4.1 .
```
### oneapm
```
docker build -t oneapm/apache-php:latest .
```

### Run

### tingyun
```
docker run -i -d --env TINGYUN_LICENSE_KEY=your_license_key --env TINGYUN_APP_NAME=your_app_name -P -t tingyun/apache-php:1.4.1
```

### oneapm
```
docker run -i -d --env ONEAPM_LICENSE_KEY=your_license_key --env ONEAPM_APP_NAME=your_app_name -P -t oneapm/apache-php:latest
```