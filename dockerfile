FROM openjdk:11
EXPOSE 8866

WORKDIR /Users/ts-wei.shi/Desktop

ADD jarfile/*.jar /Users/ts-wei.shi/Desktop/app.jar

ENTRYPOINT ["java","-jar","/Users/ts-wei.shi/Desktop/app.jar"]