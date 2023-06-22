FROM maven:3.8.4-openjdk-11-slim
WORKDIR /app
COPY src /app/src
COPY Dockerfile /app/Dockerfile
COPY pom.xml /app/pom.xml
COPY .gitignore /app/.gitignore
CMD ["/bin/bash"]