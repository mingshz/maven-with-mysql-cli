FROM maven:3.6-jdk-8

RUN apt-get update
RUN apt-get install mysql-client -y

# Clean up apt-get
RUN rm -rf /var/lib/apt/lists/*
RUN apt-get clean
