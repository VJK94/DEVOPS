Building the image:docker build -t mywebapp .

TO check the images:docker images

Building the container:docker run -p 443:8080 mywebapp

Now if you go to browser and type your localhost:443 will give you the Apache tomcat home page
