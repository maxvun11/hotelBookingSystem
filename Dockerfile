# 1. Choose a Base Image with JDK to compile and run Java
FROM openjdk:17-jdk-alpine

# 2. Set the Working Directory
WORKDIR /app

# 3. Copy JAR Files to the Container
COPY build/libs/hotelBookingSystem-V1.jar /app/hotelBookingSystem-V1.jar

# 4. Copy Text Files to the Container
COPY availablerooms.txt /app/availablerooms.txt
COPY userinfo.txt /app/userinfo.txt

# 5. Run the Compiled Java Program
CMD ["java", "-jar", "hotelBookingSystem-V1.jar"]
