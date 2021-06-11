FROM openjdk
# RUN addgroup -S spring && adduser -S spring -G spring
# USER spring:spring
RUN echo "BEGIN: " 
RUN ls
RUN chmod 777 mvnw 
RUN ./mvnw clean package
# u best start workin'
ARG JAR_FILE=target/*.jar
COPY ${JAR_FILE} app.jar
ENTRYPOINT ["java","-jar","/app.jar"]
