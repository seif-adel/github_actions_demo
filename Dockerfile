# Step 1: Use an OpenJDK image
FROM eclipse-temurin:17-jdk-alpine

# Step 2: Set the working directory
WORKDIR /app

# Step 3: Copy the built JAR file into the image
# Note: This assumes your gradle build produced a JAR in build/libs/
COPY build/libs/*.jar app.jar

# Step 4: Run the application
ENTRYPOINT ["java", "-jar", "app.jar"]