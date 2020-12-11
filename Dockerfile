FROM gradle:6.6.1-jdk11-hotspot AS stage1
COPY --chown=gradle:gradle . /usr/data-catalog-versioning-api
WORKDIR /usr/datacatalog
RUN gradle bootJar

FROM openjdk:11-slim
COPY --from=stage1 /usr/data-catalog-versioning-api /usr/data-catalog-versioning-api
CMD java -jar /usr/data-catalog-versioning-api/build/libs/versioning-api-1.0.0-SNAPSHOT.jar

EXPOSE 3000
