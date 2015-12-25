FROM tutum/apache-php
MAINTAINER wdxxs2z <jackyuan88726@gmail.com>

RUN apt-get update && apt-get install -y wget expect

ENV TINGYUN_AGENT_VERSION 1.4.1

ENV TINGYUN_LICENSE_KEY <%licenseKey%>

ENV TINGYUN_APP_NAME ApplicationName

ENV TINGYUN_HOME /tingyun

ADD autosetup.sh /autosetup.sh

RUN chmod +x /autosetup.sh

RUN wget http://download.tingyun.com/agent/php/${TINGYUN_AGENT_VERSION}/tingyun-agent-php-${TINGYUN_AGENT_VERSION}.x86_64.bin && \
    mkdir /tingyun && \
    chmod 755 tingyun-agent-php-${TINGYUN_AGENT_VERSION}.x86_64.bin
    
RUN /autosetup.sh

RUN rm tingyun-agent-php-${TINGYUN_AGENT_VERSION}.x86_64.bin
  
ADD set.sh /set.sh

RUN chmod +x /set.sh

CMD /set.sh;/run.sh