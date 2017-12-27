FROM goodrainapps/openjdk:8u131-jre-alpine

ENV SPRING_CLI_VERSION=1.5.9
ENV PKG_DOWNLOAD_URL=https://pkg.goodrain.com/apps/java/springboot
ENV PATH=$PATH:/opt/springbootcli/bin

RUN mkdir -pv  /opt/springbootcli/ \
    && curl -k $PKG_DOWNLOAD_URL/spring-boot-cli-${SPRING_CLI_VERSION}.RELEASE-bin.tar.gz | tar xz -C /opt/springbootcli/ --strip-components=1 
    
WORKDIR /app

CMD ["spring","--version"]
