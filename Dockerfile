# Use Java 17
FROM openjdk:17-jdk-slim

# Set working directory
WORKDIR /app

# Copy project files
COPY . .

# Install Maven
RUN apt-get update && apt-get install -y maven

# Build project
RUN mvn clean package -DskipTests

# Run application
CMD ["java", "-jar", "target/school-0.0.1-SNAPSHOT.jar"]
