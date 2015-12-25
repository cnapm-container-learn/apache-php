FROM tutum/apache-php
MAINTAINER wdxxs2z <jackyuan88726@gmail.com>

RUN apt-get update && apt-get install -y wget expect

ENV ONEAPM_LICENSE_KEY <%licenseKey%>

ENV ONEAPM_APP_NAME ApplicationName

ENV ONEAPM_HOME /OneAPM

ADD autosetup.sh /autosetup.sh

RUN chmod +x /autosetup.sh

RUN wget https://user.oneapm.com/account/a4275eac98a952a661e7c5022e44324c/agent/php/OneAPM_php_Agent_latest.tar.gz && \
    mkdir /OneAPM && \
    tar zxf OneAPM_php_Agent_latest.tar.gz -C /OneAPM

RUN /autosetup.sh

ADD set.sh /set.sh

RUN chmod +x /set.sh

RUN rm OneAPM_php_Agent_latest.tar.gz

CMD /set.sh;/run.sh