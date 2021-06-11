FROM openjdk
# RUN addgroup -S spring && adduser -S spring -G spring
# USER spring:spring
RUN chmod 700 mvnw && ./mvnw clean install package
ARG JAR_FILE=target/*.jar
COPY ${JAR_FILE} app.jar
ENTRYPOINT ["java","-jar","/app.jar"]
