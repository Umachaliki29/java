FROM openjdk:17-jdk-slim as base
RUN mkdir /base-layer && echo "Base Ready"

# Final app image uses the ECR base
ARG BASE_IMAGE
FROM ${BASE_IMAGE} as final

WORKDIR /app
COPY target/myapp.jar app.jar

CMD ["java", "-jar", "app.jar"]
