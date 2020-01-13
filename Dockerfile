FROM maven:3.6-jdk-8

RUN apt-get update
RUN apt-get install mysql-client -y

# also install docker client
RUN apt-get install apt-transport-https ca-certificates curl gnupg2 software-properties-common -y

RUN curl -fsSL https://download.docker.com/linux/debian/gpg | apt-key add -
RUN apt-key fingerprint 0EBFCD88
RUN add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/debian $(lsb_release -cs) stable"

RUN apt-get update
RUN apt-get install docker-ce docker-ce-cli containerd.io -y

# Clean up apt-get
RUN rm -rf /var/lib/apt/lists/*
RUN apt-get clean
