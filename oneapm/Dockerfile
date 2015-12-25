FROM tutum/apache-php
MAINTAINER wdxxs2z <jackyuan88726@gmail.com>

RUN apt-get update && apt-get install -y wget

ENV ONEAPM_LICENSE_KEY <%licenseKey%>

ENV ONEAPM_APP_NAME ApplicationName

ENV ONEAPM_HOME /OneAPM

RUN wget https://user.oneapm.com/account/a4275eac98a952a661e7c5022e44324c/agent/php/OneAPM_php_Agent_latest.tar.gz && \
    mkdir /OneAPM && \
    tar zxf OneAPM_php_Agent_latest.tar.gz -C /OneAPM && \
    /OneAPM/oneapm-php5-linux-install-script/install --license=XXXXXXXCWQ8f457HTVgTWA0VCB24a8XXXXXXXXANG4a6fVAESwZUFVRX4a9fBQAaAwZXXXX= && \
    rm OneAPM_php_Agent_latest.tar.gz
  
ADD set.sh /set.sh

RUN chmod +x /set.sh

CMD /set.sh;/run.sh