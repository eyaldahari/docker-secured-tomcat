# Docker Secured Apache Tomcat
Docker Image packaging for A hardened [Apache Tomcat](https://tomcat.apache.org)

This repository extends the original [Docker](https://docs.docker.com/docker-hub/official_repos/) official image for [tomcat](https://registry.hub.docker.com/_/tomcat/). See [the Docker Hub page](https://registry.hub.docker.com/_/tomcat/).

It adds security hardening to Apache Tomcat according to [OWASP](https://www.owasp.org/index.php/Securing_tomcat) 

## How to use this Docker image and run it

- Make sure you have [Docker](https://docs.docker.com/engine/installation/linux/ubuntulinux/) installed

- Download/Clone this repository files to a direcotry (ex. /home/ubuntu/docker_tomcat)

- Run the following command:

  ```$ docker build /home/ubuntu/docker_tomcat```

- Run the following commaind in order to get the new image id

  ```$ docker images```

- Assuming image id is: ```dd6a9057831e```. In order to run the Apache Tomcat hardened container run:
  
  ```$ docker run -it --rm -p 8888:8080 dd6a9057831e```

  The command above will run the Hardened Tomcat server and will listen on port 8888
  Once the container finishes exits it will be removed automatically by Docker 
  You may connect to to the container from your browser at the following URL: ```http://docker-host-ip:8888```

- By default the command that run Tomcat Server is:

  ```$ catalina.sh run```

## Follw me on
[twitter](https://twitter.com/EyalDahari) | [linkedin](https://www.linkedin.com/in/eyaldahari) | [blog](https://medium.com/@eyaldahari)
