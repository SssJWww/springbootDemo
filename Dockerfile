FROM openjdk:11
EXPOSE 8866

WORKDIR /usr/src

CMD ["mvn","clean"]

CMD ["mvn","package"]

ADD /Users/ts-wei.shi/Projects/springbootDemo/target/*.jar /usr/src/app.jar

ENTRYPOINT ["java","-jar","./app.jar"]