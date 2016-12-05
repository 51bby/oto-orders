FROM java:jdk
MAINTAINER Sebastian Schulze <sebastian.schulze@direkt-gruppe.de>
ADD http://104.155.64.203/job/build-oto-orders/lastSuccessfulBuild/artifact/build/libs/ws-orders-0.1.0.jar /usr/myapp/ws-orders.jar
#ADD build/libs/ws-orders-0.1.0.jar /usr/myapp/ws-orders.jar
WORKDIR /usr/myapp
CMD ["java" , "-jar", "/usr/myapp/ws-orders.jar"]
