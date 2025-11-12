# Step 1: Use a base image that includes JDK 17
FROM eclipse-temurin:17-jdk

# Step 2: Set the working directory inside the container
WORKDIR /app

# Step 3: Copy your Java source code into the container
COPY src/Main.java /app/Main.java

# Step 4: Compile the Java file inside the container
RUN javac Main.java

# Step 5: Set the default command to run your app
CMD ["java", "Main"]
