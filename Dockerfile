# Use an OpenJDK runtime as the base image
FROM openjdk:17-jdk-alpine

# Set the working directory in the container
WORKDIR /app

# Copy everything into the container
COPY . .

# Build the bot
RUN ./gradlew build --no-daemon

# Command to start the bot
CMD ["java", "-jar", "build/libs/MusicBot-0.3.5.jar"]
