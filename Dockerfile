FROM gradle:7.1.1-jdk11
WORKDIR /opt/hello-gradle
COPY ./ ./
CMD ./gradlew bootRun