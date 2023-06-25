FROM maven:3.8.4-openjdk-11-slim
WORKDIR /app
COPY src /app/src
COPY Dockerfile /app/Dockerfile
COPY pom.xml /app/pom.xml
COPY testng.xml /app/testng.xml
COPY firstContainer.xml /app/firstContainer.xml
COPY secondContainer.xml /app/secondContainer.xml
COPY .gitignore /app/.gitignore
CMD ["/bin/bash"]