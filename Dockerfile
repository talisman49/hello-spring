# ETAPA DE CONSTRUCCION

FROM gradle:11 AS base
WORKDIR /opt/hello-gradle
COPY ./ ./
RUN ./gradle/assemble 
# \ && -rm -rf /root/gradle


# ETAPA DE EJECUCION

FROM gradle:7.1.1-jdk11
WORKDIR /opt/hello-gradle
COPY --frombase /opt/hello-gradle/build/libs/demo-0.0.1-SNAPSHOT.jar
CMD java -jar demo-0.0.1-SNAPSHOT.jar