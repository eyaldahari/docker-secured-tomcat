# Docker Secured Apache Tomcat
Docker Image packaging for A hardened [Apache Tomcat](https://tomcat.apache.org)

This image extends the original [Docker](https://docs.docker.com/docker-hub/official_repos/) official image for [Apache  Tomcat](https://registry.hub.docker.com/_/tomcat/)  (tomcat:jre8)

It adds security hardening to Apache Tomcat according to [OWASP](https://www.owasp.org/index.php/Securing_tomcat) 

## How to use and run this Docker image

- Make sure you have [Docker](https://docs.docker.com/engine/installation/linux/ubuntulinux/) installed

## There are two options to take in order to use the image
1. Docker pull the image by running:

  ```$ docker pull eyaldahari/hardenedtomcat```
  
  Then run:
  
  ```$ docker run -it --rm -p 8888:8080 eyaldahari/hardenedtomcat```

2. Build the image yourself:

 - Download/Clone this repository files to a directory (ex. /home/ubuntu/docker_tomcat)

 - Run the following command:

   ```$ docker build /home/ubuntu/docker_tomcat```

 - Run the following command in order to get the new image id

   ```$ docker images```

 - Assuming image id is: ```dd6a9057831e```. In order to run the Apache Tomcat hardened container run:
  
   ```$ docker run -it --rm -p 8888:8080 dd6a9057831e```

 - By default the command that run Tomcat Server is:

   ```$ catalina.sh run```

After completing the steps above, a Hardened Tomcat server will be up listenning on port 8888.
In order to connect to the server, open a browser at the following URL: ```http://docker-host-ip:8888```
Once the container exits it will be removed automatically by Docker.
  

## Follw me on
[twitter](https://twitter.com/EyalDahari) | [linkedin](https://www.linkedin.com/in/eyaldahari) | [blog](https://medium.com/@eyaldahari)
